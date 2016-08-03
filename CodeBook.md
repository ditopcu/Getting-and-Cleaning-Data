
DATA DICTIONARY - Getting and Cleaning Data Course Project Tidy Data Set

	Files and Raw data set:

	features.txt				Data set raw "column names" which represents 512 features.Each row includes one feature.
								Common for both test and training set.
								
	activity_labels.txt			Descriptive names for subject activities

	train/subject_test.txt		Data set "subject" column. Each row includes one subject. Test Set data
	test/subject_test.txt		Data set "subject" column. Each row includes one subject. Training Set data

	test/X_test.txt				Data set "features" columns. Each row includes 512 feature. Test Set data	
	train/X_train.txt			Data set "features" columns. Each row includes 512 feature. Training Set data

	test/y_test.txt				Data set "activity" columns. Each row includes one  activity. Test Set data	
	train/y_train.txt			Data set "activity" columns. Each row includes one  activity. Training Set data	





Variables:

1		subject
		An identifier of the subject who carried out the experiment. Total 30 subject is included. (subject numbers: 1-30)
	 
2		activities Subject Activities

			1 WALKING
			2 WALKING_UPSTAIRS
			3 WALKING_DOWNSTAIRS
			4 SITTING
			5 STANDING
			6 LAYING
	
3- 68	Features:
	
		Features are normalized and bounded within [-1,1]
		
		time: These time domain signals  were captured at a constant rate of 50 Hz.
		frequency: Fast Fourier Transform (FFT) was applied to some of these signals.
		'-XYZ' : is used to denote 3-axial signals in the X, Y and Z directions.
		'-Mean': Average
		'-SD': Standard deviation
	
	
			time.Body.Accelerometer.Mean.X
			time.Body.Accelerometer.Mean.Y
			time.Body.Accelerometer.Mean.Z

			time.Gravity.Accelerometer.Mean.X
			time.Gravity.Accelerometer.Mean.Y
			time.Gravity.Accelerometer.Mean.Z

			time.Body.Accelerometer.Jerk.Mean.X
			time.Body.Accelerometer.Jerk.Mean.Y
			time.Body.Accelerometer.Jerk.Mean.Z

			time.Body.Gyroscope.Mean.X
			time.Body.Gyroscope.Mean.Y
			time.Body.Gyroscope.Mean.Z

			time.Body.Gyroscope.Jerk.Mean.X
			time.Body.Gyroscope.Jerk.Mean.Y
			time.Body.Gyroscope.Jerk.Mean.Z

			time.Body.Accelerometer.Magnitude.Mean
			time.Gravity.Accelerometer.Magnitude.Mean
			time.Body.Accelerometer.Jerk.Magnitude.Mean

			time.Body.Gyroscope.Magnitude.Mean
			time.Body.Gyroscope.Jerk.Magnitude.Mean

			frequency.Body.Accelerometer.Mean.X
			frequency.Body.Accelerometer.Mean.Y
			frequency.Body.Accelerometer.Mean.Z

			frequency.Body.Accelerometer.Jerk.Mean.X
			frequency.Body.Accelerometer.Jerk.Mean.Y
			frequency.Body.Accelerometer.Jerk.Mean.Z

			frequency.Body.Gyroscope.Mean.X
			frequency.Body.Gyroscope.Mean.Y
			frequency.Body.Gyroscope.Mean.Z

			frequency.Body.Accelerometer.Magnitude.Mean
			frequency.Body.Accelerometer.Jerk.Magnitude.Mean

			frequency.Body.Gyroscope.Magnitude.Mean
			frequency.Body.Gyroscope.Jerk.Magnitude.Mean

			time.Body.Accelerometer.SD.X
			time.Body.Accelerometer.SD.Y
			time.Body.Accelerometer.SD.Z

			time.Gravity.Accelerometer.SD.X
			time.Gravity.Accelerometer.SD.Y
			time.Gravity.Accelerometer.SD.Z

			time.Body.Accelerometer.Jerk.SD.X
			time.Body.Accelerometer.Jerk.SD.Y
			time.Body.Accelerometer.Jerk.SD.Z

			time.Body.Gyroscope.SD.X
			time.Body.Gyroscope.SD.Y
			time.Body.Gyroscope.SD.Z

			time.Body.Gyroscope.Jerk.SD.X
			time.Body.Gyroscope.Jerk.SD.Y
			time.Body.Gyroscope.Jerk.SD.Z

			time.Body.Accelerometer.Magnitude.SD
			time.Gravity.Accelerometer.Magnitude.SD
			time.Body.Accelerometer.Jerk.Magnitude.SD

			time.Body.Gyroscope.Magnitude.SD
			time.Body.Gyroscope.Jerk.Magnitude.SD

			frequency.Body.Accelerometer.SD.X
			frequency.Body.Accelerometer.SD.Y
			frequency.Body.Accelerometer.SD.Z

			frequency.Body.Accelerometer.Jerk.SD.X
			frequency.Body.Accelerometer.Jerk.SD.Y
			frequency.Body.Accelerometer.Jerk.SD.Z

			frequency.Body.Gyroscope.SD.X
			frequency.Body.Gyroscope.SD.Y
			frequency.Body.Gyroscope.SD.Z

			frequency.Body.Accelerometer.Magnitude.SD
			frequency.Body.Accelerometer.Jerk.Magnitude.SD

			frequency.Body.Gyroscope.Magnitude.SD
			frequency.Body.Gyroscope.Jerk.Magnitude.SD
