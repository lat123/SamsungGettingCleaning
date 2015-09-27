#Getting and Cleaning Data Course Project

#Reads activity label data frame and sets all data as lowercase
setwd("./UCI HAR Dataset")
activitylabel <- read.table("activity_labels.txt")
activitylabel[,2] <- tolower(activitylabel[,2])

#Test set
#Reads label data frame (y file) and sets its activity id [,1] to activity label
#Reads subject and data data frames (subject and x files)
#Combines activity (as label), subject id, and data
setwd("./test")
testlabel <- read.table("y_test.txt")
testlabel[,1] <- activitylabel[testlabel[,1],2]
testsubject <- read.table("subject_test.txt")
testdata <- read.table("X_test.txt")
test <- cbind(testlabel, testsubject, testdata)

#Repeats procedure for train set
setwd("../train")
trainlabel <- read.table("y_train.txt")
trainlabel[,1] <- activitylabel[trainlabel[,1],2]
trainsubject <- read.table("subject_train.txt")
traindata <- read.table("X_train.txt")
train <- cbind(trainlabel, trainsubject, traindata)

#Combines test and train data in one data frame
combineddata <- rbind(test, train)

#Reads variables names (features file) and removes unwanted characters
#Keeps capital letters for enhanced readbility - see code book for additional info
#Transpose the variables to have them on columns, and adds "activity" and 
#"subject" as the 2 initial columns
setwd("..")
variables <- read.table("features.txt")
variables[,2] <- gsub(",|\\()-|-", "_", variables[,2])
variables[,2] <- gsub("\\(|)", "", variables[,2])
variables <- cbind( c(1,"activity"), c(2,"subject"), t(variables))

#Sets names of the combined data frame using the variables set [2,]
#Checks columns with desired names (i.e. activity, subject, mean, and std),
#ignoring case (capital letters were kept for readbility)
#Sets the combined data frame with only the desired columns
names(combineddata) = variables[2,]
indexcol <- grep("activity|subject|mean|std", variables[2,], ignore.case = TRUE)
combineddata <- combineddata[,indexcol]

#Melts data with activity and subject as ID variables and all other 
#all other columns as measure variables
#Casts data with activity and subject broken down by the mean of the 
#different measure variables resulting in a wide tidy data set
#According to instructions, "either  wide or a long form of the data 
#is acceptable if it meets the tidy data principles 
library(reshape2)
meltdata <- melt(combineddata, id = c("activity", "subject"))
tidydata <- dcast(meltdata, activity + subject ~ variable, mean )

#Writes data set in a txt file
write.table(tidydata, file = "tidydata.txt", row.names = FALSE )

