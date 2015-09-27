---
title: "README"
output: html_document
---

# README

## Getting and Cleaning Data: Course Project


###Introduction 

This repository contains the Coursera - Getting and Cleaning data course project. 

---
 
###Purpose  

Collect, work with, and clean a data set. 

---

### Data 

The "Human Activity Recognition Using Smartphones Data Set" refers to experiments carried out by 30 volunteers (subjects), each one performing 6 activities (walking, walking upstairs, walking downstairs, sitting, standing, laying) while wearing a smartphone (Samsung Galaxy S II) on the waist. 

Using the smartphone sensor signals (accelerometer and gyroscope), 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were obtained - producing 561 time and frequency variable-features. The data was then randomly partitioned into two sets: training and test data. 

* The experiment full description is available at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
* The dataset is available at: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

---

###Results
The **run_analysis.R** script concatenates each of the data sets (i.e test and training data set) with their respective labels, subjects, and the activity description. Then, it combines the two data sets and gives appropriate names for the columns (i.e. variables). Following the instruction, the script extracts the measurement columns for mean and standard deviation. Finally, the script creates a tidy data set with the average of each variable for each activity and each subject. 

Prerequisites for the script:

* The UCI HAR Dataset must be extracted
* The UCI HAR Dataset must be available in a directory called "UCI HAR Dataset"


---

###The Code Book
The **CodeBook.md** file explains the transformations performed and the resulting data and variables.




---
