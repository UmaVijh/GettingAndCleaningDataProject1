setwd("~/Documents/Coursera/GettingAndProcessingData/Project1")
library("reshape2", lib.loc="/Library/Frameworks/R.framework/Versions/3.0/Resources/library")

#Read in the relevant data

if (file.exists("./data/X_test.txt")){
        dfXtest <- read.table("./data/X_test.txt")
}
if (file.exists("./data/Y_test.txt")){
        dfYtest <- read.table("./data/Y_test.txt")
}
if (file.exists("./data/Subject_test.txt")){
        dfSubjectTest <- read.table("./data/Subject_test.txt")
}

if (file.exists("./data/X_train.txt")){
        dfXtrain <- read.table("./data/X_train.txt")
}
if (file.exists("./data/Y_train.txt")){
        dfYtrain <- read.table("./data/Y_train.txt")
}
if (file.exists("./data/Subject_train.txt")){
        dfSubjectTrain <- read.table("./data/Subject_train.txt")
}

#Combine the Test data
dfTest <- cbind(dfSubjectTest,dfXtest,dfYtest)
#Combine the Train data
dfTrain <- cbind(dfSubjectTrain,dfXtrain,dfYtrain)

#Combine the Test and Train data
dfTestTrain <- rbind(dfTest,dfTrain)

#Extract the relevant columns
#Select all the rows, 
#first column contains the subject id and the last(563) is the activity label (Y data)
#The other columns are the means and standard deviations

dfMeanSD <- dfTestTrain[,c(1,2:7,42:47,82:87,122:127,162:167,202,203,215,216,228,229,241,242,254,255,267:272,346:351,425:430,504,505,517,518,530,531,543,544,563)]

#Give descriptive names to the activities
act_lab1 <- gsub("1", "Walking", dfMeanSD[,68])
act_lab2 <- gsub("2", "Walking Upstairs", act_lab1)
act_lab3 <- gsub("3", "Walking Downstairs", act_lab2)
act_lab4 <- gsub("4", "Sitting", act_lab3)
act_lab5 <- gsub("5", "Standing", act_lab4)
activity.labels <- gsub("6", "Laying", act_lab5)

rm(act_lab1,act_lab2,act_lab3,act_lab4,act_lab5)

#Add the Acitivity Labels to the data frame
dfMeanSD <- cbind(dfMeanSD,activity.labels)

#Labeling the data in a readable way
#Using captitals to make it more readable
#Read in the "features.txt" file to extract names and convert them to a more readale format
if(file.exists("./data/featues.txt")){
        labels <- read.table("./data/features.txt", stringsAsFactors=FALSE)
}
labels <- labels[,2]
labels <- c("subject.id",labels,"activity.code","activity.label")
labels <- labels[c(1,2:7,42:47,82:87,122:127,162:167,202,203,215,216,228,229,241,242,254,255,267:272,346:351,425:430,504,505,517,518,530,531,543,544,563,564)]

#remove the "()" and "-"
labels <- gsub("-mean\\(\\)-",".mean.",labels)
labels <- gsub("-std\\(\\)-",".sd.",labels)
labels <- gsub("-mean\\(\\)",".mean",labels)
labels <- gsub("-std\\(\\)",".sd",labels)

#add the columnNames
colnames(dfMeanSD) <- labels

#collate the data
dfmelt <- melt(dfMeanSD,id=c("subject.id","activity.code","activity.label"))

dfSubjectActivityAvg <- dcast(dfmelt,subject.id+ activity.label~variable,mean)

#Write the cast dataframe into a txt file
write.table(dfSubjectActivityAvg,file="./SamsungGalaxySTidyData.txt", row.names=FALSE)

