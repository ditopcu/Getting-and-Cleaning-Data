# Coursera Data Science Specialization  - Getting and Cleaning Data Course Week 4 Assignment
# Script by Deniz Topcu
#
#
#

# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


library(dplyr)
library(reshape2)



#############################################################
#                                                           #
#                   Main functions                        #
#                                                           #
############################################################




# 1.
combine.datasets <- function() {
  
  
  # 1. Merges the training and the test sets to create one data set.
  print("1. Merging datasets")
  
  dftest<- read.dataset (setname = "test", "X_test.txt", "y_test.txt", "subject_test.txt" )
  
  dftrain<- read.dataset (setname = "train", "X_train.txt","y_train.txt", "subject_train.txt")
  
  ds <-bind_rows(dftest, dftrain)
  
  ds
  
  
  
}


# 2. 
extract.mean.sd <-function (ds) {
  
  print("2. EXtracting related measurments: ...means() and ...std()")
  
  # 2. Extracts only the measurements on the mean and standard deviation for each measurement.
  
  ds %>%
    #select(setname,activity, subject, contains("mean.."), contains("std..") )
    select( subject, activities, contains("mean()"), contains("std()") )
  
}

# 3.
name.activity <-function(ds){
  
  print("3. Name activity data")
  
  # 3. Uses descriptive activity names to name the activities in the data set
  
  act.list <- getactivity()
  
  ds %>%
    mutate(activities= act.list[activities])
}

# 4.
create.descriptive.names <- function(ds) {
  
  print("4. Replace labels with descriptive ones ")
  # 4. Appropriately labels the data set with descriptive variable names.
  
  
  
  names(ds) <-variable.formatter (names(ds)) 
 
  ds
  
}

#5.  
tidy.data <- function(ds) {
  
  #5. From the data set in step 4, creates a second, independent tidy data set with the average 
  # of each variable for each activity and each subject.
  
  #first solution. Now obsolute!!!
  
  #melt(ds,id.vars = c("activities", "subject")) %>%
  #  group_by( subject, activities, variable) %>%  
  #  summarize_each(funs(mean))
  
  melt(ds,id.vars = c("subject", "activities")) %>%
    dcast(subject + activities ~ variable, mean)
  
  
  
  
}




#############################################################
#                                                           #
#                   Helper functions                        #
#                                                           #
############################################################

# 
# variable.formatter()
#
# Helper function to replace feature names
# using consecutive gsub() functions to make labels
# Not so clever but functional !!!
# Piping will be good

variable.formatter <- function (variables)  {
  
  
  #remove feature numbers
  a00<-gsub("^[0-9]*", "", variables)
  
  #lowercase everthing and remove all special characters
  a0<-tolower(gsub("[[:punct:]]", "", a00 ))
  
  
  #extend short names
  a1<-gsub("^t", "time", a0) 
  a2<-gsub("^f", "frequency", a1)
  
  
  a3<-gsub("std()", ".SD", a2)
  a4<-gsub("mean()", ".Mean", a3)
  
  a5<-gsub("bodybody", ".Body", a4)
  a6<-gsub("body", ".Body", a5)
  
  
  a7<-gsub("gravity", ".Gravity", a6)
  a8<-gsub("jerk", ".Jerk", a7)
  
  
  a9<-gsub("acc", ".Accelerometer", a8)
  a10<-gsub("gyro", ".Gyroscope", a9)
  a11<-gsub("mag", ".Magnitude", a10)
  
  #label X Y Z axis
  a12<-gsub("x$", ".X", a11)
  a13<-gsub("y$", ".Y", a12)
  a14<-gsub("z$", ".Z", a13)
  
  
  a14
  
}

# 
# read.dataset()
#
# Helper function to read data files 

read.dataset <- function ( setname = "test" , filenameX = "X_test.txt", filenameY ="y_test.txt", filenameS ="subject_test.txt") {
  
  print("    Reading Files ")
  
  
  #Read set x value
  print("     Reading file: X")
  tx <-tbl_df( read.table(filenameX))
    
  colnames(tx)<- getfeatures()
  
  #Read set y value
  print("     Reading file: Activities")
  ty <- tbl_df( read.table(filenameY, col.names = "activities")) 
  
  #df<- bind_cols(tx,ty)
  #df
  
  print("     Reading file: Subject")
  #Read set subject value
  ts <- tbl_df( read.table(filenameS, col.names = "subject")) 

  print("     Binding columns")
  df<- bind_cols(tx,ty,ts) %>%
      mutate(set.name = setname)
  df
  
  
}


# 
# getactivity()
#
# Helper function to get activity labels 

getactivity <-function(activityfile ="activity_labels.txt"){
  
  print("     Saving Activities")
  act <- read.table(activityfile, col.names = c("id", "activity") ,stringsAsFactors = FALSE)[,2]
    

  act
  
}


# 
# getfeatures()
#
# Helper function to get feature names

getfeatures <- function(featurefile = "features.txt") {
  
  print("     Saving Features")
  ds<- read.table(featurefile, col.names = c("id", "features") ,stringsAsFactors = FALSE, check.names = FALSE) %>%
    mutate(features= paste(id, features,sep="_") )

  ds[,2]
}
#############################################################################

# Call main functions to process dataset

dss<- combine.datasets() %>% 
  extract.mean.sd() %>%
  name.activity() %>% 
  create.descriptive.names() %>% 
  tidy.data()

#write dataset to tidy.txtfile
write.table( x = dss, "tidy.txt", row.names = FALSE)
print("Ok...")


  
