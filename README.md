How it works
======

[run_analysis.R](https://github.com/TomGiordano/getdata-proj1/blob/master/run_analysis.R) attempts to create a tidy data set of mean and standard deviation values from the
UCI Human Activity Recognition Using Smartphones study data available at 
<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>.

To do this initially the data column labels (UCI HAR Dataset/features.txt) and activity type labels
(UCI HAR Dataset/activity_labels.txt) are read.

The test data is then read and combined. The X data is read using the column labels previously loaded 
from features.txt. The subject data is read and added to the data frame containing the X data. The Y 
data is read and matched to descriptive activity names previously read from activity_labels.txt. The
descriptive activity names are added to the X data.

The above process is then repeated for the train data.

Once both data sets are have all relevant data included the data sets are merged forming a large 
data set including subject information, descriptive variable names and descriptive activity labels.

The large dataset is then filtered with grepl to include only values related to mean, standard 
deviation, subject and activity type.

This filtered dataset is then summarised using melt and cast to include the mean of each variable for 
each activity and each subject. The resulting tidy data set is then written to a file 
([UCI_HAR_mean_stddev_tidy.txt](https://github.com/TomGiordano/getdata-proj1/blob/master/UCI_HAR_mean_stddev_tidy.txt)).
