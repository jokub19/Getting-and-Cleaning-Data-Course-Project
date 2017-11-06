### The data
30 volunteers performed 6 different activities while wearing a smartphone. The smartphone captured various data about their movements.
Full info bout source data here: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones Here are the data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### The code
"run_analysis.R" contains code to perform steps required for the course project:
* 1. Download and unzip dataset.
* 2. Merge the train and the test sets to create one data set.
* * 2.1 Read files
* * * 2.1.1 Read trainings tables
* * * 2.1.2 Read testing tables
* * * 2.1.3 Read feature vector
* * * 2.1.4 Read activity labels
* * 2.2 Assign column names
* * 2.3 Merge all data in one set
* 3. Extract only the measurements on the mean and standard deviation for each measurement
* *  3.1 Read column names
* *  3.2 Create vector for defining ID, mean and standard deviation
* *   3.3 Make nessesary subset from setAllInOne
* 4. Use descriptive activity names to name the activities in the data set
* 5. Appropriately label the data set with descriptive variable names
* 6. Create a second, independent tidy data set with the average of each variable for each activity and each subject
* * 6.1 Make second tidy data set
* * 6.2 Write second tidy data set in txt file

### The variables
* x_train, y_train, x_test, y_test, subject_train and subject_test are data from the downloaded files.
* x_data, y_data and subject_data merge the previous datasets.
* features contains the correct names for the x_data dataset.
* activity_labels.txt contains names and IDs of the activities.
* tidy2.txt is an independent tidy data set with the average of each variable for each activity and each subject.
