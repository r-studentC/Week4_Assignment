### Study Design
The data was taken from the "Human Activity Recognition Using Smartphones Data Set"
provided with the assignment. It is a database built from the recordings of 30 subjects 
performing activities of daily living (ADL) while carrying a waist-mounted smartphone with 
embedded inertial sensors.

Please note the following excerpt of the file "features_info" from the 
original data set to illustrate the units/values 

"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals)."


### Subjects and Activities
30 subjects undertook 6 different activities during which the values of the accelerometers were recorded.
The subjects remain anonymous and are referred to by their numbers (1-30). The activities are as follows:
1. "WALKING"
2. "WALKING_UPSTAIRS"
3. "WALKING_DOWNSTAIRS"
4. "SITTING"
5. "STANDING"
6. "LAYING"


### Summary Choices
The tidy data set holds the average of each std() and mean() variable of the original data set(s)
grouped by activity and subject


### Code Book -> The columns/variables of the tidy data set
01. "activity" -> as described above
02. "subject" -> as described above
03. "tBodyAcc-mean()-X"
04. "tBodyAcc-mean()-Y"
05. "tBodyAcc-mean()-Z"
06. "tGravityAcc-mean()-X"
07. "tGravityAcc-mean()-Y"
08. "tGravityAcc-mean()-Z"       
09. "tBodyAccJerk-mean()-X"       
10. "tBodyAccJerk-mean()-Y"       
11. "tBodyAccJerk-mean()-Z"       
12. "tBodyGyro-mean()-X"         
13. "tBodyGyro-mean()-Y"          
14. "tBodyGyro-mean()-Z"          
15. "tBodyGyroJerk-mean()-X"      
16. "tBodyGyroJerk-mean()-Y"     
17. "tBodyGyroJerk-mean()-Z"      
18. "tBodyAccMag-mean()"          
19. "tGravityAccMag-mean()"       
20. "tBodyAccJerkMag-mean()"     
21. "tBodyGyroMag-mean()"         
22. "tBodyGyroJerkMag-mean()"     
23. "fBodyAcc-mean()-X"           
24. "fBodyAcc-mean()-Y"          
25. "fBodyAcc-mean()-Z"           
26. "fBodyAccJerk-mean()-X"       
27. "fBodyAccJerk-mean()-Y"       
28. "fBodyAccJerk-mean()-Z"      
29. "fBodyGyro-mean()-X"          
30. "fBodyGyro-mean()-Y"          
31. "fBodyGyro-mean()-Z"          
32. "fBodyAccMag-mean()"         
33. "fBodyBodyAccJerkMag-mean()"  
34. "fBodyBodyGyroMag-mean()"     
35. "fBodyBodyGyroJerkMag-mean()" 
36. "tBodyAcc-std()-X"           
37. "tBodyAcc-std()-Y"            
38. "tBodyAcc-std()-Z"            
39. "tGravityAcc-std()-X"         
40. "tGravityAcc-std()-Y"        
41. "tGravityAcc-std()-Z"         
42. "tBodyAccJerk-std()-X"        
43. "tBodyAccJerk-std()-Y"        
44. "tBodyAccJerk-std()-Z"       
45. "tBodyGyro-std()-X"           
46. "tBodyGyro-std()-Y"           
47. "tBodyGyro-std()-Z"           
48. "tBodyGyroJerk-std()-X"      
49. "tBodyGyroJerk-std()-Y"       
50. "tBodyGyroJerk-std()-Z"       
51. "tBodyAccMag-std()"           
52. "tGravityAccMag-std()"       
53. "tBodyAccJerkMag-std()"       
54. "tBodyGyroMag-std()"          
55. "tBodyGyroJerkMag-std()"      
56. "fBodyAcc-std()-X"           
57. "fBodyAcc-std()-Y"            
58. "fBodyAcc-std()-Z"            
59. "fBodyAccJerk-std()-X"        
60. "fBodyAccJerk-std()-Y"       
61. "fBodyAccJerk-std()-Z"        
62. "fBodyGyro-std()-X"           
63. "fBodyGyro-std()-Y"           
64. "fBodyGyro-std()-Z"          
65. "fBodyAccMag-std()"           
66. "fBodyBodyAccJerkMag-std()"   
67. "fBodyBodyGyroMag-std()"      
68. "fBodyBodyGyroJerkMag-std()" 
