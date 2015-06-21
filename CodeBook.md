#**Getting and Cleaning Data Project**
CODEBOOK
getdata-015
(E.J.Carr)

###This codebook defines the tidy data set that is the output of the run_analysis.R program.  This program takes the untidy data on measurements and sensors about wearable monitoring Samsung Smartphone.  The initial raw data had 561 columns and we extracted only the mean and standard deviation measurements to reduce this to 66 for both the test and training data.  We added two more for the subject and the activity.  We then tidy the data up and created aggregated mean averages for each of the mean and standard deviation numbers.  Therefore, you will see description here for each field as saying that it is an aggregated mean.
The format of the codebook will be as follows:

* Each variable will be placed on its own line.  The name of the variable as it is called in the tidy_data.txt file will be listed first.  It will be in double quotes.
* Optionally, there will be the original name of the variable (as it may have been modified) that will appear as the second field in parenthesis.  If the field was not modified then it will be missing.
* The third field will be the type of data that it holds.  For example, character, string, or numeric.
* The fourth field on the line will be the possible values or range of values that it could hold.  This is optional
* The fifth field is the description of the variable

 "subject"                		integer		1-30	Identifies the person/subject that did the  test
 "activity"                  	string				List of six possible activities includes:
													WALKING
													WALKING_DOWNSTAIRS
													WALKING_UPSTAIRS
													LAYING
													SITTING
													STANDING
"tBodyAcc_mean_X"	 (tBodyAcc-mean()-X )		numeric	Aggregated mean
 "tBodyAcc_mean_Y"	 (tBodyAcc-mean()-Y)		numeric	Aggregated mean
"tBodyAcc_mean_Z”	 (tBodyAcc-mean()-Z)		numeric	Aggregated mean
 "tBodyAcc_std_X"	(tBodyAcc-std()-X)			numeric	Aggregated mean
 "tBodyAcc_std_Y"	(tBodyAcc_std()-Y)			numeric	Aggregated mean
"tBodyAcc_std_Z"  	(tBodyAcc-std()-Z)   		numeric	Aggregated mean
"tGravityAcc_mean_X"	(tGravityAcc-mean()-X)	numeric	Aggregated mean
"tGravityAcc_mean_Y" 	(tGravityAcc-mean()-Y)	numeric	Aggregated mean
"tGravityAcc_mean_Z"	(tGravityAcc-mean()-Z)	numeric	Aggregated mean
"tGravityAcc_std_X"	(tGravityAcc-std()-X)		numeric	Aggregated mean
 "tGravityAcc_std_Y"	 ( tGravityAcc-std()-Y)	numeric	Agnumeric	Aggregated mean	
"tBodyAccJerk_mean_X”  (tBodyAccJerk-mean()-X)	numeric	Aggregated mean
"tBodyAccJerk_mean_Y” (tBodyAccJerk-mean()-Y) 	numeric	Aggregated mean
"tBodyAccJerk_mean_Z”  (tBodyAccJerk-mean()-Z)	numeric	Aggregated mean
"tBodyAccJerk_std_X" 	(tBodyAccJerk-std()-X)	numeric	Aggregated mean
 "tBodyAccJerk_std_Y" 	(tBodyAccJerk-std()-Y)	numeric	Aggregated mean
"tBodyAccJerk_std_Z"	(tBodyAccJerk-std()-Z)	numeric	Aggregated mean
"tBodyGyro_mean_X" 	 (tBodyGyro-mean()-X)		numeric	Aggregated mean
"tBodyGyro_mean_Y" 	(tBodyGyro-mean()-Y) 		numeric	Aggregated mean
"tBodyGyro_mean_Z" 	(tBodyGyro-mean()-Z)		numeric	Aggregated mean
"tBodyGyro_std_X"  	(tBodyGyro-std()-X)			numeric	Aggregated mean
"tBodyGyro_std_Y" 	(tBodyGyro-std()-Y)			numeric	Aggregated mean
"tBodyGyro_std_Z”	 (tBodyGyro-std()-Z) 		numeric	Aggregated mean
 "tBodyGyroJerk_mean_X" (tBodyGyroJerk-mean()-X) numeric	Aggregated mean
"tBodyGyroJerk_mean_Y"  (tBodyGyroJerk-mean()-Y) numeric	Aggregated mean
"tBodyGyroJerk_mean_Z"  (tBodyGyroJerk-mean()-Z) numeric	Aggregated mean
 "tBodyGyroJerk_std_X"  (tBodyGyroJerk-std()-X) numeric	Aggregated mean
 "tBodyGyroJerk_std_Y”  (tBodyGyroJerk-std()-Y) numeric	Aggregated mean
"tBodyGyroJerk_std_Z"   (tBodyGyroJerk-mean()-Z) numeric	Aggregated mean
"tBodyAccMag_mean" 	 (tBodyAccMag-mean())		numeric	Aggregated mean
"tBodyAccMag_std"	 (tBodyAccMag-std())		numeric	Aggregated mean
"tGravityAccMag_mean"   (tGravityAccMag-mean())	numeric	Aggregated mean
 "tGravityAccMag_std"      (tGravityAccMag-std()) numeric	Aggregated mean
"tBodyAccJerkMag_mean"   (tBodyAccJerkMag-mean()) numeric	Aggregated mean
"tBodyAccJerkMag_std"      (tBodyAccJerkMag-std()) numeric	Aggregated mean
 "tBodyGyroMag_mean"        (tBodyGyroMag-mean())  numeric	Aggregated mean
 "tBodyGyroMag_std"         (tBodyGyroMag-std())	numeric	Aggregated mean
 "tBodyGyroJerkMag_mean"     (tBodyGyroJerkMag-mean()) numeric	Aggregated mean
"tBodyGyroJerkMag_std"     (tBodyGyroJerkMag-std())	numeric	Aggregated mean
"fBodyAcc_mean_X"          (tBodyAcc-mean()-X) 	 	numeric	Aggregated mean
 "fBodyAcc_mean_Y"         (tBodyAcc-mean()-Y) 		numeric	Aggregated mean
"fBodyAcc_mean_Z"         (tBodyAcc-mean()-Z) 		numeric	Aggregated mean
"fBodyAcc_std_X"            (tBodyAcc-std()-X) 		numeric	Aggregated mean
"fBodyAcc_std_Y"            (tBodyAcc-std()-Y) 		numeric	Aggregated mean
"fBodyAcc_std_Z"	 	(tBodyAcc-std()-Z) 			numeric	Aggregated mean
 "fBodyAccJerk_mean_X"  (fBodyAccJerk-mean()-X) 	numeric	Aggregated mean
"fBodyAccJerk_mean_Y"    (fBodyAccJerk-mean()-Y) 	numeric	Aggregated mean
"fBodyAccJerk_mean_Z"    (fBodyAccJerk-mean()-Z) 	numeric	Aggregated mean
"fBodyAccJerk_std_X"        (fBodyAccJerk-std()-X) 	numeric	Aggregated mean
"fBodyAccJerk_std_Y"       (fBodyAccJerk-std())-Y) 	numeric	Aggregated mean
"fBodyAccJerk_std_Z"       (fBodyAccJerk-std()-Z) 	numeric	Aggregated mean
 "fBodyGyro_mean_X"     (fBodyGyro-mean()-X) 		numeric	Aggregated mean
"fBodyGyro_mean_Y"     (fBodyGyro-mean()-Y) 		numeric	Aggregated mean
"fBodyGyro_mean_Z" 	(fBodyGyro-mean()-Z) 			numeric	Aggregated mean
"fBodyGyro_std_X"         (fBodyGyro-std()-X) 		numeric	Aggregated mean
"fBodyGyro_std_Y"  	(fBodyGyro-std()-Y) 			numeric	Aggregated mean
"fBodyGyro_std_Z" 	(fBodyGyro-std()-Z) 			numeric	Aggregated mean
"fBodyAccMag_mean" 	 (fBodyAccMag—mean())			numeric	Aggregated mean
"fBodyAccMag_std" 	(fBodyAccMag_std())				numeric	Aggregated mean
 "fBodyBodyAccJerkMag_mean"   (fBodyBodyAcclertMag-mean())  numeric	Aggregated mean
"fBodyBodyAccJerkMag_std"   (fBodyBodyAccJertMag-std())	numeric	Aggregated mean
"fBodyBodyGyroMag_mean"   (fBodyBodyGyroMag-mean())	numeric	Aggregated mean
"fBodyBodyGyroMag_std"     (fBodyBodyGyroMag-std())		numeric	Aggregated mean
"fBodyBodyGyroJerkMag_mean" (fBodyBodyGyroJerkMag-mean())  numeric	Aggregated mean
"fBodyBodyGyroJerkMag_std"	(fBodyBodyGyroJerkMag-std())	   numeric	Aggregated mean

