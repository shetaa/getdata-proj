## ----"download",cache=T,eval=T-------------------------------------------
#create directory, load the data zip file nad unzip it
unzip("getdata-projectfiles-UCI HAR Dataset.zip")


## ----"bine",cache=T,eval=F-----------------------------------------------
## x_test <- read.fwf("UCI HAR Dataset\\test\\X_test.txt", widths=16, sep="", colClasses="numeric")
## 

## ----"read",cache=T,eval=T-----------------------------------------------
#reading features to use as column headers
features <- read.table("UCI HAR Dataset\\features.txt", sep=" ")
features_mean_std <- (grepl("mean\\(\\)", features[,2]) | grepl("std\\(\\)", features[,2]))

#reading train files (only features in filtered_features)
read.fwf allows skipping a field by specifying corresponding width value as negative.
Here column width is 16, for columns for mean and std deviation we will provide width of 16, for others-16

width = 16 * (2*as.numeric(filtered_features_indexes)-1)
width = apply(features_mean_std,1, getColWidth(x) if (x,16,-16)

feature_column_names <- as.character(features[,2])

#reading train filess
x_train <- read.fwf("UCI HAR Dataset\\train\\X_train.txt", widths=rep(16,nrow(features)), colClasses="numeric")
y_train <- read.table("UCI HAR Dataset\\train\\y_train.txt")
subject_train <- read.table("UCI HAR Dataset\\train\\subject_train.txt")
train <- cbind(subject_train, y_train,x_train )

#reading test files
x_test <- read.fwf("UCI HAR Dataset\\test\\X_test.txt", widths=16, sep="", colClasses="numeric")
y_test <- read.table("UCI HAR Dataset\\test\\y_test.txt")
subject_test <- read.table("UCI HAR Dataset\\test\\subject_test.txt")
test <- cbind(subject_test, y_test, x_test)

# #Write to the disk as CSV files
# file = paste(dirData, "all_data.txt", sep="/")
# write.csv(all_data, file, row.names=FALSE)
# file = paste(dirData, "all_average.txt", sep="/")
# write.csv(all_average, file, row.names=FALSE)




## ----"mbine",cache=T,eval=T----------------------------------------------
dim(subject_test)
dim(x_test)
dim(y_test)
dim(subject_train)
dim(x_train)
dim(y_train)
head(subject_test)
head(x_test)
head(y_test)
head(subject_train)
head(x_train)
head(y_train)

## ----"combine",cache=T,eval=T--------------------------------------------
#merge test and train datasets and label the columns
# combined <- rbind(train, test)
# colnames(combined) <- c(c("subject","label"),feature_column_names) 
# 
# #create a data set with the average of each variable for each activity and each subject
# all_average <- aggregate(all_data[,1:66], by=list(all_data$subject), FUN="mean")
# colnames(all_average)[1] = "subject"



