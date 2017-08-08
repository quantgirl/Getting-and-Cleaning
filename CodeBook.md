# CodeBook
## Getting and Cleaning Data Project

### About
Information about the variables, data and transformations used in the course project for the Getting and Cleaning Data course.

# Variables

* `xTrain`, `yTrain`, `xTest`, `yTest`, `subjectTrain` and `subjectTest` contain the data from the activity dataset files 
* `xData`, `yData` and `subjectData` merge the previous datasets 
* `features` contains the correct names for the `xData` dataset
*  the `activityType` variable contains the correct activity labels 
* `finaldata` merges `x_data`, `y_data` and `subject_data` in a big dataset.
* `mean_and_std_features` contains only the measurements of the mean and standard deviation for each measurement
* `tidyData` contains  averages which is written into `.txt` file. `ddply()` from the plyr package is used 
