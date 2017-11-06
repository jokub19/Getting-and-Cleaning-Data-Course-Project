### The data
30 volunteers performed 6 different activities while wearing a smartphone. The smartphone captured various data about their movements.
Full info bout source data here: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones Here are the data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### The code
"run_analysis.R" contains code to perform steps required for the course project:
* Download and unzip dataset.
* Merge the train and the test sets to create one data set.
* * Read files
* * * Read trainings tables
* * * Read testing tables
* * * Read feature vector
* * * Read activity labels
* * Assign column names
* * Merge all data in one set
* Extract only the measurements on the mean and standard deviation for each measurement
* *  Read column names
* *  Create vector for defining ID, mean and standard deviation
* *   Make nessesary subset from setAllInOne
* Use descriptive activity names to name the activities in the data set
* Appropriately label the data set with descriptive variable names
* Create a second, independent tidy data set with the average of each variable for each activity and each subject
* * Make second tidy data set
* * Write second tidy data set in txt file

### The variables
* x_train, y_train, x_test, y_test, subject_train and subject_test are data from the downloaded files.
* x_data, y_data and subject_data merge the previous datasets.
* features contains the correct names for the x_data dataset.
* activity_labels.txt contains names and IDs of the activities.
* tidy2.txt is an independent tidy data set with the average of each variable for each activity and each subject.
