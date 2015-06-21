Introduction
====

This is a script to load, merge and tidy a set of wearable tech machine learning data.

The key file in the script is `run_analysis.R`.

Dependencies
----
The two packages on which the script depends are:

1. `magrittr` which allows the use of forward pipes ("%>%", "%<>%" etc.), and
2. `plyr` for creating a tidy version of the data set with only the means per activity and subject.

Organization
----
The script is divided into different sections labeled 1 through 5:

1. Acquire and Combine the Data
2. Extract only standard deviation and mean related features
3. Appropriately label the activities using factors
4. Make Column Names 
5. Create a Tidy Data Set

Functions
----
There are three functions in the script:
* DataGetunzip, which downloads and unzips the source data in a new folder
* ReadT, which reads a .txt comma-delimited file given subfolder and file name with parameters suitable for this data set, and
* TidyCreate, which creates a tidy version of the data set and saves it to a comma delimited file called tidy_data.txt
