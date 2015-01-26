##Add dplyr library, to be able to manipulate the data freely.
library(dplyr)

##Read test set...
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")

##Read training set...
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")

##Read the names of each feature...
feature_names <- read.table("UCI HAR Dataset/features.txt")

##Find the location of the features that contain mean or std measurements using logical indexing...
features_to_keep <- grepl("mean", feature_names[,2]) | grepl("std", feature_names[,2])

##Assign the names of the features to the column names of the train and test sets...
colnames(x_test) <- feature_names[,2]
colnames(x_train) <- feature_names[,2]

##Then keep only the columns that have mean or std values, using our features_to_keep vector...
x_test <- x_test[,features_to_keep]
x_train <- x_train[, features_to_keep]

##Load y labels for both the training and the test set...
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")

##Label the only column of y_test and y_train as "Activity"
colnames(y_test) <- "Activity"
colnames(y_train) <- "Activity"

##Load the subject_train and subject_test tables...
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

##Label their only column as "Subject"...
colnames(subject_test) <- "Subject"
colnames(subject_train) <- "Subject"

##Concatenate all the test files to their corresponding train file...
x_all <- rbind(x_train, x_test)
y_all <- rbind(y_train, y_test)
subject_all <- rbind(subject_train, subject_test)

##Remove the variables to save space...
rm(x_train, x_test, y_test, y_train, subject_train, subject_test)

##Add the y_all and subject_all values to x_all as additional columns...
tidyData <- cbind(x_all, y_all)
tidyData <- cbind(tidyData, subject_all)

##Once the data set is constructed, we 
##Store the resulting table in a file named tidyData.txt
write.table(tidyData, file = "tidyData.txt", row.name=FALSE)
