Code book for UCI\_HAR\_mean\_stddev\_tidy.txt
=======

UCI\_HAR\_mean\_stddev\_tidy.txt contains the average of mean and standard deviation values from the 
UCI Human Activity Recognition Using Smartphones study data available at 
<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>.

The data is summarised by subject and activity type, returning on observation per activity type per 
test subject.

- - -


* subject
	> Numeric identifier of the test subject.

* act.str
	> Character string identifying activity observed.

* tBodyAcc
	> time domain body acceleration signals captured at a constant rate of 50 Hz, filtered using
	 a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz 
	to remove noise and low pass Butterworth filter with a corner frequency of 0.3 Hz to 
	seperate body and gravity acceleration signals.

		"tBodyAcc.mean...X"           tBodyAcc X-axis mean
		"tBodyAcc.mean...Y"           tBodyAcc Y-axis mean
		"tBodyAcc.mean...Z"           tBodyAcc Z-axis mean
		"tBodyAcc.std...X"            tBodyAcc X-axis standard deviation
		"tBodyAcc.std...Y"            tBodyAcc Y-axis standard deviation
		"tBodyAcc.std...Z"            tBodyAcc Z-axis standard deviation
* tGravityAcc
	> time domain gravity acceleration signals captured at a constant rate of 50 Hz, filtered using 
	a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz 
	to remove noise and low pass Butterworth filter with a corner frequency of 0.3 Hz to 
	seperate body and gravity acceleration signals.

		"tGravityAcc.mean...X"        tGravityAcc X-axis mean
		"tGravityAcc.mean...Y"        tGravityAcc Y-axis mean
		"tGravityAcc.mean...Z"        tGravityAcc Z-axis mean
		"tGravityAcc.std...X"         tGravityAcc X-axis standard deviation
		"tGravityAcc.std...Y"         tGravityAcc Y-axis standard deviation
		"tGravityAcc.std...Z"         tGravityAcc Z-axis standard deviation
* tBodyAccJerk
	> time domain body acceleration jerk signal generated from derived body linear acceleration.

		"tBodyAccJerk.mean...X"       tBodyAccJerk X-axis mean
		"tBodyAccJerk.mean...Y"       tBodyAccJerk Y-axis mean
		"tBodyAccJerk.mean...Z"       tBodyAccJerk Z-axis mean
		"tBodyAccJerk.std...X"        tBodyAccJerk X-axis standard deviation
		"tBodyAccJerk.std...Y"        tBodyAccJerk Y-axis standard deviation
		"tBodyAccJerk.std...Z"        tBodyAccJerk Z-axis standard deviation
* tBodyGyro
	> time domain gyroscope signals captured at a constant rate of 50 Hz, filtered using
	 a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz 
	to remove noise.

		"tBodyGyro.mean...X"          tBodyGyro X-axis mean
		"tBodyGyro.mean...Y"          tBodyGyro Y-axis mean
		"tBodyGyro.mean...Z"          tBodyGyro Z-axis mean
		"tBodyGyro.std...X"           tBodyGyro X-axis standard deviation
		"tBodyGyro.std...Y"           tBodyGyro Y-axis standard deviation
		"tBodyGyro.std...Z"           tBodyGyro Z-axis standard deviation
* tBodyGyroJerk
	> time domain body gyroscopic jerk signal generated from derived body angular velocity.

		"tBodyGyroJerk.mean...X"      tBodyGyroJerk X-axis mean
		"tBodyGyroJerk.mean...Y"      tBodyGyroJerk Y-axis mean
		"tBodyGyroJerk.mean...Z"      tBodyGyroJerk Z-axis mean
		"tBodyGyroJerk.std...X"       tBodyGyroJerk X-axis standard deviation
		"tBodyGyroJerk.std...Y"       tBodyGyroJerk Y-axis standard deviation
		"tBodyGyroJerk.std...Z"       tBodyGyroJerk Z-axis standard deviation
* tBodyAccMag
	> magnitude of tBodyAcc three-dimensional signals calculated using the Euclidean norm

		"tBodyAccMag.mean.."          tBodyAccMag mean
		"tBodyAccMag.std.."           tBodyAccMag standard deviation
* tGravityAccMag
	> magnitude of tGravityAcc three-dimensional signals calculated using the Euclidean norm

		"tGravityAccMag.mean.."       tGravityAccMag mean
		"tGravityAccMag.std.."        tGravityAccMag standard deviation
* tBodyAccJerkMag
	> magnitude of tBodyAccJerk three-dimensional signals calculated using the Euclidean norm

		"tBodyAccJerkMag.mean.."      tBodyAccJerkMag mean
		"tBodyAccJerkMag.std.."       tBodyAccJerkMag standard deviation
* tBodyGyroMag
	> magnitude of tBodyGyro three-dimensional signals calculated using the Euclidean norm

		"tBodyGyroMag.mean.."         tBodyGyroMag mean
		"tBodyGyroMag.std.."          tBodyGyroMag standard deviation
* tBodyGyroJerkMag
	> magnitude of tBodyGyroJerk three-dimensional signals calculated using the Euclidean norm

		"tBodyGyroJerkMag.mean.."     tBodyGyroJerkMag mean
		"tBodyGyroJerkMag.std.."      tBodyGyroJerkMag standard deviation
* fBodyAcc
	> Fast Fourier Transform of tBodyAcc

		"fBodyAcc.mean...X"           fBodyAcc X-axis mean
		"fBodyAcc.mean...Y"           fBodyAcc Y-axis mean
		"fBodyAcc.mean...Z"           fBodyAcc Z-axis mean
		"fBodyAcc.std...X"            fBodyAcc X-axis standard deviation
		"fBodyAcc.std...Y"            fBodyAcc Y-axis standard deviation
		"fBodyAcc.std...Z"            fBodyAcc Z-axis standard deviation
* fBodyAccJerk
	> Fast Fourier Transform of tBodyAccJerk

		"fBodyAccJerk.mean...X"       fBodyAccJerk X-axis mean
		"fBodyAccJerk.mean...Y"       fBodyAccJerk Y-axis mean
		"fBodyAccJerk.mean...Z"       fBodyAccJerk Z-axis mean
		"fBodyAccJerk.std...X"        fBodyAccJerk X-axis standard deviation
		"fBodyAccJerk.std...Y"        fBodyAccJerk Y-axis standard deviation
		"fBodyAccJerk.std...Z"        fBodyAccJerk Z-axis standard deviation
* fBodyGyro
	> Fast Fourier Transform of tBodyGyro

		"fBodyGyro.mean...X"          fBodyGyro X-axis mean
		"fBodyGyro.mean...Y"          fBodyGyro Y-axis mean
		"fBodyGyro.mean...Z"          fBodyGyro Z-axis mean
		"fBodyGyro.std...X"           fBodyGyro X-axis standard deviation
		"fBodyGyro.std...Y"           fBodyGyro Y-axis standard deviation
		"fBodyGyro.std...Z"           fBodyGyro Z-axis standard deviation
* fBodyAccMag
	> Fast Fourier Transform of tBodyAccMag

		"fBodyAccMag.mean.."          fBodyAccMag mean
		"fBodyAccMag.std.."           fBodyAccMag standard deviation
* fBodyBodyAccJerkMag
	> Fast Fourier Transform of tBodyAccJerkMag

		"fBodyBodyAccJerkMag.mean.."  fBodyBodyAccJerkMag mean
		"fBodyBodyAccJerkMag.std.."   fBodyBodyAccJerkMag standard deviation
* fBodyBodyGyroMag
	> Fast Fourier Transform of tBodyGyroMag

		"fBodyBodyGyroMag.mean.."     fBodyBodyGyroMag mean
		"fBodyBodyGyroMag.std.."      fBodyBodyGyroMag standard deviation
* fBodyBodyGyroJerkMag
	> Fast Fourier Transform of tBodyGyroJerkMag

		"fBodyBodyGyroJerkMag.mean.." fBodyBodyGyroJerkMag mean
		"fBodyBodyGyroJerkMag.std.."  fBodyBodyGyroJerkMag standard deviation
