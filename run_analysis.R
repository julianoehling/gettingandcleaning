## This R script needs to be excecuted in the /UCI HAR Dataset/ folder.
## It reads the data, merges the different tables and produces a tidy data set 
## as per task description.

## read data
subject_train <- read.table("./train/subject_train.txt")
x_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/Y_train.txt")
subject_test <- read.table("./test/subject_test.txt")
x_test <- read.table("./test/X_test.txt")
y_test <- read.table("./test/Y_test.txt")
features <- read.table("./features.txt")
activity_labels <- read.table("./activity_labels.txt")

## merge test and training data 
x <- rbind(x_test,x_train)
y <- rbind(y_test, y_train)
subjects <- rbind(subject_test,subject_train)

## replace label numbers with label names
y <- activity_labels$V2[y$V1]

## rename columns
colnames(x) <- features$V2

## exclude all columns in x which contain neither "mean" nor "std"
x <- x[,as.logical(grepl("mean\\(\\)", tolower(colnames(x))) + grepl("std\\(\\)", tolower(colnames(x))))]

## make column names descriptive
colnames(x) <- gsub("Acc", "Accelerometer", colnames(x))
colnames(x) <- gsub("Gyro", "Gyroscope", colnames(x))
colnames(x) <- gsub("Mag", "Magnitude", colnames(x))
colnames(x) <- gsub("BodyBody", "Body", colnames(x))
colnames(x) <- gsub("^t", "Time", colnames(x))
colnames(x) <- gsub("^f", "Frequency", colnames(x))
colnames(x) <- gsub("mean\\(\\)", "mean", colnames(x))
colnames(x) <- gsub("std\\(\\)", "std", colnames(x))
colnames(x) <- make.names(colnames(x))
colnames(x) <- gsub("\\.", " ", colnames(x))
colnames(x) <- tolower(colnames(x))

## add label names and subject to x
x <- cbind(x,activity=y,subjects=subjects$V1)

## remove data from memory which is not needed anymore
rm(activity_labels,features,subject_test,subject_train,subjects,x_test,x_train,y,y_test,y_train)

## use the dplyr package to manipulate data
library(dplyr)

## group data by subject and activity
x <- x %>% group_by(subjects, activity) %>% summarise_each(funs(mean))

## write output file
write.table(x, file = "./tidy_data.txt", row.name=FALSE)
