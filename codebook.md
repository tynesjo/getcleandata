CodeBook
====

Activity Column Descriptive Factor Labels
----
The data imported from `activity` files represented in the column named activity was converted to factor form with labels as follow:

1.            WALKING
2.   WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4.            SITTING
5.           STANDING
6.             LAYING 


Descriptive Column Names for Features
----
Column names were amended to be more descripte according to the following scheme:

* "Mag" was expanded to "Magnitude"
* "t" (at start of name) was expanded to "time"
* "f" (at start of name) was expanded to "frequency"
* "Acc" was expanded to "Accelerometer"
* "Gyro" was expanded to "Gyroscope"
* "BodyBody" was simplified to "Body"


Replacing Symbols in Column Names
----
"(" and ")" were removed
"-" was replaced with "_"

For ease of parsing the data files, since "(", ")" and "-" have different uses in R.

Activity and Subject Columns
----
In addition to the feature named columns as described in the mapping below (resulting from the above three steps) there are two additional columns:

1. activities (with activities data)
2. subject (with subject data)

Resulting Feature Names (New Names Followed by Old Names in Pairs)
-----
                                     subject 
                                   "subject" 
                                    activity 
                                  "activity" 
                timeBodyAccelerometer_mean_X 
                         "tBodyAcc-mean()-X" 
                timeBodyAccelerometer_mean_Y 
                         "tBodyAcc-mean()-Y" 
                timeBodyAccelerometer_mean_Z 
                         "tBodyAcc-mean()-Z" 
                 timeBodyAccelerometer_std_X 
                          "tBodyAcc-std()-X" 
                 timeBodyAccelerometer_std_Y 
                          "tBodyAcc-std()-Y" 
                 timeBodyAccelerometer_std_Z 
                          "tBodyAcc-std()-Z" 
             timeGravityAccelerometer_mean_X 
                      "tGravityAcc-mean()-X" 
             timeGravityAccelerometer_mean_Y 
                      "tGravityAcc-mean()-Y" 
             timeGravityAccelerometer_mean_Z 
                      "tGravityAcc-mean()-Z" 
              timeGravityAccelerometer_std_X 
                       "tGravityAcc-std()-X" 
              timeGravityAccelerometer_std_Y 
                       "tGravityAcc-std()-Y" 
              timeGravityAccelerometer_std_Z 
                       "tGravityAcc-std()-Z" 
            timeBodyAccelerometerJerk_mean_X 
                     "tBodyAccJerk-mean()-X" 
            timeBodyAccelerometerJerk_mean_Y 
                     "tBodyAccJerk-mean()-Y" 
            timeBodyAccelerometerJerk_mean_Z 
                     "tBodyAccJerk-mean()-Z" 
             timeBodyAccelerometerJerk_std_X 
                      "tBodyAccJerk-std()-X" 
             timeBodyAccelerometerJerk_std_Y 
                      "tBodyAccJerk-std()-Y" 
             timeBodyAccelerometerJerk_std_Z 
                      "tBodyAccJerk-std()-Z" 
                    timeBodyGyroscope_mean_X 
                        "tBodyGyro-mean()-X" 
                    timeBodyGyroscope_mean_Y 
                        "tBodyGyro-mean()-Y" 
                    timeBodyGyroscope_mean_Z 
                        "tBodyGyro-mean()-Z" 
                     timeBodyGyroscope_std_X 
                         "tBodyGyro-std()-X" 
                     timeBodyGyroscope_std_Y 
                         "tBodyGyro-std()-Y" 
                     timeBodyGyroscope_std_Z 
                         "tBodyGyro-std()-Z" 
                timeBodyGyroscopeJerk_mean_X 
                    "tBodyGyroJerk-mean()-X" 
                timeBodyGyroscopeJerk_mean_Y 
                    "tBodyGyroJerk-mean()-Y" 
                timeBodyGyroscopeJerk_mean_Z 
                    "tBodyGyroJerk-mean()-Z" 
                 timeBodyGyroscopeJerk_std_X 
                     "tBodyGyroJerk-std()-X" 
                 timeBodyGyroscopeJerk_std_Y 
                     "tBodyGyroJerk-std()-Y" 
                 timeBodyGyroscopeJerk_std_Z 
                     "tBodyGyroJerk-std()-Z" 
         timeBodyAccelerometerMagnitude_mean 
                        "tBodyAccMag-mean()" 
          timeBodyAccelerometerMagnitude_std 
                         "tBodyAccMag-std()" 
      timeGravityAccelerometerMagnitude_mean 
                     "tGravityAccMag-mean()" 
       timeGravityAccelerometerMagnitude_std 
                      "tGravityAccMag-std()" 
     timeBodyAccelerometerJerkMagnitude_mean 
                    "tBodyAccJerkMag-mean()" 
      timeBodyAccelerometerJerkMagnitude_std 
                     "tBodyAccJerkMag-std()" 
             timeBodyGyroscopeMagnitude_mean 
                       "tBodyGyroMag-mean()" 
              timeBodyGyroscopeMagnitude_std 
                        "tBodyGyroMag-std()" 
         timeBodyGyroscopeJerkMagnitude_mean 
                   "tBodyGyroJerkMag-mean()" 
          timeBodyGyroscopeJerkMagnitude_std 
                    "tBodyGyroJerkMag-std()" 
           frequencyBodyAccelerometer_mean_X 
                         "fBodyAcc-mean()-X" 
           frequencyBodyAccelerometer_mean_Y 
                         "fBodyAcc-mean()-Y" 
           frequencyBodyAccelerometer_mean_Z 
                         "fBodyAcc-mean()-Z" 
            frequencyBodyAccelerometer_std_X 
                          "fBodyAcc-std()-X" 
            frequencyBodyAccelerometer_std_Y 
                          "fBodyAcc-std()-Y" 
            frequencyBodyAccelerometer_std_Z 
                          "fBodyAcc-std()-Z" 
       frequencyBodyAccelerometerJerk_mean_X 
                     "fBodyAccJerk-mean()-X" 
       frequencyBodyAccelerometerJerk_mean_Y 
                     "fBodyAccJerk-mean()-Y" 
       frequencyBodyAccelerometerJerk_mean_Z 
                     "fBodyAccJerk-mean()-Z" 
        frequencyBodyAccelerometerJerk_std_X 
                      "fBodyAccJerk-std()-X" 
        frequencyBodyAccelerometerJerk_std_Y 
                      "fBodyAccJerk-std()-Y" 
        frequencyBodyAccelerometerJerk_std_Z 
                      "fBodyAccJerk-std()-Z" 
               frequencyBodyGyroscope_mean_X 
                        "fBodyGyro-mean()-X" 
               frequencyBodyGyroscope_mean_Y 
                        "fBodyGyro-mean()-Y" 
               frequencyBodyGyroscope_mean_Z 
                        "fBodyGyro-mean()-Z" 
                frequencyBodyGyroscope_std_X 
                         "fBodyGyro-std()-X" 
                frequencyBodyGyroscope_std_Y 
                         "fBodyGyro-std()-Y" 
                frequencyBodyGyroscope_std_Z 
                         "fBodyGyro-std()-Z" 
    frequencyBodyAccelerometerMagnitude_mean 
                        "fBodyAccMag-mean()" 
     frequencyBodyAccelerometerMagnitude_std 
                         "fBodyAccMag-std()" 
frequencyBodyAccelerometerJerkMagnitude_mean 
                "fBodyBodyAccJerkMag-mean()" 
 frequencyBodyAccelerometerJerkMagnitude_std 
                 "fBodyBodyAccJerkMag-std()" 
        frequencyBodyGyroscopeMagnitude_mean 
                   "fBodyBodyGyroMag-mean()" 
         frequencyBodyGyroscopeMagnitude_std 
                    "fBodyBodyGyroMag-std()" 
    frequencyBodyGyroscopeJerkMagnitude_mean 
               "fBodyBodyGyroJerkMag-mean()" 
     frequencyBodyGyroscopeJerkMagnitude_std 
                "fBodyBodyGyroJerkMag-std()"
