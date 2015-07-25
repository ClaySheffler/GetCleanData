### Getting & Cleaning Data - Course Project
####### 7/25/2015

The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set

Data set used:

###### Human Activity Recognition Using Smartphones Data Set - (UCI)

####### Data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

###### Dataset information from https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones:
"""
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.
"""

Description of file structure of downloaded data:

SubjectID, x variables (Features), and y (Activity) were split into three separate files each for Train/Test sets, for 6 total.

The script "run_Analysis.R" does the following:

Downloads data; Unzips

Loads 6 data frames

Row binds the train/test set of each, now down to 3 data frames

Renames columns to be descriptive: SubjectID, Features (X: 561 named variables..), and Activity (Y)

Replaces Activity values (1:6) with corresponding description (Walking, Sitting, etc.)

Column binds the three DFs together

Aggregates for MEAN, grouped by SubjectID and Activity (orders by Activity, SubjectID)

Writes the output of aggregated data frame.
