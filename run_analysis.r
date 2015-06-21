##
##
##	Set the current working directory where we will the data files that we will need.
##
##	Read in the training and test data files
##
##	Assumes the current working directory is: "UCI HAR Dataset"
##

cat("*** Welcome as we try to create a tidy data set from some raw\n")
cat("***         wearable computing data\n\n")

cat("*** Read in files that we need -- this may take a few seconds\n")

homeDirectory <- getwd()

setwd("./train")
trainingMeasure <- read.table("X_train.txt")
trainingActivity <- read.table("y_train.txt")
trainingSubject <- read.table("subject_train.txt")
setwd(homeDirectory)

setwd("./test")
testingMeasure <- read.table("X_test.txt")
testingActivity <- read.table("y_test.txt")
testingSubject <- read.table("subject_test.txt")
setwd(homeDirectory)

cat("*** Measurement files have been read in\n")

##
##	Let's read in the features file to get the listing of all the variable/column names
##	This is actually step four in the process but easier to implement prior to set up of
##	the first step.
##
##	We will need to modify the names a bit:
##
##		1.  Get the features data frame
##		2.	Remove "()" completely
##		3.	Replace any remaining "(", ")", or "," with a "." and replace a "-" with an "_"
##		4.	Change the names on the data frame for both the training and
##			testing measurements with the modified names
##		5.	Add names to the activity and subject data frames
##

cat("*** Get the list of feature names\n")

originalVariableNames <- read.table("features.txt")
modifiedVariableNames <- gsub("()", "", originalVariableNames[,2], fixed = TRUE)
modifiedVariableNames <- chartr("(),-", "..._", modifiedVariableNames)

cat("*** Change the feature names in the measurement data frames\n")

names(testingMeasure) <- modifiedVariableNames
names(trainingMeasure) <- modifiedVariableNames

cat("*** Change the subject and activity column names\n")

names(trainingSubject) <- names(testingSubject) <- "subject"
names(trainingActivity) <- names(testingActivity) <- "activity"


##
##	Combine the training data with the activity data
##	Also, do the same with the test data.
##

cat("*** Combine the data frames for the training and testing data\n")

trainingData <- cbind(trainingMeasure, trainingSubject, trainingActivity)
testingData <- cbind(testingMeasure, testingSubject, testingActivity)

completeRawData <- rbind(trainingData, testingData)

##
##	Read in the features files and create the indexes for mean and standard deviation
##

cat("*** Get the list of the mean and standard deviation indexes\n")

meanIndices <- grep("mean", modifiedVariableNames)
meanFreqIndices <- grep("meanFreq", modifiedVariableNames)
meanIndicesList <- setdiff(meanIndices, meanFreqIndices)

stdIndices <- grep("std", modifiedVariableNames)
stdFreqIndices <- grep("stdFreq", modifiedVariableNames)
stdIndicesList <- setdiff(stdIndices, stdFreqIndices)

##
##	Take the last two columns as they are our subject and activity and we do 
##	not want to lose them
##

activityIndexList <- n <- ncol(completeRawData)
subjectIndexList <- m <- n - 1

meanStdIndicesList <- sort(c(meanIndicesList, stdIndicesList, subjectIndexList, 
								activityIndexList))

meanStdValueDS <- completeRawData[,meanStdIndicesList]

##
##	Change the activity code to an activity name.  We purposely kept the
##	the activity column last so that we could access it easily at this point.
##	First we will need to read in the activity labels.
##

cat("*** Get the list of activity labels\n")

activityLabel <- read.table("activity_labels.txt")

n <- ncol(meanStdValueDS)
meanStdValueDS[,n] <- activityLabel[meanStdValueDS[,n],2]

##
##	At this point we should have a data set that has the training and testing data 
##	combined.  But with only observations of the mean and standard deviation.  With
##	two extra columns at the end... the second to last column should contain the subject --
##	this is a numeric value from 1 to 30 that represents the person in testing.  And
##	the last column contain the activity label on what the subject was doing while
##	in training/testing -- that is, either SITTING, LAYING, STANDING, WALKING,
##	WALKING-UPSTAIRS, or WALKING-DOWNSTAIRS.
##
##	Now we want to combine and average out the the multiple activities per subject
##	and present this as the tidy data set.
##
##	Let's reorder the data set first to get the subject and activity listed in the
##	the first two columns
##

n <- ncol(meanStdValueDS)
m <- n - 1
l <- n - 2
k <- 1:l

meanStdValueDS <- meanStdValueDS[c(m, n, k)]

##
##	Need dplyr and plyr packages available for summarizing
##

library(dplyr)
library(plyr)

##
##	Wow... this command seems to do everything in one step to get the tidy data set.
##

cat("*** Create tidy data set\n")

tidyDataSet <- ddply(meanStdValueDS, c("subject", "activity"), numcolwise(mean))

cat("*** Display sample of tidy data set by displaying the top 10 lines\n\n")
print(head(select(tidyDataSet, subject:tBodyAcc_mean_Z), 10))
cat("\n\n*** Display sample of tidy data set by displaying the bottom 10 lines\n\n")
print(tail(select(tidyDataSet, subject:tBodyAcc_mean_Z), 10))

##
##	Write the tidy data set to a file
##

outputFile <- "tidy_data.txt"
cat("\n*** Write tidy data set to the file: ", outputFile, "\n")

write.table(tidyDataSet, outputFile, row.names = FALSE)

cat("\n\n*** End Tidy Data Project\n\n")




