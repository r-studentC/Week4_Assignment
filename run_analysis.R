##### Quick Summary: Coursera's Getting and Cleaning Data Course - Week 4 Assignment 
##### Data provided by accelerometers of a smartphone ->
##### Merge, clean, and work on these sets, then create tidy output.
##### See README.md

#### Note: As stated in the assignment, the code only needs to work if the 
#### files in question are already present -> skipping the retrieval steps

library(dplyr)

### 1 - Read data

## Reading in training values (Xtrain), activity code (Ytrain) and 
## subjects (Subtrain)
Xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
Ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
Subtrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")

## Reading in test values (Xtest), activity code(Ytest) and 
## subjects (Subtest)
Xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
Ytest <- read.table("./UCI HAR Dataset/test/y_test.txt")
Subtest <- read.table("./UCI HAR Dataset/test/subject_test.txt")

## Reading in activity code table (activities) and features (features)
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")
features <- read.table("./UCI HAR Dataset/features.txt")


### 2 - Merging (first pass) and cleanup

## Create three new tables that each combine test and training data
Xall <- rbind(Xtrain, Xtest)
Yall <- rbind(Ytrain, Ytest) 
Suball <- rbind(Subtrain, Subtest) 

## remove the no longer used originals to save some memory
rm(Xtrain, Ytrain, Subtrain, Xtest, Ytest, Subtest)


### 3 - Name the columns and create factors for the activities
colnames(Xall) <- features[,2]
colnames(Yall) <- "activity"
Yall$activity <- factor(Yall$activity, levels = activities[,1], labels = activities[,2]) 
colnames(Suball) <- "subject"


### 4 - Select the mean and std deviation columns only
Xselected <- select(Xall, contains("mean()") | contains("std()"))


### 5 - Merge and create final set in the order "subject", "activity" "values"
FinalSet <- cbind(Suball, Yall, Xselected)


### 6 - Pipe the final set first through a grouping command and 
### then have summarize_all apply the mean() function on all values based on the
### grouping
FinalSetMeans <- FinalSet %>% group_by(activity, subject) %>% summarize_all(mean)


### 7 - Write the table to a file
write.table(FinalSetMeans, file = "./tidy_data_set.txt", row.names = FALSE)









