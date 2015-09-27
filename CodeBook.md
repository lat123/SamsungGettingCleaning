---
title: "CodeBook - tidydata.txt"
output: html_document
---

# CodeBook - tidydata.txt

## Source
The UCI HAR Dataset is avaiable at: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

---

## Data set info

_The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data._ 

_The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain._ [[The UCI Machine Learning Repository]](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)


---

##Original Files 

* **activity_labels.txt**: data set with the label description of the six activities 
* **y_test.txt** and **y_train.txt**: data set with the id of the activity performed on each observation in the data set for test and training, repesctivately
* **X_test.txt** and **X_train.txt**: data set with the 561 features measured (i.e. variables) on each observation in the test and training, respectivetaly
* **subject_test.txt** and **subject_train.txt**: data set with the id of the subjects (volunteers) that performed the activity on each observation in the test and training, respectivately
* **features.txt**: data set with the name of the 561 features measured (i.e. variables)

---

##Data processing
* Step 1: Combined the data for subject (subject_test.txt), activity performed (y_test.txt set with the activity decription from activity_labels.txt), and features mesured (X_text.txt) into one test data set.
* Step 2: Combined the data for subject (subject_train.txt), activity performed (y_train.txt set with the activity decription from activity_labels.txt), and features mesured (X_train.txt) into one training data set.
* Step 3: Combined the resulting test and training data set into a unique combined data set.
* Step 4: Removed undesirable characters from the features names (features.txt). Capital letters were kept in the variable names to enhance readbility. Abreviations were kept int the names to avoid extremaly long variable names. 
* Step 5: Named the variables (columns) of the combined data set and kept only the variables of interest (i.e. subject, activity, and any measure variable of mean or standard deviation)
* Step 5: Finally, melted the dataset with activity and subject as ID variables and all the other ones as measure variables (i.e. all variables of mean or standard deviation). Then catsted the data with activity and subject broken down by the mean of the different measure variables resulting in a wide tidy data set


---

##Data Dictionary

* **activity**: Name of the activity performed. Text character
* **subject**: ID identifying the volunteer subject. Integer
* **angletBodyAccJerkMean_gravityMean**: Angle between time of body linear acceleration Jerk signal mean and gravity mean. Normalized and bounded within [-1, 1]. Numeric
* **angletBodyAccMean_gravity**: Angle between time of body linear acceleration signal mean and gravity. Normalized and bounded within [-1, 1]. Numeric
* **angletBodyGyroJerkMean_gravityMean**: Angle between time of body rate of rotation Jerk signal mean and gravity mean. Normalized and bounded within [-1, 1]. Numeric
* **angletBodyGyroMean_gravityMean**: Angle between time of body linear rate of rotation mean and gravity mean. Normalized and bounded within [-1, 1]. Numeric
* **angleX_gravityMean**: Angle between X axis and gravity mean. Normalized and bounded within [-1, 1]. Numeric
* **angleY_gravityMean**: Angle between Y axis and gravity mean. Normalized and bounded within [-1, 1]. Numeric
* **angleZ_gravityMean**: Angle between Z axis and gravity mean. Normalized and bounded within [-1, 1]. Numeric
* **fBodyAcc_mean_X**: Frequency of the body linear acceleration signal on X axis - mean. Signal obtained by the accelerometer. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyAcc_mean_Y**: Frequency of the body linear acceleration signal on Y axis - mean. Signal obtained by the accelerometer. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyAcc_mean_Z**: Frequency of the body linear acceleration signal on Z axis - mean. Signal obtained by the accelerometer. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyAcc_meanFreq_X**: Mean frequency of the body linear acceleration signal on X axis - mean. Signal obtained by the accelerometer. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyAcc_meanFreq_Y**: Mean frequency of the body linear acceleration signal on Y axis - mean. Signal obtained by the accelerometer. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyAcc_meanFreq_Z**: Mean frequency of the body linear acceleration signal on Z axis - mean. Signal obtained by the accelerometer. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyAcc_std_X**: Frequency of the body linear acceleration signal on X axis - standard deviation. Signal obtained by the accelerometer. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyAcc_std_Y**: Frequency of the body linear acceleration signal on Y axis - standard deviation. Signal obtained by the accelerometer. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyAcc_std_Z**: Frequency of the body linear acceleration signal on Z axis - standard deviation. Signal obtained by the accelerometer. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyAccJerk_mean_X**: Frequency of the body linear acceleration Jerk signal on X axis - mean. Signal obtained by the accelerometer. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyAccJerk_mean_Y**: Frequency of the body linear acceleration Jerk signal on Y axis - mean. Signal obtained by the accelerometer. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyAccJerk_mean_Z**: Frequency of the body linear acceleration Jerk signal on Z axis - mean. Signal obtained by the accelerometer. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyAccJerk_meanFreq_X**: Mean frequency of the body linear acceleration Jerk signal on X axis - mean. Signal obtained by the accelerometer. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyAccJerk_meanFreq_Y**: Mean frequency of the body linear acceleration Jerk signal on Y axis - mean. Signal obtained by the accelerometer. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyAccJerk_meanFreq_Z**: Mean frequency of the body linear acceleration Jerk signal on Z axis - mean. Signal obtained by the accelerometer. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyAccJerk_std_X**: Frequency of the body linear acceleration Jerk signal on X axis - standard deviation. Signal obtained by the accelerometer. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyAccJerk_std_Y**: Frequency of the body linear acceleration Jerk signal on Y axis - standard deviation. Signal obtained by the accelerometer. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyAccJerk_std_Z**: Frequency of the body linear acceleration Jerk signal on Z axis - standard deviation. Signal obtained by the accelerometer. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyAccMag_mean**: Frequency of the body linear acceleration magnitude signal - mean. Magnitude calculated using the Euclidean norm of the three dimensional signals. Signals obtained by the accelerometer. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyAccMag_meanFreq**: Mean frequency of the body linear acceleration magnitude signal - mean. Magnitude calculated using the Euclidean norm of the three dimensional signals. Signals obtained by the accelerometer. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyAccMag_std**: Frequency of the body linear acceleration magnitude signal - standard deviation. Magnitude calculated using the Euclidean norm of the three dimensional signals. Signals obtained by the accelerometer. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyBodyAccJerkMag_mean**: Frequency of the body linear acceleration magnitude Jerk signal in relation to the body - mean. Magnitude calculated using the Euclidean norm of the three dimensional signals. Signals obtained by the accelerometer. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyBodyAccJerkMag_meanFreq**: Mean frequency of the body linear acceleration magnitude Jerk signal in relation to the body - mean. Magnitude calculated using the Euclidean norm of the three dimensional signals. Signals obtained by the accelerometer. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyBodyAccJerkMag_std**: Frequency of the body linear acceleration magnitude Jerk signal in relation to the body - standard deviation. Magnitude calculated using the Euclidean norm of the three dimensional signals. Signals obtained by the accelerometer. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyBodyGyroJerkMag_mean**: Frequency of the body rate of rotation magnitude Jerk signal in relation to the body - mean. Magnitude calculated using the Euclidean norm of the three dimensional signals. Signals obtained by the gyroscope. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyBodyGyroJerkMag_meanFreq**: Mean frequency of the body rate of rotation magnitude Jerk signal in relation to the body - mean. Magnitude calculated using the Euclidean norm of the three dimensional signals. Signals obtained by the gyroscope. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyBodyGyroJerkMag_std**: Frequency of the body rate of rotation magnitude Jerk signal in relation to the body - standard deviation. Magnitude calculated using the Euclidean norm of the three dimensional signals. Signals obtained by the gyroscope. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyBodyGyroMag_mean**: Frequency of the body rate of rotation magnitude signal in relation to the body - mean. Magnitude calculated using the Euclidean norm of the three dimensional signals. Signals obtained by the gyroscope. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyBodyGyroMag_meanFreq**: Mean frequency of the body rate of rotation magnitude signal in relation to the body - mean. Magnitude calculated using the Euclidean norm of the three dimensional signals. Signals obtained by the gyroscope. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyBodyGyroMag_std**: Frequency of the body rate of rotation magnitude signal in relation to the body - standard deviation. Magnitude calculated using the Euclidean norm of the three dimensional signals. Signals obtained by the gyroscope. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyGyro_mean_X**: Frequency of the body rate of rotation signal on X axis - mean. Signal obtained by the gyroscope. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyGyro_mean_Y**: Frequency of the body rate of rotation signal on Y axis - mean. Signal obtained by the gyroscope. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyGyro_mean_Z**: Frequency of the body rate of rotation signal on Z axis - mean. Signal obtained by the gyroscope. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyGyro_meanFreq_X**: Mean frequency of the body rate of rotation signal on X axis - mean. Signal obtained by the gyroscope. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyGyro_meanFreq_Y**: Mean frequency of the body rate of rotation signal on Y axis - mean. Signal obtained by the gyroscope. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyGyro_meanFreq_Z**: Mean frequency of the body rate of rotation signal on Z axis - mean. Signal obtained by the gyroscope. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyGyro_std_X**: Frequency of the body rate of rotation signal on X axis - standard deviation. Signal obtained by the gyroscope. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyGyro_std_Y**: Frequency of the body rate of rotation signal on Y axis - standard deviation. Signal obtained by the gyroscope. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **fBodyGyro_std_Z**: Frequency of the body rate of rotation signal on Z axis - standard deviation. Signal obtained by the gyroscope. Frequency obtained by Fast Fourier Transformation (FFT). Normalized and bounded within [-1, 1]. Numeric
* **tBodyAcc_mean_X**: Time of the body linear acceleration signal on X axis - mean. Signal obtained by the accelerometer. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tBodyAcc_mean_Y**: Time of the body linear acceleration signal on Y axis - mean. Signal obtained by the accelerometer. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tBodyAcc_mean_Z**: Time of the body linear acceleration signal on Z axis - mean. Signal obtained by the accelerometer. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tBodyAcc_std_X**: Time of the body linear acceleration signal on X axis - standard deviation. Signal obtained by the accelerometer. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tBodyAcc_std_Y**: Time of the body linear acceleration signal on Y axis - standard deviation. Signal obtained by the accelerometer. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tBodyAcc_std_Z**: Time of the body linear acceleration signal on Z axis - standard deviation. Signal obtained by the accelerometer. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tBodyAccJerk_mean_X**: Time of the body linear acceleration Jerk signal on X axis - mean. Signal obtained by the accelerometer. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tBodyAccJerk_mean_Y**: Time of the body linear acceleration Jerk signal on Y axis - mean. Signal obtained by the accelerometer. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tBodyAccJerk_mean_Z**: Time of the body linear acceleration Jerk signal on Z axis - mean. Signal obtained by the accelerometer. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tBodyAccJerk_std_X**: Time of the body linear acceleration Jerk signal on X axis - standard deviation. Signal obtained by the accelerometer. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tBodyAccJerk_std_Y**: Time of the body linear acceleration Jerk signal on Y axis - standard deviation. Signal obtained by the accelerometer. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tBodyAccJerk_std_Z**: Time of the body linear acceleration Jerk signal on Z axis - standard deviation. Signal obtained by the accelerometer. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tBodyAccJerkMag_mean**: Time of the body linear acceleration magnitude Jerk signal - mean. Magnitude calculated using the Euclidean norm of the three dimensional signals. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tBodyAccJerkMag_std**: Time of the body linear acceleration magnitude Jerk signal - standard deviation. Magnitude calculated using the Euclidean norm of the three dimensional signals. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tBodyAccMag_mean**: Time of the body linear acceleration magnitude signal - mean. Magnitude calculated using the Euclidean norm of the three dimensional signals. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tBodyAccMag_std**: Time of the body linear acceleration magnitude signal - standard deviation. Magnitude calculated using the Euclidean norm of the three dimensional signals. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tBodyGyro_mean_X**: Time of the body rate of rotation signal on X axis - mean. Signal obtained by the gyroscope. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tBodyGyro_mean_Y**: Time of the body rate of rotation signal on Y axis - mean. Signal obtained by the gyroscope. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tBodyGyro_mean_Z**: Time of the body rate of rotation signal on Z axis - mean. Signal obtained by the gyroscope. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tBodyGyro_std_X**: Time of the body rate of rotation signal on X axis - standard deviation. Signal obtained by the gyroscope. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tBodyGyro_std_Y**: Time of the body rate of rotation signal on Y axis - standard deviation. Signal obtained by the gyroscope. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tBodyGyro_std_Z**: Time of the body rate of rotation signal on Z axis - standard deviation. Signal obtained by the gyroscope. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tBodyGyroJerk_mean_X**: Time of the body rate of rotation Jerk signal on X axis - mean. Signal obtained by the gyroscope. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tBodyGyroJerk_mean_Y**: Time of the body rate of rotation Jerk signal on Y axis - mean. Signal obtained by the gyroscope. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tBodyGyroJerk_mean_Z**: Time of the body rate of rotation Jerk signal on Z axis - mean. Signal obtained by the gyroscope. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tBodyGyroJerk_std_X**: Time of the body rate of rotation Jerk signal on X axis - standard deviation. Signal obtained by the gyroscope. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tBodyGyroJerk_std_Y**: Time of the body rate of rotation Jerk signal on Y axis - standard deviation. Signal obtained by the gyroscope. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tBodyGyroJerk_std_Z**: Time of the body rate of rotation Jerk signal on Z axis - standard deviation. Signal obtained by the gyroscope. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tBodyGyroJerkMag_mean**: Time of the body rate of rotation magnitude Jerk signal - mean. Magnitude calculated using the Euclidean norm of the three dimensional signals. Signals obtained by the gyroscope. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tBodyGyroJerkMag_std**: Time of the body rate of rotation magnitude Jerk signal - standard deviation. Magnitude calculated using the Euclidean norm of the three dimensional signals. Signals obtained by the gyroscope. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tBodyGyroMag_mean**: Time of the body rate of rotation signal on X axis - mean. Signal obtained by the gyroscope. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tBodyGyroMag_std**: Time of the body rate of rotation signal on Y axis - mean. Signal obtained by the gyroscope. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tGravityAcc_mean_X**: Time of total linear acceleration signal on X axis - mean. Signal obtained by the accelerometer. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tGravityAcc_mean_Y**: Time of total linear acceleration signal on Y axis - mean. Signal obtained by the accelerometer. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tGravityAcc_mean_Z**: Time of total linear acceleration signal on Z axis - mean. Signal obtained by the accelerometer. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tGravityAcc_std_X**: Time of total linear acceleration signal on X axis - standard deviation. Signal obtained by the accelerometer. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tGravityAcc_std_Y**: Time of total linear acceleration signal on Y axis - standard deviation. Signal obtained by the accelerometer. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tGravityAcc_std_Z**: Time of total linear acceleration signal on Z axis - standard deviation. Signal obtained by the accelerometer. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tGravityAccMag_mean**: Time of total linear acceleration magnitude signal - mean. Magnitude calculated using the Euclidean norm of the three dimensional signals. Signals obtained by the accelerometer. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric
* **tGravityAccMag_std**: Time of total linear acceleration magnitude signal - standard deviation. Magnitude calculated using the Euclidean norm of the three dimensional signals. Signals obtained by the accelerometer. Time captured at a constant rate of 50 Hz. Normalized and bounded within [-1, 1]. Numeric

