
# Step 0: Load the datasets

filesPath <- "/tmp/"
setwd(filesPath)
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip",method="curl")

unzip(zipfile="./data/Dataset.zip",exdir="./data")

rNames <- read.table("data/UCI HAR Dataset/features.txt", header = FALSE, stringsAsFactors = FALSE, strip.white=TRUE)

testSet <- read.table("data/UCI HAR Dataset/test/X_test.txt", col.names = rNames$V2)
testActivitySet <- read.table("data/UCI HAR Dataset/test/y_test.txt")
testSubjectSet <- read.table("data/UCI HAR Dataset/test/subject_test.txt")

trainSet <- read.table("data/UCI HAR Dataset/train/X_train.txt", col.names = rNames$V2)
trainActivitySet <- read.table("data/UCI HAR Dataset/train/y_train.txt")
trainSubjectSet <- read.table("data/UCI HAR Dataset/train/subject_train.txt")


# Step 1: Merges the training and the test sets to create one data set.

cTestSet <- cbind(testSet, testActivitySet, testSubjectSet)
cTrainSet <- cbind(trainSet, trainActivitySet, trainSubjectSet)
cSet <- rbind(cTestSet, cTrainSet)
cnames <- colnames(cSet)
cnames[length(cnames)-1] <- "activity"
cnames[length(cnames)] <- "subject"
colnames(cSet) <- c(cnames)

# Step 2: Extracts only the measurements on the mean and standard deviation for each measurement.

meanStdSubset <- cSet[,grepl("(mean\\.|std\\.|activity|subject)", cnames, ignore.case = FALSE)]


# Step 3: Uses descriptive activity names to name the activities in the data set
# 1 WALKING
# 2 WALKING_UPSTAIRS
# 3 WALKING_DOWNSTAIRS
# 4 SITTING
# 5 STANDING
# 6 LAYING

meanStdSubset$activityNum <- meanStdSubset$activity

meanStdSubset$activity <- gsub("1", "WALKING", meanStdSubset$activity)
meanStdSubset$activity <- gsub("2", "WALKING_UPSTAIRS", meanStdSubset$activity)
meanStdSubset$activity <- gsub("3", "WALKING_DOWNSTAIRS", meanStdSubset$activity)
meanStdSubset$activity <- gsub("4", "SITTING", meanStdSubset$activity)
meanStdSubset$activity <- gsub("5", "STANDING", meanStdSubset$activity)
meanStdSubset$activity <- gsub("6", "LAYING", meanStdSubset$activity)

# Step 4 Appropriately labels the data set with descriptive variable names.
cnames <- colnames(meanStdSubset)
cnames<-gsub("std()", "StandardDeviation", cnames)
cnames<-gsub("mean()", "Mean", cnames)
cnames<-gsub("^t", "time", cnames)
cnames<-gsub("^f", "frequency", cnames)
cnames<-gsub("Acc", "Accelerometer", cnames)
cnames<-gsub("Gyro", "Gyroscope", cnames)
cnames<-gsub("Mag", "Magnitude", cnames)
cnames<-gsub("BodyBody", "Body", cnames)
cnames<-gsub("\\.", "", cnames)
colnames(meanStdSubset) <- c(cnames)

# Step 5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

ncol(meanStdSubset)-3
meanStdSubset[, 1:(ncol(meanStdSubset)-3)]

aggregateData <- aggregate(meanStdSubset[, 1:(ncol(meanStdSubset)-3)],
                       by=list(subject = meanStdSubset$subject, 
                               label = meanStdSubset$activity),
                       mean)

write.table(aggregateData, "tidy_UCI_data.txt", row.name=FALSE)
