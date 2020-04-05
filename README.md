# GatheringAndCleaning
Project assignment for Gathering and Cleaning Course

This README file describes the analysis performed to tidy a collection of data so that it is ready for analysis. 

The contents of this repository consists of the follwoing files:
run_script.R - this file contains the R code that performed teh data tidying.
CODEBOOK - this file contains the descriptions of the variables within the tidy dataset
dataSummary.txt - this file is the tidyed data that is the output of the run_script.R

The data used for this analysis is collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

[UCI Website](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The data can be obtained from the follwoing website:

[Data Zip File](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## Analysis steps
### 1. Merges the training and the test sets to create one data set.
Read featureNames and Subjects  
Read X_train and label col headers  
Read y_train and label col header  
Label activity names  
Read test subjects  
Read X_test and label col headers  
Read y_test and label col header  
### 3, Use descriptive activity names to name the activities in the data set
Label activity names  
### 2. Extracts only the measurements on the mean and standard deviation for each measurement.
Extract standard dev and mean columns  
Merge data with subjects and activity names  
Merge both train and test data  
Sort by subject then activity name  
### 4. Appropriately labels the data set with descriptive variable names.
Clean up column names  
Delete "-" and "()" and spaces and commas  
Convert to all lower case and trim whitespaces  
Assign names to table  
### 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
Group by subject and activity name  
Summarize groups by mean  
Write table without row name  
