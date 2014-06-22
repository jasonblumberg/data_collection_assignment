====================================================================
Data Science - Getting and Cleaning Data
Assignment 1
====================================================================

Description of R script - run_analysis.R

====================================================================

1. Reads required test, train and information text files from working directory

2. Filters 'features' file for all features describing mean and standard deviation

3. Changes names of test and train data files X_test and X_train

4. Changes the column names of newly created test and train data set to those in 'features' file

5. Subsets the test and train data sets to keep only the columns specified in 2. above

6. Changes names of activity labels data sets y_test and y_train and binds these to test and train dataframes

7. Adds labels to test and train data entries to keep these identifiable when datasets are merged

8. Changes column names in 'activity_labels' dataset and merges this dataset with test and train dataset

9. Binds the test and train datasets to form one final dataset

10. Writes a final text file of clean data to working directory