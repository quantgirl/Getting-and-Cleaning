## Coursera Getting and Cleaning Data Course Project
## Aparajita Bhandari
## August 2017

setwd("~/GitHub/Getting-and-Cleaning-Data-Course-Project")

library(plyr)
features     <- read.table('./features.txt',header=FALSE); 
activityType <- read.table('./activity_labels.txt',header=FALSE); 
subjectTrain <- read.table('./train/subject_train.txt',header=FALSE); 
xTrain       <- read.table('./train/x_train.txt',header=FALSE); 
yTrain       <- read.table('./train/y_train.txt',header=FALSE); 

xTest <- read.table("test/X_test.txt")
yTest <- read.table("test/y_test.txt")
subjectTest <- read.table("test/subject_test.txt")

# create 'x' data set
xData <- rbind(xTrain, xTest)

# create 'y' data set
yData <- rbind(yTrain, yTest)

# create 'subject' data set
subjectData <- rbind(subjectTrain, subjectTest)


# Step 2
# Extract only the measurements on the mean and standard deviation for each measurement
mean_and_std_features <- grep("-(mean|std)\\(\\)", features[, 2])

# subset the desired columns
xData <- xData[, mean_and_std_features]

# correct the column names
names(xData) <- features[mean_and_std_features, 2]


# Step 3
# Use descriptive activity names to name the activities in the data set

# update values with correct activity names
yData[, 1] <- activityType[yData[, 1], 2]

# correct column name
names(yData) <- "activity"

# correct column name
names(subjectData) <- "subject"

finalData <- cbind(xData, yData, subjectData)

# Step 5
# Create a second, independent tidy data set with the average of each variable
# for each activity and each subject

tidyData <- ddply(finalData, .(subject, activity), function(x) colMeans(x[, 1:66]))

write.table(tidyData, "tidyData.txt", row.name=FALSE)

