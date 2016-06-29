#Author: Mark C. Davey
#Date: 6/27/2016
#Decription: R code to combine and tidy up the data
#
#clean up
setwd("C:/Users/mdavey/Google Drive/Data Science/Cleaning Data/Week 4")
rm(list=ls())
#
#
library(data.table)
library(dplyr)
#get the data from the remote system and unpack it only if does not exist
if (!file.exists("data")) {
  dir.create("data")
}
if (!file.exists("./data/Dataset.zip")) {
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileURL,destfile = "./data/Dataset.zip",method="libcurl")
}
if (!file.exists("UCI HAR Dataset")) {
  unzip("./data/Dataset.zip",exdir = ".")
}
#set default to sub directory
setwd("UCI HAR Dataset")
#
#
#read 
features <- fread("./features.txt")
headerNames <- gsub("[()-]","",features$V2)

#
#read in the test datasets
x_test <- fread("./test/X_test.txt")
x_test <- setnames(x_test,names(x_test),headerNames)
y_test <- fread("./test/y_test.txt")
subject_test  <- fread("./test/subject_test.txt")
#
#read in training dataset
x_train <- fread("./train/X_train.txt")
x_train <- setnames(x_train,names(x_train),headerNames)
y_train <- fread("./train/y_train.txt")
subject_train  <- fread("./train/subject_train.txt")
#
#bind the training and test data together 
x_whole <- rbind(x_test,x_train)
y_whole <- rbind(y_test,y_train)
subject_whole <- rbind(subject_test,subject_train)
#
#
activity_labels <- fread("./activity_labels.txt")
activity_labels <- setnames(activity_labels,"V1","Activity")
#y_whole <- merge(y_whole,activity_labels,by="V1",all=TRUE)
requiredColumns <- grep(".*mean.*|.*std.*",headerNames,value=TRUE)
x_subset <- subset(x_whole,select = requiredColumns)
#
#group data by subject and activity 
summary_dataset <- aggregate(x_subset,by=list(Subject=subject_whole$V1,Activity=y_whole$V1),mean)
#apply name of activity 
summary_dataset <- merge(summary_dataset,activity_labels,by="Activity",all=TRUE)
#reshape data for good tidy format
summary_dataset$Activity <- summary_dataset$V2
summary_dataset$V2 <- NULL
summary_dataset <- summary_dataset[,c(2, 1, 3:length(names(summary_dataset)))]
summary_dataset <- arrange(summary_dataset,Subject,Activity)
#write data to file to save results
write.table(summary_dataset,"tidy.txt", row.names=FALSE, quote = FALSE)
#read data back to confirm saved OK and is in valid format
test <- fread("tidy.txt")

