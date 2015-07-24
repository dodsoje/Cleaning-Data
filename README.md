# #Getting and Cleaning Data Project Course

Source data location: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


The R script called run_analysis.R does the following. 

1.	Merges the training and the test sets to create one data set.
2.	Extracts only the measurements on the mean and standard deviation for each measurement. 
3.	Uses descriptive activity names to name the activities in the data set
4.	Appropriately labels the data set with descriptive variable names. 
5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


**How To Run the Analysis**

•	Download the data file from [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip )and unzip the file on your local drive c:\documents\coursera\get-cleaning-data

•	Put run_analysis.R into C:\Documents\coursera\get-cleaning-data\UCI HAR Dataset\

•	In RStudio: setwd("\Documents\\coursera\\get-cleaning-data\UCI HAR Dataset\\")

•	Then source run_analysis.R

•	The output will be a file called tidy_ data_ set_ with_ the_averages.txt
 
•	To see the data in R, use data.table (“tidy_ data_ set_ with _averages.txt)



 

