# Getting And Cleaning Data Project
In this project, I worked with a data set in order to make it tidy and summarize its features, in order to prepare for future analysis. 

## Data Set
The data was collected from the accelerometers of the Samsung Galaxy S smartphone. A full description is available here:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Project Goals
Create an R script called run_analysis.R that does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Project Results
On this Github page can be found the following files that accomplish the above goals:

1. README.md, a file describing an overview of the project and its files.
2. CodeBook.md, a code book that describes the variables, data, and transformations used to clean up the data.
3. run_analysis.R, an R script that performs the analysis.
4. tidy_data.txt, a tidy data set based on the original data set that contains the average of each variable for each activity and subject.