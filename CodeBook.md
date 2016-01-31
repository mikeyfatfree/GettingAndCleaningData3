
## Transformations

*Original dataset:*
*https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip*


To create the new tidy aggregated dataset, the follow steps were taken:

1. original test and training datasets were combined into one large dataset

2. subject and activities were attached as new columns.  Numeric activities
were replaced with the actual labels

3. mean and standard deviation columns were filtered; all other columns were removed

4. variables were renamed so that '()' and '-' are removed.  Variables use camel-case.
't' and 'f' were converted to time and frequency

5. dataset was then aggregated by grouping subject and activity and taking the mean across each variable for all experiments

'mean' was prepended to all variable names to denote that we are computing the mean value
for all variables across all experiments



## Variables

 * subjectId
 
  from original data set - an identifier of the subject that carried out the experiment.
 
 * activityId
 
  from original data set - the activity the subject participated in which measurements were taken. these
 include walking, walking upstairs/downstairs, sitting, standing
 
 
 * Variables derived from original dataset

'mean' was prepended to denote that mean value was computed for all variables across all experiments
for each group (subject, activity)


*Acc/Gyro= accelerometer and gyroscope sensors used in experiments*  
*Time=time domain signal*  
*Body/Gravity= the acceleration signal was then separated into body and gravity acceleration signals (meanTimeBodyAccXYZ and meanTimeGravityAccXYZ)*  
*Jerk=the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (meanTimeBodyAccJerkXYZ and meanTimeBodyGyroJerkXYZ)*  
*Mag=the magnitude of these three-dimensional signals were calculated using the Euclidean norm (meanTimeBodyAccMag, meanTimeGravityAccMag, meanTimeBodyAccJerkMag,*          *meanTimeBodyGyroMag, meanTimeBodyGyroJerkMag).*  
*Frequency=finally, Fast Fourier Transform (FFT) was applied to some of these signals producing meanFrequencyBodyAccXYZ, meanFrequencyBodyAccJerkXYZ,*   *meanFrequencyBodyGyroXYZ, meanFrequencyBodyAccJerkMag, meanFrequencyBodyGyroMag, ,meanFrequencyBodyGyroJerkMag*  
*XYZ=denotes 3-axial raw signals in the X, Y and Z directions*
 
 
All measurements are in Hz
 
 * meanTimeBodyAccMeanX
 * meanTimeBodyAccMeanY
 * meanTimeBodyAccStdY
 * meanTimeGravityAccMeanY
 * meanTimeGravityAccStdY
 * meanTimeBodyAccJerkMeanY
 * meanTimeBodyAccJerkStdY 
 * meanTimeBodyGyroMeanY
 * meanTimeBodyGyroStdY
 * meanTimeBodyGyroJerkMeanY
 * meanTimeBodyGyroJerkStdY
 * meanTimeBodyAccMagStd
 * meanTimeBodyAccJerkMagMean
 * meanTimeBodyGyroMagStd
 * meanFrequencyBodyAccMeanX
 * meanFrequencyBodyAccStdX
 * meanFrequencyBodyAccJerkMeanX
 * meanFrequencyBodyAccJerkStdX
 * meanFrequencyBodyGyroMeanX
 * meanFrequencyBodyGyroStdX
 * meanFrequencyBodyAccMagMean
 * meanFrequencyBodyBodyAccJerkMagStd
 * meanFrequencyBodyBodyGyroJerkMagMean
 * meanTimeBodyAccMeanZ
 * meanTimeBodyAccStdZ
 * meanTimeGravityAccMeanZ
 * meanTimeGravityAccStdZ
 * meanTimeBodyAccJerkMeanZ
 * meanTimeBodyAccJerkStdZ
 * meanTimeBodyGyroMeanZ
 * meanTimeBodyGyroStdZ
 * meanTimeBodyGyroJerkMeanZ
 * meanTimeBodyGyroJerkStdZ
 * meanTimeGravityAccMagMean
 * meanTimeBodyAccJerkMagStd
 * meanTimeBodyGyroJerkMagMean
 * meanFrequencyBodyAccMeanY
 * meanFrequencyBodyAccStdY
 * meanFrequencyBodyAccJerkMeanY
 * meanFrequencyBodyAccJerkStdY
 * meanFrequencyBodyGyroMeanY
 * meanFrequencyBodyGyroStdY
 * meanFrequencyBodyAccMagStd
 * meanFrequencyBodyBodyGyroMagMean
 * meanFrequencyBodyBodyGyroJerkMagStd
 * meanTimeBodyAccStdX
 * meanTimeGravityAccMeanX
 * meanTimeGravityAccStdX
 * meanTimeBodyAccJerkMeanX
 * meanTimeBodyAccJerkStdX
 * meanTimeBodyGyroMeanX
 * meanTimeBodyGyroStdX
 * meanTimeBodyGyroJerkMeanX
 * meanTimeBodyGyroJerkStdX
 * meanTimeBodyAccMagMean
 * meanTimeGravityAccMagStd
 * meanTimeBodyGyroMagMean
 * meanTimeBodyGyroJerkMagStd
 * meanFrequencyBodyAccMeanZ
 * meanFrequencyBodyAccStdZ
 * meanFrequencyBodyAccJerkMeanZ
 * meanFrequencyBodyAccJerkStdZ
 * meanFrequencyBodyGyroMeanZ
 * meanFrequencyBodyGyroStdZ
 * meanFrequencyBodyBodyAccJerkMagMean
 * meanFrequencyBodyBodyGyroMagStd
