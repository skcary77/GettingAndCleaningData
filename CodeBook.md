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
The table below lists all variables included in the tidy dataset

Column Number |	Variable Name |	Variable Type |	Unit |	Description |
1 |	Participant |	Numeric |	Integer |	Participant ID |
2 |	Activity.Code |	Text |	Text |	Activity Description |
3 |	tBodyAcc-mean()-X |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all X-axis body acceleration means recorded from the accelerometer |
4 |	tBodyAcc-mean()-Y |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all Y-axis body acceleration means recorded from the accelerometer |
5 |	tBodyAcc-mean()-Z |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all Z-axis body acceleration means recorded from the accelerometer |
6 |	tBodyAcc-std()-X |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all X-axis body acceleration standard deviations recorded from the accelerometer |
7 |	tBodyAcc-std()-Y |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all Y-axis body acceleration standard deviations recorded from the accelerometer |
8 |	tBodyAcc-std()-Z |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all Z-axis body acceleration standard deviations recorded from the accelerometer |
9 |	tGravityAcc-mean()-X |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all X-axis gravity acceleration means recorded from the accelerometer |
10 |	tGravityAcc-mean()-Y |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all Y-axis gravity acceleration means recorded from the accelerometer |
11 |	tGravityAcc-mean()-Z |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all Z-axis gravity acceleration means recorded from the accelerometer |
12 |	tGravityAcc-std()-X |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all X-axis gravity acceleration standard deviations recorded from the accelerometer |
13 |	tGravityAcc-std()-Y |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all Y-axis gravity acceleration standard deviations recorded from the accelerometer |
14 |	tGravityAcc-std()-Z |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all Z-axis gravity acceleration standard deviations recorded from the accelerometer |
15 |	tBodyAccJerk-mean()-X |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all X-axis body jerk signal means recorded |
16 |	tBodyAccJerk-mean()-Y |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all Y-axis body jerk signal means recorded |
17 |	tBodyAccJerk-mean()-Z |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all Z-axis body jerk signal means recorded |
18 |	tBodyAccJerk-std()-X |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all X-axis body jerk signal standard deviations recorded |
19 |	tBodyAccJerk-std()-Y |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all Y-axis body jerk signal standard deviations recorded |
20 |	tBodyAccJerk-std()-Z |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all Z-axis body jerk signal standard deviations recorded |
21 |	tBodyGyro-mean()-X |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all X-axis gyro jerk signal means recorded |
22 |	tBodyGyro-mean()-Y |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all Y-axis gyro jerk signal means recorded |
23 |	tBodyGyro-mean()-Z |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all Z-axis gyro jerk signal means recorded |
24 |	tBodyGyro-std()-X |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all X-axis gyro jerk signal standard deviations recorded |
25 |	tBodyGyro-std()-Y |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all Y-axis gyro jerk signal standard deviations recorded |
26 |	tBodyGyro-std()-Z |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all Z-axis gyro jerk signal standard deviations recorded |
27 |	tBodyGyroJerk-mean()-X |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all tBodyGyroJerk signal means recorded for the X axis |
28 |	tBodyGyroJerk-mean()-Y |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all tBodyGyroJerk signal means recorded for the Y axis |
29 |	tBodyGyroJerk-mean()-Z |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all tBodyGyroJerk signal means recorded for the Z axis |
30 |	tBodyGyroJerk-std()-X |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all tBodyGyroJerk signal standard deviations recorded for the X axis |
31 |	tBodyGyroJerk-std()-Y |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all tBodyGyroJerk signal standard deviations recorded for the Y axis |
32 |	tBodyGyroJerk-std()-Z |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all tBodyGyroJerk signal standard deviations recorded for the Z axis |
33 |	tBodyAccMag-mean() |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all tBodyAccMag signal means recorded |
34 |	tBodyAccMag-std() |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all tBodyAccMag signal standard deviations recorded |
35 |	tGravityAccMag-mean() |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all tGravityAccMag signal means recorded |
36 |	tGravityAccMag-std() |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all tGravityAccMag signal standard deviations recorded |
37 |	tBodyAccJerkMag-mean() |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all tBodyAccJerkMag signal means recorded |
38 |	tBodyAccJerkMag-std() |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all tBodyAccJerkMag signal standard deviations recorded |
39 |	tBodyGyroMag-mean() |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all tBodyGyroMag signal means recorded |
40 |	tBodyGyroMag-std() |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all tBodyGyroMag signal standard deviations recorded |
41 |	tBodyGyroJerkMag-mean() |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all tBodyGyroJerkMag signal means recorded |
42 |	tBodyGyroJerkMag-std() |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all tBodyGyroJerkMag signal standard deviations recorded |
43 |	fBodyAcc-mean()-X |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyAcc signal means recorded for the X axis |
44 |	fBodyAcc-mean()-Y |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyAcc signal means recorded for the Y axis |
45 |	fBodyAcc-mean()-Z |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyAcc signal means recorded for the Z axis |
46 |	fBodyAcc-std()-X |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyAcc signal standard deviations recorded for the X axis |
47 |	fBodyAcc-std()-Y |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyAcc signal standard deviations recorded for the Y axis |
48 |	fBodyAcc-std()-Z |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyAcc signal standard deviations recorded for the Z axis |
49 |	fBodyAcc-meanFreq()-X |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyAcc signal mean frequencies recorded for the X axis |
50 |	fBodyAcc-meanFreq()-Y |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyAcc signal mean frequencies recorded for the Y axis |
51 |	fBodyAcc-meanFreq()-Z |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyAcc signal mean frequencies recorded for the Z axis |
52 |	fBodyAccJerk-mean()-X |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyAccJerk signal means recorded for the X axis |
53 |	fBodyAccJerk-mean()-Y |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyAccJerk signal means recorded for the Y axis |
54 |	fBodyAccJerk-mean()-Z |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyAccJerk signal means recorded for the Z axis |
55 |	fBodyAccJerk-std()-X |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyAccJerk signal standard deviations recorded for the X axis |
56 |	fBodyAccJerk-std()-Y |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyAccJerk signal standard deviations recorded for the Y axis |
57 |	fBodyAccJerk-std()-Z |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyAccJerk signal standard deviations recorded for the Z axis |
58 |	fBodyAccJerk-meanFreq()-X |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyAccJerk signal mean frequencies recorded for the X axis |
59 |	fBodyAccJerk-meanFreq()-Y |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyAccJerk signal mean frequencies recorded for the Y axis |
60 |	fBodyAccJerk-meanFreq()-Z |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyAccJerk signal mean frequencies recorded for the Z axis |
61 |	fBodyGyro-mean()-X |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyGyro signal means recorded for the X axis |
62 |	fBodyGyro-mean()-Y |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyGyro signal means recorded for the Y axis |
63 |	fBodyGyro-mean()-Z |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyGyro signal means recorded for the Z axis |
64 |	fBodyGyro-std()-X |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyGyro signal standard deviations recorded for the X axis |
65 |	fBodyGyro-std()-Y |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyGyro signal standard deviations recorded for the Y axis |
66 |	fBodyGyro-std()-Z |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyGyro signal standard deviations recorded for the Z axis |
67 |	fBodyGyro-meanFreq()-X |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyGyro signal mean frequencies recorded for the X axis |
68 |	fBodyGyro-meanFreq()-Y |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyGyro signal mean frequencies recorded for the Y axis |
69 |	fBodyGyro-meanFreq()-Z |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyGyro signal mean frequencies recorded for the Z axis |
70 |	fBodyAccMag-mean() |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyAccMag signal means recorded |
71 |	fBodyAccMag-std() |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyAccMag signal standard deviations recorded |
72 |	fBodyAccMag-meanFreq() |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyAccMag signal mean frequencies recorded |
73 |	fBodyBodyAccJerkMag-mean() |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyBodyAccJerkMag signal means recorded |
74 |	fBodyBodyAccJerkMag-std() |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyBodyAccJerkMag signal standard deviations recorded |
75 |	fBodyBodyAccJerkMag-meanFreq() |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyBodyAccJerkMag signal mean frequencies recorded |
76 |	fBodyBodyGyroMag-mean() |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyBodyGyroMag signal means recorded |
77 |	fBodyBodyGyroMag-std() |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyBodyGyroMag signal standard deviations recorded |
78 |	fBodyBodyGyroMag-meanFreq() |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyBodyGyroMag signal mean frequencies recorded |
79 |	fBodyBodyGyroJerkMag-mean() |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyBodyGyroJerkMag signal means recorded |
80 |	fBodyBodyGyroJerkMag-std() |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyBodyGyroJerkMag signal standard deviations recorded |
81 |	fBodyBodyGyroJerkMag-meanFreq() |	Numeric |	Normalized and bounded within [-1,1] |	The mean value of all fBodyBodyGyroJerkMag signal mean frequencies recorded |
