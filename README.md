# README


Getting and Cleaning Data - Course Project
==========================================
## About 

This repository hosts the R code and documentation files final project for the course "Getting and Cleaning data", available on Coursera..

The dataset being used is: [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The code takes for granted all the data is present in the same folder, un-compressed and without names altered.

## Files

`CodeBook.md` describes the variables, the data, and any transformations or work that was performed to clean up the data.

The R script in this repository, `run_analysis.R`,  does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each  measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The output of this analysis us a tidy dataset which is also in this repository. 
