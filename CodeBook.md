# CodeBook for the tidy dataset

## Data source
This dataset relies entirely on the "Human Activity Recognition Using 
Smartphones Data Set", which was originally made available here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

NOTE: The reasoning behind the result of this script is: "Extracts only the
measurements on the mean and standard deviation for each measurement" (in line
with the assignment task 2)

## Feature selection
The following are exerpts from the README.txt and features_info.txt files
that came with the original dataset, which you should check for a complete
description of the dataset.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

##### For each record it is provided:
* An identifier of the subject who carried out the experiment.
* Its activity label. 
* The mean and standard deviation of the following signals:
    * tBodyAcc
    * tGravityAcc
    * tBodyAccJerk
    * tBodyGyro
    * tBodyGyroJerk
    * tBodyAccMag
    * tGravityAccMag
    * tBodyAccJerkMag
    * tBodyGyroMag
    * tBodyGyroJerkMag
    * fBodyAcc
    * fBodyAccJerk
    * fBodyGyro
    * fBodyAccMag
    * fBodyAccJerkMag
    * fBodyGyroMag
    * fBodyGyroJerkMag

NOTE: Pattern <signal_name>.<function>.<axis> is used to denote the result
of the function applied on the signal on the axis (e.g tBodyAcc.mean.X)

