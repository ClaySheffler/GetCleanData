
# Clear workspace
rm(list=ls())

#library(dplyr)

path <- "C:/Users/csheffler/OneDrive/Courses/CleaningDataR/Project"
setwd(path)

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile="ActivityData.zip")
unzip(zipfile = "ActivityData.zip")

list.files(path)
# Unzipped as folder "UCI HAR Dataset"
dpath <- "./UCI HAR DATASET"
list.files(dpath, recursive=TRUE)

# From reading README and parent folder files:
# Activity(y) is dependent variable -- y_train/test (1:walking.. 6:laying)
# Features(x) corresponds to variables/descriptions -- x_train/test (1:561!)
# Subject(id) - which participant (1:30)

dataFeaturesTest  <- read.table(file.path(dpath, "test/X_test.txt" ), header=FALSE)
dataFeaturesTrain <- read.table(file.path(dpath, "train/X_train.txt"), header=FALSE)
dataActivityTest  <- read.table(file.path(dpath, "test/Y_test.txt"), header=FALSE)
dataActivityTrain <- read.table(file.path(dpath, "train/Y_train.txt"), header=FALSE)
dataSubjectTrain <- read.table(file.path(dpath, "train/subject_train.txt"), header=FALSE)
dataSubjectTest  <- read.table(file.path(dpath, "test/subject_test.txt"), header=FALSE)

# Examine structure of data frames
str(dataFeaturesTrain)
str(dataActivityTrain)
str(dataSubjectTrain)
str(dataFeaturesTest)
str(dataActivityTest)
str(dataSubjectTest)

# Combine train and test datasets by appending ROWS
dataFeatures<- rbind(dataFeaturesTrain, dataFeaturesTest)
dataActivity<- rbind(dataActivityTrain, dataActivityTest)
dataSubject <- rbind(dataSubjectTrain, dataSubjectTest)

str(dataActivity)
str(dataFeatures)
str(dataSubject)

names(dataActivity) <- "activity"
names(dataSubject) <- "subject"

dataFeaturesNames <- read.table(file.path(dpath, "features.txt"),head=FALSE)
names(dataFeatures) <- dataFeaturesNames$V2
str(dataFeatures)

# Combine all three sets of columns to single data frame () include ID, variables, and y.
data <- cbind(dataSubject, dataFeatures, dataActivity)
names(data) # woo! SubjectID + Features + Activity in 1 data frame!
str(data)












