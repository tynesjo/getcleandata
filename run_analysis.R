# Script to Acquire and Organize Wearable Tech Machine Learning Data
# ============================================================================== 

# Settings.
# ------------------------------------------------------------------------------

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

dat_dir		<- "./dat"	# Folder in which to save the data.
zip_file	<- "dat.zip"	# Name of the zip file once downloaded.

colnames_dictionary <- c(	# Translations for column names 
  "Mag"= "Magnitude", "^t"="time", "^f"="frequency", "Acc"="Accelerometer",
  "Gyro"="Gyroscope", "BodyBody"="Body"
)


# Packages.
# ------------------------------------------------------------------------------
require(magrittr)	# To use forward-pipes ("%>%" etc.).
require(plyr)		# To create the tidy data set.

# Step 1: Acquire and Combine the Data.
# ------------------------------------------------------------------------------

DataGetUnzip <- . %>% {   # Downloads and unzips the data file.

  # Create data directory if not existing.
  if(!file.exists(dat_dir)) {dir.create(dat_dir)}

  # Dowload data file if not existing (use "curl" method to handle https)
  dest <- file.path(dat_dir, zip_file)
  if(!file.exists(dest)) {download.file(url=url, destfile=dest, method="curl")}

  # Unzip data file.
  unzip(zipfile=dest, exdir=dat_dir) # Unzip.
}


ReadT <- function(sub_dir, file, path=file.path(dat_dir, "UCI HAR Dataset")) {
  # Reads a .txt file given a subdirectory path and file name using read.table
  file.path(path, sub_dir, paste0(file, ".txt")) %>%
  read.table(header=FALSE, stringsAsFactors=FALSE)
}


feat_names <- ReadT(".", "features")$V2   # Feature names from file.

d <- cbind(  # Combine the data into one data frame.
  # Subject data (combined training and testing).
  rbind(ReadT("train", "subject_train"), ReadT("test", "subject_test")),
  # Activity data (combined training and testing)
  rbind(ReadT("test", "y_test"), ReadT("train", "y_train")),
  # Features data.
  rbind(ReadT("test", "X_test"), ReadT("train", "X_train"))
) %T>% # Finally assign column names.
  {colnames(.) <- c("subject", "activity", feat_names)}


# Step 2: Extract only standard deviation and mean related features.
# ------------------------------------------------------------------------------
d %<>% {.[, c(1:2, grep("mean\\(|std", colnames(.)))]}

# Step 3: Appropriately label the activities using factors.
# ------------------------------------------------------------------------------
activity_factors <- ReadT(".", "activity_labels")
d$activity %<>% factor(levels=activity_factors[,1], labels=activity_factors[,2])


# Step 4: Make Column Names 
# ------------------------------------------------------------------------------

v <- colnames_dictionary
for(i in 1:length(v)) {
  colnames(d) %<>% gsub(names(v)[[i]], v[[i]] %>% unname, .)
}
# Clean up the column names.
{colnames(d) %<>% gsub("-", "_", .) %>% gsub("\\(\\)", "", .)}
rm(v)


# Step 5: Create a Tidy Data Set.
# ------------------------------------------------------------------------------

TidyCreate <- . %>% {  # Creates a tidy data set from "d" and saves as CSV file.
  aggregate(. ~ activity + subject, d, mean) %>%
  {.[order(.$subject, .$activity),]} %>%
  write.table("tidy_data.txt", row.names=F)
}
