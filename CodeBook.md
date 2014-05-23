#Code Book for the Coursera Getting and Cleaning Data Project 1

##Study Design
The data used where obtained from the following url:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The original data comes from the

Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAccXYZ, fBodyAccJerkXYZ, fBodyGyroXYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.




## The variables

The Test and Training data for all the 30 subjects was combined together with the appropriate subject identifier and the activity code. The original 561- feature vector was further tidied and the average time and frequency domain data for each subject-activity pair is presented. These 68 variables are: (the .mean.XYZ are the averages for the subject-activity pair; and the .sd.XYZ are the corresponding average Standard deviations)


"subject.id"                
"activity.label"           
"tBodyAcc.mean.X"           
"tBodyAcc.mean.Y"          
"tBodyAcc.mean.Z"           
"tBodyAcc.sd.X"            
"tBodyAcc.sd.Y"             
"tBodyAcc.sd.Z"            
"tGravityAcc.mean.X"        
"tGravityAcc.mean.Y"       
"tGravityAcc.mean.Z"        
"tGravityAcc.sd.X"         
"tGravityAcc.sd.Y"          
"tGravityAcc.sd.Z"      		   
"tBodyAccJerk.mean.X"       
"tBodyAccJerk.mean.Y"      
"tBodyAccJerk.mean.Z"       
"tBodyAccJerk.sd.X"        
"tBodyAccJerk.sd.Y"         
"tBodyAccJerk.sd.Z"        
"tBodyGyro.mean.X"          
"tBodyGyro.mean.Y"         
"tBodyGyro.mean.Z"          
"tBodyGyro.sd.X"           
"tBodyGyro.sd.Y"            
"tBodyGyro.sd.Z"          
"tBodyGyroJerk.mean.X"      
"tBodyGyroJerk.mean.Y"     
"tBodyGyroJerk.mean.Z"      
"tBodyGyroJerk.sd.X"       
"tBodyGyroJerk.sd.Y"        
"tBodyGyroJerk.sd.Z"       
"tBodyAccMag.mean"          
"tBodyAccMag.sd"           
"tGravityAccMag.mean"       
"tGravityAccMag.sd"        
"tBodyAccJerkMag.mean"      
"tBodyAccJerkMag.sd"       
"tBodyGyroMag.mean"         
"tBodyGyroMag.sd"          
"tBodyGyroJerkMag.mean"     
"tBodyGyroJerkMag.sd"      
"fBodyAcc.mean.X"           
"fBodyAcc.mean.Y"          
"fBodyAcc.mean.Z"           
"fBodyAcc.sd.X"            
"fBodyAcc.sd.Y"             
"fBodyAcc.sd.Z"            
"fBodyAccJerk.mean.X"       
"fBodyAccJerk.mean.Y"      
"fBodyAccJerk.mean.Z"       
"fBodyAccJerk.sd.X"        
"fBodyAccJerk.sd.Y"         
"fBodyAccJerk.sd.Z"        
"fBodyGyro.mean.X"          
"fBodyGyro.mean.Y"         
"fBodyGyro.mean.Z"          
"fBodyGyro.sd.X"           
"fBodyGyro.sd.Y"            
"fBodyGyro.sd.Z"           
"fBodyAccMag.mean"          
"fBodyAccMag.sd"           
"fBodyBodyAccJerkMag.mean"  
"fBodyBodyAccJerkMag.sd"   
"fBodyBodyGyroMag.mean"     
"fBodyBodyGyroMag.sd"      
"fBodyBodyGyroJerkMag.mean" 
"fBodyBodyGyroJerkMag.sd" 


The dataset includes the following files:
=========================================

- 'README.txt'
- 'CodeBook.md'
- 'run_analysis.R'

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.