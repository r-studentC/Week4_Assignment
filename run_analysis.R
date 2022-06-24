##### Quick Summary: Coursera's Getting and Cleaning Data Course - Week 4 Assignment 
##### Data provided by accelerometers of a smartphone ->
##### Merge, clean, and work on these sets, then create tidy output.
##### See README.md

#### Note: As stated in the assignment, the code only needs to work if the 
#### files in question are already present -> skipping the retrieval steps

library(dplyr)

### 1 - Read data

## Reading in training values (trainValues), activity code (trainActivities) and 
## subjects (trainSubjs)
trainValues <- read.table("./UCI HAR Dataset/train/X_train.txt")
trainActivities <- read.table("./UCI HAR Dataset/train/y_train.txt")
trainSubjs <- read.table("./UCI HAR Dataset/train/subject_train.txt")

## Reading in test values (testValues), activity code(testActivities) and 
## subjects (testSubjs)
testValues <- read.table("./UCI HAR Dataset/test/X_test.txt")
testActivities <- read.table("./UCI HAR Dataset/test/y_test.txt")
testSubjs <- read.table("./UCI HAR Dataset/test/subject_test.txt")

## Reading in activity code table (activities) and features (features)
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")
features <- read.table("./UCI HAR Dataset/features.txt")


### 2 - Merging (first pass)

## Create three new tables that each combine test and training data
valuesAll <- rbind(trainValues, testValues)
activitiesAll <- rbind(trainActivities, testActivities) 
subjsAll <- rbind(trainSubjs, testSubjs) 


### 3 - Name the columns and create factors for the activities
colnames(valuesAll) <- features[,2]
colnames(activitiesAll) <- "activity"
activitiesAll$activity <- factor(activitiesAll$activity, levels = activities[,1], labels = activities[,2]) 
colnames(subjsAll) <- "subject"


### 4 - Select the mean and std deviation columns only
valuesSelected <- select(valuesAll, contains("mean()") | contains("std()"))


### 5 - Merge and create final set in the order "subject", "activity" "values"
FinalSet <- cbind(subjsAll, activitiesAll, valuesSelected)


### 6 - Pipe the final set first through a grouping command and 
### then have summarize_all apply the mean() function on all values based on the
### grouping
FinalSetMeans <- FinalSet %>% group_by(activity, subject) %>% summarise_all(mean)


### 7 - Write the table to a file
write.table(FinalSetMeans, file = "./tidy_data_set.txt", row.names = FALSE)









