---
title: "README.md"
output: html_document
---

# Steps taken to process the raw Data Set

*Read test and training set, found in the UCI HAR Dataset folder, in the test and train subfolders, respectively.

```{r}
    x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
    x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
```

*We read the names of the features, found in the features.txt file, in the UCI HAR Dataset folder. Followingly, we select those features that calculate mean or standard deviations of raw measurements, as those are the only values we care about. Finally, we assign the labels to each column, and then subset the data sets, to keep only the right columns..

```{r}
    feature_names <- read.table("UCI HAR Dataset/features.txt")
    features_to_keep <- grepl("mean", feature_names[,2]) | grepl("std", feature_names[,2])
    colnames(x_test) <- feature_names[,2]
    colnames(x_train) <- feature_names[,2]
    x_test <- x_test[,features_to_keep]
    x_train <- x_train[, features_to_keep]
```

*In addition to the information found at the train and test.txt files, there are two columns, containing the user ID and activity ID of each measurement. Thus, we must lod these as well, to include them as features in our data set.

```{r}
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
```

*Once we have training and test data for subjects, actions and measurements, we merge both training and test sets, to then add the subject and action columns to the main measurement table.

```{r}
    ##Concatenate all the test files to their corresponding train file...
    x_all <- rbind(x_train, x_test)
    y_all <- rbind(y_train, y_test)
    subject_all <- rbind(subject_train, subject_test)
    
    ##Add the y_all and subject_all values to x_all as additional columns...
    all_data <- cbind(x_all, y_all)
    all_data <- cbind(all_data, subject_all)
...

*Finally, using the aggregate function, we calculate the mean per person per action of each measurement, summarizing our dataset.

...{r}
    tidyData<-aggregate(all_data[, 1:79], list(all_data$Activity, all_data$Subject), mean)
    colnames(tidyData)[1] <- "Activity"
    colnames(tidyData)[2] <- "Subject"
...

*With this, we conclude our processing of the data. The final data may be found at the tidyData.txt file, and may be reproduced by running the run_analysis.R script. For information on the fields used in each column, please refer to the CodeBook.md file.
