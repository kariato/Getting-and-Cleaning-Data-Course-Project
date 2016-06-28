#Author: Mark C. Davey
#Date: 6/27/2016
#Decription: R code to combine and tidy up the data
#
#clean up
rm(list=ls())
#
#
library(data.table)
library(dplyr)
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL,destfile = "./data/Community.csv",method="libcurl")

activity_labels <- fread("./activity_labels.txt")
features <- fread("./features.txt")
features$V2 <-gsub("[()-]","",features$V2)
features$V2 <-gsub("[()]","",features$V2)
features$V2 <-gsub("-","",features$V2)
x_test <- fread("./test/X_test.txt")
x_test <- setnames(x_test,names(x_test),features$V2)
y_test <- fread("./test/y_test.txt")
subject_test  <- fread("./test/subject_test.txt")
x_train <- fread("./train/X_train.txt")
x_train <- setnames(x_train,names(x_train),features$V2)
y_train <- fread("./train/y_train.txt")
subject_train  <- fread("./train/subject_train.txt")
x_whole <- rbind(x_test,x_train)
y_whole <- rbind(y_test,y_train)
subject_whole <- rbind(subject_test,subject_train)
subject_whole <- setnames(subject_whole,"V1","Subject")
y_whole <- merge(y_whole,activity_labels,by="V1",all=TRUE)
y_whole <- setnames(y_whole,"V2","Activity")
requiredColumns <- grep(".*mean.*|.*std.*",features$V2,value=TRUE)
x_subset <- subset(x_whole,select = requiredColumns)
final_dataset <- cbind(subject_whole$Subject,y_whole$Activity,x_subset)
final_dataset <- setnames(final_dataset,c("V1","V2"),c("Subject","Activity"))
write.table(final_dataset,"tidy.txt", row.names=FALSE, quote = FALSE)
test <- fread("tidy.txt")