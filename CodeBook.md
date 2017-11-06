###The data
30 volunteers performed 6 different activities while wearing a smartphone. The smartphone captured various data about their movements.
Full info bout source data here: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones Here are the data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

###The code
"run_analysis.R" contains code to perform steps required for the course project:
1. Download and unzip dataset.
2. Merging the training and the test sets to create one data set.
2.1 Reading files
2.1.1 Reading trainings tables
2.1.2 Reading testing tables
2.1.3 Reading feature vector
2.1.4 Reading activity labels
2.2 Assigning column names
2.3 Merging all data in one set
Extracting only the measurements on the mean and standard deviation for each measurement
3.1 Reading column names
3.2 Create vector for defining ID, mean and standard deviation
4.3 Making nessesary subset from setAllInOne
Using descriptive activity names to name the activities in the data set
Appropriately labeling the data set with descriptive variable names
Creating a second, independent tidy data set with the average of each variable for each activity and each subject
5.1 Making second tidy data set
5.2 Writing second tidy data set in txt file
PS..The code takes for granted all the data is present in the same folder, un-compressed and without names altered.

###The variables
x_train, y_train, x_test, y_test, subject_train and subject_test are data from the downloaded files.
x_data, y_data and subject_data merge the previous datasets.
features contains the correct names for the x_data dataset.
activity_labels.txt contains names and IDs of the activities.
