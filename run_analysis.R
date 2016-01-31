#library(tidyr)
library(dplyr)

dataset_merge <- function(dataDir=getwd()) {

  setwd(dataDir)

  ## read dataset files
  features <- read.table("features.txt",stringsAsFactors=FALSE)
  activityLabels <- read.table("activity_labels.txt",stringsAsFactors=FALSE)
  
  testSubject <- read.table("test/subject_test.txt",stringsAsFactors=FALSE)
  trainSubject <- read.table("train/subject_train.txt",stringsAsFactors=FALSE)
  
  testLabels <- read.table("test/y_test.txt")
  trainLabels <- read.table("train/y_train.txt")

  testData <- read.table("test/X_test.txt")
  trainData <- read.table("train/X_train.txt")
  
  ## build id columns for attaching later on
  
  activityId <- c(testLabels$V1, trainLabels$V1)
  subjectId <- c(testSubject$V1, trainSubject$V1)
  
  ## merge training and test data
  dataSet <- rbind(testData, trainData)

  ## extract mean and standard deviation columns
  meanStdColumns <- grep("(mean|std)\\(",features$V2, value = FALSE)
  dataSet <- dataSet[,meanStdColumns]
  names(dataSet) <- grep("(mean|std)\\(",features$V2, value = TRUE)
  
  ## attach identification columns and 
  dataSet <- cbind(subjectId, activityId, dataSet)

  ## rename numeric activities to labels
  dataSet <- merge(dataSet, activityLabels, by.x = "activityId", by.y = "V1", sort=FALSE)
  
  ## remove old activityId and replace with new one - must be a better way to do this
  dataSet$activityId <- NULL
  names(dataSet)[ names(dataSet) == "V2"] <- "activityId"
  
  
  ## rename variables
  
  ## remove punctuation
  names(dataSet) <- gsub("-","",names(dataSet))
  names(dataSet) <- sub("()","",names(dataSet), fixed=TRUE)  ## if you want dataset_tidy to work, comment this line out
  
  ## make camel-case
  names(dataSet) <- sub("^t", "time", names(dataSet))
  names(dataSet) <- sub("^f", "frequency", names(dataSet))
  names(dataSet) <- sub("mean","Mean",names(dataSet))
  names(dataSet) <- sub("std","Std",names(dataSet))

  ## delete temporary data frames
  rm(testData)
  rm(trainData)
 
  return(dataSet) 
}


dataset_buildGroupByAggr <- function(dataSet) {
  
  ## use dplyr to perform group by subjectId and activityId and compute mean of each variable
  df <- as.data.frame( dataSet %>% group_by(subjectId, activityId) %>% summarize_each(funs(mean)) )
  
  ## prepend 'mean' to all variables
  names(df) <- sub("time","meanTime",names(df))
  names(df) <- sub("frequency","meanFrequency",names(df))
  
  return(df)
}
