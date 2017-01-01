rNames <- read.table("~/dev/data/UCI HAR Dataset/features.txt", header = FALSE, stringsAsFactors = FALSE)

testSet <- read.table("~/dev/data/UCI HAR Dataset/test/X_test.txt", col.names = rNames$V2)
trainSet <- read.table("~/dev/data/UCI HAR Dataset/train/X_train.txt", col.names = rNames$V2)

cSet <- rbind(testSet, trainSet)

names <- rNames$V2



meanStdSubset <- cSet[,grepl("(mean|std)", names)]