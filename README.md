# Getting-and-Cleaning-Data

Coursera Data Science Specialization  - Getting and Cleaning Data Course Week 4 Assignment

Using data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


Script requires dplyr and reshape2 package to run.
These packages are used because of their user friendly approch.

For default data files must be in same folder with "run_analysis.R" script.

Running: 
"Source" script and tidy.csv will be recorded in default location

Script contains following functions

Main Functions:
	
	combine.datasets()
		combine x,y and subject files and finally combines training and test data sets
		file locations must be altered if data files are in diffrent location
	extract.mean.sd() 
		gets activity, subject and mean/sd related columns
	name.activity() 
		replaces activity numbers with activity labels
	create.descriptive.names() 
		renames column names with descriptive ones. Calls variable.formatter() helper function which uses regex expressions and gsub() function.
		More clever implantion needed!!
	tidy.data()
		melt and dcast data for averages
		



References:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

[2] Hadley  Wickham, Tidy Data, Journal of Statistical Software volume 59, number 1,2014
