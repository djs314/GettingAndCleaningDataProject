# Code Book 
This code book describes the variables, data, and the transformations used to clean up the data.

## Dataset
The data obtained using the smartphone's embedded accelerometer and gyroscope are three-axial linear acceleration and angular velocity.

## Features
The main features are as follows:

1. tBodyAcc-XYZ
2. tGravityAcc-XYZ
3. tBodyAccJerk-XYZ
4. tBodyGyro-XYZ
5. tBodyGyroJerk-XYZ
6. tBodyAccMag
7. tGravityAccMag
8. tBodyAccJerkMag
9. tBodyGyroMag
10. tBodyGyroJerkMag
11. fBodyAcc-XYZ
12. fBodyAccJerk-XYZ
13. fBodyGyro-XYZ
14. fBodyAccMag
15. fBodyAccJerkMag
16. fBodyGyroMag
17. fBodyGyroJerkMag

A prefix of 't' represents time, while 'f' represents frequency. A suffix of 'XYZ' represents the three coordinate axes, while 'Mag' represents magnitude. 'Acc' represents the accelerometer, while 'Gyro' represents the gyroscope.

The features are separated further based on specific quantities, such as mean and standard deviation.

## Transformations
The following transformations are executed in run_analysis.R to produce the tidy data set:
1. The reshape2 library is loaded.
2. The training and test data, features, and activity labels are loaded.
3. The training and test data sets are combined using rbind and cbind, with appropriate labels added.
4. The measurements on the mean and standrad deviation for each measurement are extracted.
5. The activities are labeled using the provided activity labels.
6. The variables are renamed using gsub to be clearer and more descriptive.
7. Using the reshape2 functions melt and dcast, an independent tidy data set containing the average of each variable for each activity and subject is produced.
8. The tidy data set is output to data_tidy.txt.