# Getting-and-Cleaning-Data

##Getting and Cleaning Data Course Project
(getdata-015)

##Author: E. J. Carr
June, 2015

##DESCRIPTION:	This project will take raw data on wearable electronics that record and sense different physical activities that a subject/person is doing.  Specifically, this data is from a Samsung Smartphones that sense the subject movements.  There were thirty subjects involved in this study and there were six different activities that the subject can perform:

*	Walking
*	Walking Upstairs
*	Walking Downstairs
*	Standing
*	Sitting
*	Laying

The raw data consists of thousands of observations with over five hundred different variables being observed.  The subjects are also divided into two categories: test or train.
The project will retrieve this data from given flat files and will do the following:

* Merge training and test sets
*	Extract only the measurements that are a standard deviation or a mean (note there are some mean frequency in the raw data – the mean frequency variables will NOT be extracted
*	Activities in the raw data are represented with a numeric value between 1 to 6, this will be changed to a descriptive account of the activity
*	Variable names will be changed from the default data frame names to more descriptive names that the data represents
*	Creation of a tidy data set with a average to each variable for each activity and each subject
*	Writing out to a file the tidy data set

##PROGRAM NAME:	run_analysis.R
Requires R Programming Language with the packages: plyr and dplyr installed

##ASSUMPTIONS:
	The following assumptions are made in regards to input files and directories:
	Working Directory:	**“UCI HAR Dataset”**
	Within this directory we assume that the following files will exist:
	
*	activity_labels.txt	--	Contains the descriptive activity names
*	features.txt		--	Contains the descriptive variable names
*	
And we assume the following directories exist within the working directory:

*	test			--	Contains subject testing files
*	train			--	Contains subject training files
	
Within the test directory we will assume the following files will exist:

*	subject_test.txt		--	Contains the subject numbers 
*	y_test.txt		--	Contains the activity numbers
*	X_test.txt		--	Contains the readings of the wearable devices

With the train directory we will assume the following files will exist:

*	subject_test.txt		--	Contains the subject numbers
*	y_test.txt		--	Contains the activity numbers
*	X_test.txt		--   	Contains the readings of the wearable devices

##GITHUB FILES:

	The following files are part of the Github repository:
	
*	README.md		--	This file with high-level descriptions of this project
*	Codebook.md		--	Contains information of variables from tidy data set
*	run_analysis.R		--	R program to create tidy data set
*	tidy_data.txt     --  Output of running run_analysis.R

##FLOW of run_analysis.R:

	The following describes the general flow of the program: run_analysis.R:
	
*	Assumes that is being invoked with the working directory and the necessary  input files being available
*	Changes directory to the train directory and reads in the files: 
	-	X_train.txt (dimension: 7352 x 561)
	-	y_train.txt
	-	subject_train.txt
*	Changes directory to the test directory and reads in the files:
	-	X_test.txt (dimension: 2947 x 561)
	-	y_test.txt
	-	subject_test.txt
*	Changes to the working directory and reads in the file: features.txt
*	Modifies the variable names from the features.txt file and eliminates special characters that are not valid variable names in R.  Specifically, the “()” is removed completely and not replaced.  In addition, any “(“, “)”, or “,” characters are replaced with a “.”.  Finally, the dash character is replaced with an underscore.
*	The modified feature names are now used as the column variable names for the test and training data measurements
*	The descriptive names: “activity” and “subject” are added as the column name to the activity and subject data sets respectively
*	The measurement, subject, and activity data are combined for both the test data and the training data.  This increases the columns from 561 to 563 for each dataset.
*	The test and training data sets are now combined creating 10,299 rows of data.
*	Find all column variables that have “mean” or “std” in them and keep those columns while removing all other columns with the exception of “activity” and “subject”.  For the columns with “meanFreq”, we will remove them as well.  This now reduces our columns from 563 to 68.
*	Read in the file: activity_labels.txt as this contains a descriptive activity instead of using a numeric value
*	Replace the values in the column for activity with the descriptive activity label name.
*	Rearrange the data frame so that subject is the first column and activity is the second column
*	Read in the library packages: plyr and dplyr to help with rearranging and summarizing
*	Create the tidy data set using the ddplyr command.  We will take the mean average of all the numeric columns and will use the subject and activity as identifiers.  That is, group_by subject and activity.  This reduces the data set to a dimension of 180 x 68
*	Write out the tidy data set to the file: tidy_data.txt.  We use the following syntax to write out the file:  write.table(tidyDataSet, “tidy_data.txt”, row.names=FALSE)

##OUTPUT FILE:
tidy_data.txt will be located in the working directory.

##NOTES:
*	In the tidy data, each numeric value is a aggregated mean based on that subject and activity
*	To read in the tidy_data.txt file, do the following:
read.table(“tidy_data.txt”, header = TRUE)

===================================================================================

