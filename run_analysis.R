library(plyr)

# Step 1. Download and unzip the dataset.
if(!file.exists("./data")){dir.create("./data")}
url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url,destfile="./data/Dataset.zip")
unzip(zipfile="./data/Dataset.zip",exdir="./data")

# Step 2. Merge the training and the test sets to create one data set:
# 2.1. Read files:

# 2.1.1. Read trainings tables:
x_train<-read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_train<-read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_train<-read.table("./data/UCI HAR Dataset/train/subject_train.txt")

# 2.1.2. Read testing tables:
x_test<-read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test<-read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test<-read.table("./data/UCI HAR Dataset/test/subject_test.txt")

# 2.1.3. Read feature vector:
features<-read.table('./data/UCI HAR Dataset/features.txt')

# 2.1.4. Read activity labels:
activity_labels=read.table('./data/UCI HAR Dataset/activity_labels.txt')

# 2.2. Assign column names:
colnames(x_train)<-features[,2] 
colnames(y_train)<-"activityId"
colnames(subject_train)<-"subjectId"
colnames(x_test)<-features[,2] 
colnames(y_test)<-"activityId"
colnames(subject_test)<-"subjectId"
colnames(activity_labels)<-c('activityId','activityType')

# 1.3. Merg all data in one set:
mrg_train<-cbind(y_train, subject_train, x_train)
mrg_test<-cbind(y_test, subject_test, x_test)
set_all_in_one<-rbind(mrg_train, mrg_test)

# Step 3. Extract only the measurements on the mean and standard deviation for each measurement:
# 3.1. Read column names:
colNames<-colnames(set_all_in_one)

# 3.2. Create vector for defining ID, mean and standard deviation:
mean_and_std<-(grepl("activityId" , colNames) | 
                   grepl("subjectId" , colNames) | 
                   grepl("mean.." , colNames) | 
                   grepl("std.." , colNames))

# 3.3. Making nessesary subset from setAllInOne:
set_mean_and_std<-set_all_in_one[ , mean_and_std == TRUE]

# Step 4. Use descriptive activity names to name the activities in the data set:
set_activity_names<-merge(set_mean_and_std, activity_labels, by='activityId', all.x=TRUE)

# Step 5. Appropriately label the data set with descriptive variable names (done in 2.3, 3.2, 3.3).

# Step 6. Create a second, independent tidy data set with the average of each variable for each activity and each subject:
# 6.1. Make second tidy data set 
tidy2<-aggregate(. ~subjectId + activityId, set_activity_names, mean)
tidy2<-tidy2[order(tidy2$subjectId, tidy2$activityId),]

# 6.2. Write second tidy data set in txt file
write.table(tidy2, "tidy2.txt", row.name=FALSE)