labels <- read.table("UCI HAR Dataset/features.txt", colClasses = "character")   # read column labels
act_labels <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE,  # read activity names
                         col.names = c("activity", "label"))    

# 4. Appropriately labels the data set with descriptive variable names. 
Xtest <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = labels$V2) # read test data. Use feature names for column names
Ytest <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = c("activity")) # read test activities
Stest <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = c("subject")) # read test subject data
Xtest$subject <- Stest$subject        # Add subject data to main test dataset
# 3. Uses descriptive activity names to name the activities in the data set
Xtest$act.str <- act_labels$label[match(Ytest$activity, act_labels$activity)]   # Add descriptive names to activities in test dataset
rm(list = c("Stest", "Ytest"))       # remove no longer needed data sets

# 4. Appropriately labels the data set with descriptive variable names. 
Xtrain <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = labels$V2) # read training data. Use feature names for column names
Ytrain <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = c("activity")) # read training activities
Strain <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = c("subject")) # read training subject data
Xtrain$subject <- Strain$subject       # Add subject data to main training dataset
# 3. Uses descriptive activity names to name the activities in the data set
Xtrain$act.str <- act_labels$label[match(Ytrain$activity, act_labels$activity)] # Add descriptive names to activities in training dataset
rm(list = c("Strain", "Ytrain"))       # remove no longer needed data sets

rm(list = c("act_labels", "labels"))   # remove no longer needed data sets

# 1. Merges the training and the test sets to create one data set.
UCI_HAR_data <- rbind(Xtrain, Xtest)   # Merge training and test data sets
rm(list = c("Xtest","Xtrain"))         # remove no longer needed data sets

# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
UCI_HAR_mean_stddev <- UCI_HAR_data[names(UCI_HAR_data)[grepl("std[.]|mean[.]|subject|act[.]", names(UCI_HAR_data))]]

#write.table(UCI_HAR_mean_stddev, "UCI_HAR_mean_stddev.txt")

# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(reshape)
mdata <- melt(UCI_HAR_mean_stddev, id = c("subject","act.str"))
tidydata <- cast(mdata, subject + act.str ~ variable, fun.aggregate = mean)
rm(mdata)
write.table(tidydata, "UCI_HAR_mean_stddev_tidy.txt")

#mdata <- melt(UCI_HAR_data, id = c("subject","act.str"))
#tidydata <- cast(mdata, subject + act.str ~ variable, fun.aggregate = mean)
#rm(mdata)
#write.table(tidydata, "UCI_HAR_data_tidy.txt")