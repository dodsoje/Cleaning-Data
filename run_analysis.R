Run_Analysis.R

#  The Data for this script comes from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

# Set Working Directory


setwd("UCI HAR Dataset")


#1 Merge the Test and Train datasets

trainData <- read.table("Train/X_train.txt")
testData <- read.table("Test/X_test.txt")
XData <- rbind(trainData, testData)

trainSubj <- read.table("Train/subject_train.txt")
testSubj <- read.table("Test/subject_test.txt")

SData <- rbind(trainSubj, testSubj)

trainAct <- read.table("Train/y_train.txt")
testAct <- read.table("Test/y_test.txt")

YData <- rbind(trainAct, testAct)

#2 Extracts only the measurements on the mean and standard deviation for each measurement.

features <- read.table("features.txt")

good_features <- grep("-mean\\(\\)|-std\\(\\)", features[, 2]) 
XData <- XData[, good_features] 
names(XData) <- features[good_features, 2] 
names(XData) <- gsub("\\(|\\)", "", names(XData)) 
names(XData) <- tolower(names(XData)) 

#3 Name the activities in the activity set with descriptive names

activities <- read.table("activity_labels.txt") 
activities[, 2] = gsub("_", "", tolower(as.character(activities[, 2]))) 
YData[,1] = activities[YData[,1], 2] 
names(YData) <- "activity" 

#4 Appropriately label the data set with descriptive variable names

names(SData) <- "subject" 
clean <- cbind(SData, YData, XData) 
write.table(clean, "clean_data_set.txt") 

uniqueSubjects = unique(SData)[,1] 
numSubjects = length(unique(SData)[,1]) 
numActivities = length(activities[,1]) 
numCols = dim(clean)[2] 
finalResults = clean[1:(numSubjects*numActivities), ] 

#5 create a second, independent tidy data set with the average of each variable for each activity and each subject

row = 1 
  for (s in 1:numSubjects) { 
     for (t in 1:numActivities) { 
         finalResults[row, 1] = uniqueSubjects[s] 
         finalResults[row, 2] = activities[t, 2] 
         tmp <- clean[clean$subject==s & clean$activity==activities[t, 2], ] 
         finalResults[row, 3:numCols] <- colMeans(tmp[, 3:numCols]) 
         row = row+1 
     } 
 } 

write.table(finalResults, "tidy_data_set_with_the_averages.txt", row.name=FALSE)

