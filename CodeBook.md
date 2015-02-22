#Section 1: Study Design
###Section 1.1: Raw Data (copied from original "features_info.txt" document)
The raw data was collected from a group of 30 participants, who each performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

###Section 1.2: Tidy Data
The variables included in the final tidy dataset are only those measures in which the words "mean" or "std" appear in the variable name (case insensitive).
Furthermore, the rather than including all oberservations of each variable, the tidy data has been summarized to show the average reading of each variable 
for each participant/activity combination.For example, the "tBodyAcc-mean()-X" column in the row where the participant is 1 and the activity is laying, represents the mean tBodyAcc-mean()-X reading
taken across the entire measurement window for that participant and that activity.



#Section 2: Code Book
The information below lists all variables included in the tidy dataset

* Variable Name: Participant
  * Column Number: 1
  * Variable Type: Numeric
  * Unit: Integer
  * Description: Participant ID
* Variable Name: Activity.Code
  * Column Number: 2
  * Variable Type: Text
  * Unit: Text
  * Description: Activity Description
* Variable Name: tBodyAcc-mean()-X
  * Column Number: 3
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all X-axis body acceleration means recorded from the accelerometer
* Variable Name: tBodyAcc-mean()-Y
  * Column Number: 4
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all Y-axis body acceleration means recorded from the accelerometer
* Variable Name: tBodyAcc-mean()-Z
  * Column Number: 5
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all Z-axis body acceleration means recorded from the accelerometer
* Variable Name: tBodyAcc-std()-X
  * Column Number: 6
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all X-axis body acceleration standard deviations recorded from the accelerometer
* Variable Name: tBodyAcc-std()-Y
  * Column Number: 7
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all Y-axis body acceleration standard deviations recorded from the accelerometer
* Variable Name: tBodyAcc-std()-Z
  * Column Number: 8
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all Z-axis body acceleration standard deviations recorded from the accelerometer
* Variable Name: tGravityAcc-mean()-X
  * Column Number: 9
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all X-axis gravity acceleration means recorded from the accelerometer
* Variable Name: tGravityAcc-mean()-Y
  * Column Number: 10
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all Y-axis gravity acceleration means recorded from the accelerometer
* Variable Name: tGravityAcc-mean()-Z
  * Column Number: 11
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all Z-axis gravity acceleration means recorded from the accelerometer
* Variable Name: tGravityAcc-std()-X
  * Column Number: 12
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all X-axis gravity acceleration standard deviations recorded from the accelerometer
* Variable Name: tGravityAcc-std()-Y
  * Column Number: 13
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all Y-axis gravity acceleration standard deviations recorded from the accelerometer
* Variable Name: tGravityAcc-std()-Z
  * Column Number: 14
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all Z-axis gravity acceleration standard deviations recorded from the accelerometer
* Variable Name: tBodyAccJerk-mean()-X
  * Column Number: 15
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all X-axis body jerk signal means recorded
* Variable Name: tBodyAccJerk-mean()-Y
  * Column Number: 16
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all Y-axis body jerk signal means recorded
* Variable Name: tBodyAccJerk-mean()-Z
  * Column Number: 17
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all Z-axis body jerk signal means recorded
* Variable Name: tBodyAccJerk-std()-X
  * Column Number: 18
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all X-axis body jerk signal standard deviations recorded
* Variable Name: tBodyAccJerk-std()-Y
  * Column Number: 19
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all Y-axis body jerk signal standard deviations recorded
* Variable Name: tBodyAccJerk-std()-Z
  * Column Number: 20
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all Z-axis body jerk signal standard deviations recorded
* Variable Name: tBodyGyro-mean()-X
  * Column Number: 21
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all X-axis gyro jerk signal means recorded
* Variable Name: tBodyGyro-mean()-Y
  * Column Number: 22
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all Y-axis gyro jerk signal means recorded
* Variable Name: tBodyGyro-mean()-Z
  * Column Number: 23
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all Z-axis gyro jerk signal means recorded
* Variable Name: tBodyGyro-std()-X
  * Column Number: 24
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all X-axis gyro jerk signal standard deviations recorded
* Variable Name: tBodyGyro-std()-Y
  * Column Number: 25
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all Y-axis gyro jerk signal standard deviations recorded
* Variable Name: tBodyGyro-std()-Z
  * Column Number: 26
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all Z-axis gyro jerk signal standard deviations recorded
* Variable Name: tBodyGyroJerk-mean()-X
  * Column Number: 27
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all tBodyGyroJerk signal means recorded for the X axis
* Variable Name: tBodyGyroJerk-mean()-Y
  * Column Number: 28
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all tBodyGyroJerk signal means recorded for the Y axis
* Variable Name: tBodyGyroJerk-mean()-Z
  * Column Number: 29
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all tBodyGyroJerk signal means recorded for the Z axis
* Variable Name: tBodyGyroJerk-std()-X
  * Column Number: 30
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all tBodyGyroJerk signal standard deviations recorded for the X axis
* Variable Name: tBodyGyroJerk-std()-Y
  * Column Number: 31
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all tBodyGyroJerk signal standard deviations recorded for the Y axis
* Variable Name: tBodyGyroJerk-std()-Z
  * Column Number: 32
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all tBodyGyroJerk signal standard deviations recorded for the Z axis
* Variable Name: tBodyAccMag-mean()
  * Column Number: 33
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all tBodyAccMag signal means recorded
* Variable Name: tBodyAccMag-std()
  * Column Number: 34
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all tBodyAccMag signal standard deviations recorded
* Variable Name: tGravityAccMag-mean()
  * Column Number: 35
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all tGravityAccMag signal means recorded
* Variable Name: tGravityAccMag-std()
  * Column Number: 36
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all tGravityAccMag signal standard deviations recorded
* Variable Name: tBodyAccJerkMag-mean()
  * Column Number: 37
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all tBodyAccJerkMag signal means recorded
* Variable Name: tBodyAccJerkMag-std()
  * Column Number: 38
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all tBodyAccJerkMag signal standard deviations recorded
* Variable Name: tBodyGyroMag-mean()
  * Column Number: 39
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all tBodyGyroMag signal means recorded
* Variable Name: tBodyGyroMag-std()
  * Column Number: 40
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all tBodyGyroMag signal standard deviations recorded
* Variable Name: tBodyGyroJerkMag-mean()
  * Column Number: 41
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all tBodyGyroJerkMag signal means recorded
* Variable Name: tBodyGyroJerkMag-std()
  * Column Number: 42
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all tBodyGyroJerkMag signal standard deviations recorded
* Variable Name: fBodyAcc-mean()-X
  * Column Number: 43
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyAcc signal means recorded for the X axis
* Variable Name: fBodyAcc-mean()-Y
  * Column Number: 44
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyAcc signal means recorded for the Y axis
* Variable Name: fBodyAcc-mean()-Z
  * Column Number: 45
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyAcc signal means recorded for the Z axis
* Variable Name: fBodyAcc-std()-X
  * Column Number: 46
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyAcc signal standard deviations recorded for the X axis
* Variable Name: fBodyAcc-std()-Y
  * Column Number: 47
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyAcc signal standard deviations recorded for the Y axis
* Variable Name: fBodyAcc-std()-Z
  * Column Number: 48
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyAcc signal standard deviations recorded for the Z axis
* Variable Name: fBodyAcc-meanFreq()-X
  * Column Number: 49
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyAcc signal mean frequencies recorded for the X axis
* Variable Name: fBodyAcc-meanFreq()-Y
  * Column Number: 50
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyAcc signal mean frequencies recorded for the Y axis
* Variable Name: fBodyAcc-meanFreq()-Z
  * Column Number: 51
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyAcc signal mean frequencies recorded for the Z axis
* Variable Name: fBodyAccJerk-mean()-X
  * Column Number: 52
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyAccJerk signal means recorded for the X axis
* Variable Name: fBodyAccJerk-mean()-Y
  * Column Number: 53
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyAccJerk signal means recorded for the Y axis
* Variable Name: fBodyAccJerk-mean()-Z
  * Column Number: 54
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyAccJerk signal means recorded for the Z axis
* Variable Name: fBodyAccJerk-std()-X
  * Column Number: 55
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyAccJerk signal standard deviations recorded for the X axis
* Variable Name: fBodyAccJerk-std()-Y
  * Column Number: 56
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyAccJerk signal standard deviations recorded for the Y axis
* Variable Name: fBodyAccJerk-std()-Z
  * Column Number: 57
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyAccJerk signal standard deviations recorded for the Z axis
* Variable Name: fBodyAccJerk-meanFreq()-X
  * Column Number: 58
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyAccJerk signal mean frequencies recorded for the X axis
* Variable Name: fBodyAccJerk-meanFreq()-Y
  * Column Number: 59
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyAccJerk signal mean frequencies recorded for the Y axis
* Variable Name: fBodyAccJerk-meanFreq()-Z
  * Column Number: 60
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyAccJerk signal mean frequencies recorded for the Z axis
* Variable Name: fBodyGyro-mean()-X
  * Column Number: 61
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyGyro signal means recorded for the X axis
* Variable Name: fBodyGyro-mean()-Y
  * Column Number: 62
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyGyro signal means recorded for the Y axis
* Variable Name: fBodyGyro-mean()-Z
  * Column Number: 63
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyGyro signal means recorded for the Z axis
* Variable Name: fBodyGyro-std()-X
  * Column Number: 64
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyGyro signal standard deviations recorded for the X axis
* Variable Name: fBodyGyro-std()-Y
  * Column Number: 65
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyGyro signal standard deviations recorded for the Y axis
* Variable Name: fBodyGyro-std()-Z
  * Column Number: 66
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyGyro signal standard deviations recorded for the Z axis
* Variable Name: fBodyGyro-meanFreq()-X
  * Column Number: 67
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyGyro signal mean frequencies recorded for the X axis
* Variable Name: fBodyGyro-meanFreq()-Y
  * Column Number: 68
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyGyro signal mean frequencies recorded for the Y axis
* Variable Name: fBodyGyro-meanFreq()-Z
  * Column Number: 69
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyGyro signal mean frequencies recorded for the Z axis
* Variable Name: fBodyAccMag-mean()
  * Column Number: 70
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyAccMag signal means recorded
* Variable Name: fBodyAccMag-std()
  * Column Number: 71
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyAccMag signal standard deviations recorded
* Variable Name: fBodyAccMag-meanFreq()
  * Column Number: 72
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyAccMag signal mean frequencies recorded
* Variable Name: fBodyBodyAccJerkMag-mean()
  * Column Number: 73
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyBodyAccJerkMag signal means recorded
* Variable Name: fBodyBodyAccJerkMag-std()
  * Column Number: 74
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyBodyAccJerkMag signal standard deviations recorded
* Variable Name: fBodyBodyAccJerkMag-meanFreq()
  * Column Number: 75
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyBodyAccJerkMag signal mean frequencies recorded
* Variable Name: fBodyBodyGyroMag-mean()
  * Column Number: 76
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyBodyGyroMag signal means recorded
* Variable Name: fBodyBodyGyroMag-std()
  * Column Number: 77
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyBodyGyroMag signal standard deviations recorded
* Variable Name: fBodyBodyGyroMag-meanFreq()
  * Column Number: 78
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyBodyGyroMag signal mean frequencies recorded
* Variable Name: fBodyBodyGyroJerkMag-mean()
  * Column Number: 79
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyBodyGyroJerkMag signal means recorded
* Variable Name: fBodyBodyGyroJerkMag-std()
  * Column Number: 80
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyBodyGyroJerkMag signal standard deviations recorded
* Variable Name: fBodyBodyGyroJerkMag-meanFreq()
  * Column Number: 81
  * Variable Type: Numeric
  * Unit: Normalized and bounded within [-1,1]
  * Description: The mean value of all fBodyBodyGyroJerkMag signal mean frequencies recorded
