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

1. "subject"                integer		1-30		Identifies the person/subject that did the  test
2. "activity"                  string				List of six possible activities includes:
													WALKING
													WALKING_DOWNSTAIRS
													WALKING_UPSTAIRS
													LAYING
													SITTING
													STANDING
3. "tBodyAcc_mean_X"	 (tBodyAcc-mean()-X )		numeric	Aggregated mean
4. "tBodyAcc_mean_Y"	 (tBodyAcc-mean()-Y)		numeric	Aggregated mean
5. "tBodyAcc_mean_Z”	 (tBodyAcc-mean()-Z)		numeric	Aggregated mean
6. "tBodyAcc_std_X"	(tBodyAcc-std()-X)			numeric	Aggregated mean
7. "tBodyAcc_std_Y"	(tBodyAcc_std()-Y)			numeric	Aggregated mean
8. "tBodyAcc_std_Z"  	(tBodyAcc-std()-Z)   		numeric	Aggregated mean
9. "tGravityAcc_mean_X"	(tGravityAcc-mean()-X)	numeric	Aggregated mean
10."tGravityAcc_mean_Y" 	(tGravityAcc-mean()-Y)	numeric	Aggregated mean
11. "tGravityAcc_mean_Z"	(tGravityAcc-mean()-Z)	numeric	Aggregated mean
12. "tGravityAcc_std_X"	(tGravityAcc-std()-X)		numeric	Aggregated mean
13.  "tGravityAcc_std_Y"	 ( tGravityAcc-std()-Y)	numeric	Aggregated mean	
14.  "tGravityAcc_std_Z" (tGravityAcc-std()-Z		numeric Aggregated mean
15. "tBodyAccJerk_mean_X”  (tBodyAccJerk-mean()-X)	numeric	Aggregated mean
16. "tBodyAccJerk_mean_Y” (tBodyAccJerk-mean()-Y) 	numeric	Aggregated mean
17. "tBodyAccJerk_mean_Z”  (tBodyAccJerk-mean()-Z)	numeric	Aggregated mean
18. "tBodyAccJerk_std_X" 	(tBodyAccJerk-std()-X)	numeric	Aggregated mean
19.  "tBodyAccJerk_std_Y" 	(tBodyAccJerk-std()-Y)	numeric	Aggregated mean
20. "tBodyAccJerk_std_Z"	(tBodyAccJerk-std()-Z)	numeric	Aggregated mean
21. "tBodyGyro_mean_X" 	 (tBodyGyro-mean()-X)		numeric	Aggregated mean
22. "tBodyGyro_mean_Y" 	(tBodyGyro-mean()-Y) 		numeric	Aggregated mean
23. "tBodyGyro_mean_Z" 	(tBodyGyro-mean()-Z)		numeric	Aggregated mean
24. "tBodyGyro_std_X"  	(tBodyGyro-std()-X)			numeric	Aggregated mean
25. "tBodyGyro_std_Y" 	(tBodyGyro-std()-Y)			numeric	Aggregated mean
26. "tBodyGyro_std_Z”	 (tBodyGyro-std()-Z) 		numeric	Aggregated mean
27. "tBodyGyroJerk_mean_X" (tBodyGyroJerk-mean()-X) numeric	Aggregated mean
28. "tBodyGyroJerk_mean_Y"  (tBodyGyroJerk-mean()-Y) numeric	Aggregated mean
29. "tBodyGyroJerk_mean_Z"  (tBodyGyroJerk-mean()-Z) numeric	Aggregated mean
30. "tBodyGyroJerk_std_X"  (tBodyGyroJerk-std()-X) numeric	Aggregated mean
31. "tBodyGyroJerk_std_Y”  (tBodyGyroJerk-std()-Y) numeric	Aggregated mean
32. "tBodyGyroJerk_std_Z"   (tBodyGyroJerk-mean()-Z) numeric	Aggregated mean
33. "tBodyAccMag_mean" 	 (tBodyAccMag-mean())		numeric	Aggregated mean
34. "tBodyAccMag_std"	 (tBodyAccMag-std())		numeric	Aggregated mean
35. "tGravityAccMag_mean"   (tGravityAccMag-mean())	numeric	Aggregated mean
36. "tGravityAccMag_std"      (tGravityAccMag-std()) numeric	Aggregated mean
37. "tBodyAccJerkMag_mean"   (tBodyAccJerkMag-mean()) numeric	Aggregated mean
38. "tBodyAccJerkMag_std"      (tBodyAccJerkMag-std()) numeric	Aggregated mean
39. "tBodyGyroMag_mean"        (tBodyGyroMag-mean())  numeric	Aggregated mean
40. "tBodyGyroMag_std"         (tBodyGyroMag-std())	numeric	Aggregated mean
41. "tBodyGyroJerkMag_mean"     (tBodyGyroJerkMag-mean()) numeric	Aggregated mean
42. "tBodyGyroJerkMag_std"     (tBodyGyroJerkMag-std())	numeric	Aggregated mean
43. "fBodyAcc_mean_X"          (tBodyAcc-mean()-X) 	 	numeric	Aggregated mean
44. "fBodyAcc_mean_Y"         (tBodyAcc-mean()-Y) 		numeric	Aggregated mean
45. "fBodyAcc_mean_Z"         (tBodyAcc-mean()-Z) 		numeric	Aggregated mean
46. "fBodyAcc_std_X"            (tBodyAcc-std()-X) 		numeric	Aggregated mean
47. "fBodyAcc_std_Y"            (tBodyAcc-std()-Y) 		numeric	Aggregated mean
48. "fBodyAcc_std_Z"	 	(tBodyAcc-std()-Z) 			numeric	Aggregated mean
49.  "fBodyAccJerk_mean_X"  (fBodyAccJerk-mean()-X) 	numeric	Aggregated mean
50. "fBodyAccJerk_mean_Y"    (fBodyAccJerk-mean()-Y) 	numeric	Aggregated mean
51. "fBodyAccJerk_mean_Z"    (fBodyAccJerk-mean()-Z) 	numeric	Aggregated mean
52. "fBodyAccJerk_std_X"        (fBodyAccJerk-std()-X) 	numeric	Aggregated mean
53. "fBodyAccJerk_std_Y"       (fBodyAccJerk-std())-Y) 	numeric	Aggregated mean
54. "fBodyAccJerk_std_Z"       (fBodyAccJerk-std()-Z) 	numeric	Aggregated mean
55. "fBodyGyro_mean_X"     (fBodyGyro-mean()-X) 		numeric	Aggregated mean
56. "fBodyGyro_mean_Y"     (fBodyGyro-mean()-Y) 		numeric	Aggregated mean
57. "fBodyGyro_mean_Z" 	(fBodyGyro-mean()-Z) 			numeric	Aggregated mean
58. "fBodyGyro_std_X"         (fBodyGyro-std()-X) 		numeric	Aggregated mean
59. "fBodyGyro_std_Y"  	(fBodyGyro-std()-Y) 			numeric	Aggregated mean
60  "fBodyGyro_std_Z" 	(fBodyGyro-std()-Z) 			numeric	Aggregated mean
61. "fBodyAccMag_mean" 	 (fBodyAccMag—mean())			numeric	Aggregated mean
62. "fBodyAccMag_std" 	(fBodyAccMag_std())				numeric	Aggregated mean
63. "fBodyBodyAccJerkMag_mean"   (fBodyBodyAcclertMag-mean())  numeric	Aggregated mean
64. "fBodyBodyAccJerkMag_std"   (fBodyBodyAccJertMag-std())	numeric	Aggregated mean
65. "fBodyBodyGyroMag_mean"   (fBodyBodyGyroMag-mean())	numeric	Aggregated mean
66. "fBodyBodyGyroMag_std"     (fBodyBodyGyroMag-std())		numeric	Aggregated mean
67. "fBodyBodyGyroJerkMag_mean" (fBodyBodyGyroJerkMag-mean())  numeric	Aggregated mean
68. "fBodyBodyGyroJerkMag_std"	(fBodyBodyGyroJerkMag-std())	   numeric	Aggregated mean

