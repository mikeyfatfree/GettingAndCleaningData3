

## Synopsis

* source("run_analysis.R")
* dataSet <- dataset_merge(dataDir)
* dataSetAggr <- dataset_buildGroupByAggr(dataSet)

* dataSetAggr <- dataset_buildGroupByAggr(dataset_merge(dataDir))

After the code is sourced in R, you pass the dataDir (By default, this will use the current working directory) 
of the dataset (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
to the dataset_merge function which merges all the files, extracts mean & standard deviation
measurements, and renames the variables. This dataframe is then passed to the datasdet_buildGroupByAggr which
builds the final group by tidy dataset. Alternatively, the final dataset can be built in 1 step

## R version

The code was run with R version 3.2.2 on 64 bit Windows 7

## Required Packages and Versioning

The code uses tidyr version 0.40 and dplyr 0.4.3.9000

