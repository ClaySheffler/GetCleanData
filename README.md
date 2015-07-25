### Getting & Cleaning Data - Course Project
##### 7/25/2015

SubjectID, x variables (Features), and y (Activity) were split into three separate files each for Train/Test sets, for 6 total.

The script:

Downloads data; Unzips

Loads 6 data frames

Row binds the train/test set of each, now down to 3 data frames

Renames columns to be descriptive: SubjectID, Features (X: 561 named variables..), and Activity (Y)

Replaces Activity values (1:6) with corresponding description (Walking, Sitting, etc.)

Column binds the three DFs together

Aggregates for MEAN, grouped by SubjectID and Activity (orders by Activity, SubjectID)

Writes the output of aggregated data frame.
