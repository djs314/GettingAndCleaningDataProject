## Load required libraries

library(reshape2)

## Import the data

X_train <- read.table("./train/X_train.txt", header=FALSE)
y_train <- read.table("./train/y_train.txt", header=FALSE)
subject_train <- read.table("./train/subject_train.txt", header=FALSE)

X_test <- read.table("./test/X_test.txt", header=FALSE)
y_test <- read.table("./test/y_test.txt", header=FALSE)
subject_test <- read.table("./test/subject_test.txt", header=FALSE)

features <- read.table("./features.txt", header=FALSE)
features <- as.character(features$V2)
labels <- read.table("./activity_labels.txt", header=FALSE)
labels <- labels$V2

## Merge the training and test sets to create one data set,
## labeling the columns appropriately

train <- cbind(subject_train, y_train, X_train)
names(train) <- c("Subject", "Activity", features)

test <- cbind(subject_test, y_test, X_test)
names(test) <- c("Subject", "Activity", features)

data <- rbind(train, test)

## Extract only the measurements on the mean and standard deviation
## for each measurement

data <- data[,c(1, 2, grep("mean\\(\\)|std\\(\\)", features)+2)]

## Use descriptive activity names to name the activities in the data set

data$Activity <- labels[data$Activity]

## Appropriately label the data set with descriptive variable names

names(data) <- gsub("-", "_", names(data))
names(data) <- gsub("[(][)]", "", names(data))
names(data) <- gsub("^t", "Time_", names(data))
names(data) <- gsub("^f", "Frequency_", names(data))
names(data) <- gsub("mean", "Mean", names(data))
names(data) <- gsub("std", "StandardDeviation", names(data))
names(data) <- gsub("Mag", "Magnitude", names(data))
names(data) <- gsub("Gyro", "Gyroscope", names(data))
names(data) <- gsub("Acc", "Acceleration", names(data))

## Create an independent tidy data set with the average of each variable for
## each activity and each subject

data_tidy <- melt(data, id=c("Subject", "Activity"), measure.vars=names(data)[-(1:2)])
data_tidy <- dcast(data_tidy, Subject + Activity ~ variable, mean)

## Output the tidy data into a txt file

write.table(data_tidy, file="data_tidy.txt", row.names=FALSE)
