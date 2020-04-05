# Gathering and Cleaning Project
# by Alex MacCalman

library(dplyr)
library(stringr)
#read featureNames and Subjects
featureNames <- read.table("features.txt")
strain <- read.table("./train/subject_train.txt") 
strain <- rename(strain, Subject = V1)
#read X_train and label col headers
xtrain <- read.table("./train/X_train.txt")
xtrain <- tbl_df(xtrain)
col <- as.vector(featureNames$V2)
colnames(xtrain) <- col
#read y_train and label col header
ytrain <- read.table("./train/y_train.txt")
ytrain <- tbl_df(ytrain)
colnames(ytrain) <- "ActivityNum"
#label activity names
ytrain$ActivityNum[ytrain$ActivityNum == 1] <- "WALKING"
ytrain$ActivityNum[ytrain$ActivityNum == 2] <- "WALKING UPSTAIRS"
ytrain$ActivityNum[ytrain$ActivityNum == 3] <- "WALKING DOWNSTAIRS"
ytrain$ActivityNum[ytrain$ActivityNum == 4] <- "SITTING"
ytrain$ActivityNum[ytrain$ActivityNum == 5] <- "STANDING"
ytrain$ActivityNum[ytrain$ActivityNum == 6] <- "LAYING"

#read test subjects
stest <- read.table("./test/subject_test.txt") 
stest <- rename(stest, Subject = V1)
#read X_test and label col headers
xtest <- read.table("./test/X_test.txt")
xtest <- tbl_df(xtest)
col <- as.vector(featureNames$V2)
colnames(xtest) <- col

#read y_test and label col header
ytest <- read.table("./test/y_test.txt")
ytest <- tbl_df(ytest)
colnames(ytest) <- "ActivityNum"
#label activity names
ytest$ActivityNum[ytest$ActivityNum == 1] <- "WALKING"
ytest$ActivityNum[ytest$ActivityNum == 2] <- "WALKING UPSTAIRS"
ytest$ActivityNum[ytest$ActivityNum == 3] <- "WALKING DOWNSTAIRS"
ytest$ActivityNum[ytest$ActivityNum == 4] <- "SITTING"
ytest$ActivityNum[ytest$ActivityNum == 5] <- "STANDING"
ytest$ActivityNum[ytest$ActivityNum == 6] <- "LAYING"

#extract standard dev and mean columns
rtrain <- xtrain[grep("std|[Mm]ean", names(xtrain))]
rtest <- xtest[grep("std|[Mm]ean", names(xtest))]

#Merge data with subjects and activity names
mtrain <- mutate(rtrain, Subject = strain$Subject, ActivityName = ytrain$ActivityNum, DataSet = "Train")
mtest <- mutate(rtest, Subject = stest$Subject, ActivityName = ytest$ActivityNum, DataSet = "Test")

#merge both train and test data
merged <- rbind(mtrain, mtest)
# sort by subject then activity name
merged <- arrange(merged, Subject, ActivityName)

#clean up column names
newNames <- names(merged)
# "delete "-" and "()" and spaces and commas
newNames <- str_replace_all(newNames, "-", " ")
newNames <- gsub("[()]", "", newNames)
newNames <- gsub(" ", "", newNames)
newNames <- gsub(",", "", newNames)
# convert to all lower case and trim whitespaces
newNames <- str_to_lower(newNames)
newNames <- str_trim(newNames)
# assign neames to table
colnames(merged) <- newNames
# group by subject qand activity name
gmerged <- group_by(merged, subject, activityname)
# summarize groups by mean
dataSummary <- summarize_all(gmerged, funs(mean))
# write table without row names
write.table(dataSummary, "./dataSummary.txt", row.names = FALSE)