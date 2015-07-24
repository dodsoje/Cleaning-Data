# CodeBook #

**Data Source**

The data can be found at 
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 

Data description can be found at
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) 

**Variables**

The run_ analysis.R script reads the activity_lables.txt file and gives appropriate activity descriptions to the data set

•	Walking

•	Walkingupstairs

•	Walkingdownstairs

•	Sitting

•	Standing

•	Laying

Also appropriately labels the data set with descriptive names: Converts to lower case all feature name and activity names. Removes the underscores and brackets ().  Merges 
All feature names (attributes) and activity names are converted to lower case, underscores and brackets () are removed. Then it merges the data frame containing features with data frames containing activity labels and subject IDs. The result is saved as clean_data.txt.  The attribute names are:

•	tbodyacc-mean-y

•	tbodyacc-mean-z

•	tbodyacc-std-x

•	tbodyacc-std-y

•	tbodyacc-std-z

•	tgravityacc-mean-x

•	tgravityacc-mean-y


**Tidy Data Set**

The final result is a tidy data set that has the average of each activity and each subject, called tidy_ data_ set_ with_ averages.txt



