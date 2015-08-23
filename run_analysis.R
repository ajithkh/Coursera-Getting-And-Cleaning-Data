library(data.table)
library(dplyr)

features <- read.table("features.txt")
activityLabels <- read.table("activity_labels.txt", header = FALSE, col.names = c("ActivityId", "Activity"))


## read training data
subjectTrain <- read.table("train/subject_train.txt", header = FALSE)
activityTrain <- read.table("train/y_train.txt", header = FALSE)
featuresTrain <- read.table("train/X_train.txt", header = FALSE)

## Read test data
subjectTest <- read.table("test/subject_test.txt", header = FALSE)
activityTest <- read.table("test/y_test.txt", header = FALSE)
featuresTest <- read.table("test/X_test.txt", header = FALSE)

## merge training and test data 
subjectMerged <- rbind(subjectTrain, subjectTest)
activityMerged <- rbind(activityTrain, activityTest)
featuresMerged <- rbind(featuresTrain, featuresTest)

##correct column names 
names(subjectMerged) <-  c("subject")
names(activityMerged) <- c("Activity")
names(featuresMerged) <- features$V2

##get final merged data
mergedSubjActivity <- cbind(subjectMerged,activityMerged)
mergedData <- cbind(mergedSubjActivity,featuresMerged)

##extract the required fields 
sel <- features$V2[grep("mean\\(\\)|std\\(\\)",features$V2)]
subsetFields<-c(as.character(sel ), "subject", "Activity" )
selData<-subset(mergedData,select=subsetFields)

##correct activity with activity labels
selData$Activity <- as.character(selData$Activity)
for (i in 1:6){
    selData$Activity[selData$Activity == i] <- as.character(activityLabels[i,2])
}
selData$Activity <- as.factor(selData$Activity)
##correct column names 
names(selData)<-gsub("-mean()", "Mean", names(selData), ignore.case = TRUE)
names(selData)<-gsub("-std()", "STD", names(selData), ignore.case = TRUE)
names(selData)<-gsub("-Mean()", "Mean", names(selData), ignore.case = TRUE)
names(selData)<-gsub("-STD()", "STD", names(selData), ignore.case = TRUE)
names(selData)<-gsub("-freq()", "Frequency", names(selData), ignore.case = TRUE)
names(selData)<-gsub("Acc", "Accelerometer", names(selData))
names(selData)<-gsub("Gyro", "Gyroscope", names(selData))
names(selData)<-gsub("BodyBody", "Body", names(selData))
names(selData)<-gsub("Mag", "Magnitude", names(selData))
names(selData)<-gsub("^t", "Time", names(selData))
names(selData)<-gsub("^f", "Frequency", names(selData))
names(selData)<-gsub("tBody", "TimeBody", names(selData))
names(selData)<-gsub("angle", "Angle", names(selData))
names(selData)<-gsub("gravity", "Gravity", names(selData))

tidyData<-aggregate(. ~subject + Activity, selData, mean)
tidyData<-tidyData[order(tidyData$subject,tidyData$Activity),]
write.table(tidyData, file = "tidydata.txt",row.name=FALSE)


