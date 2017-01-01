# Getting and cleaning data

For creating a tidy data set of wearable computing data originally from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Files in this repo
* README.md -- you are reading it right now
* CodeBook.md -- codebook describing variables, the data and transformations
* run_analysis.R -- actual R code

## run_analysis.R goals
You should create one R script called run_analysis.R that does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

The script should run on any Unix based system with an accesible `/tmp/` directory. Also needed direct internet access b/c the script downloads the data files.

The output is created in working directory with the name of `tidy_UCI_data.txt`.

## run_analysis.R walkthrough
It follows the goals step by step.

* Step 0:
  * Downloads the data archive and unzips it.
  * Read all the test and training files: y\_test.txt, subject\_test.txt and X_test.txt.

* Step 1:
  * Combine the files to a data frame in the form of subjects, labels, the rest of the data.

* Step 2:
  * Filter the data it to only leave features that are either means ("mean()") or standard deviations ("std()").her.

* Step 3:
  * Adds to the numeric activity values a column with readable values.

* Step 4:
  * Replacing column name abbreviations with full text.

* Step 5:
  * Create a new data frame by finding the mean for each combination of subject and label. It's done by `aggregate()` function
  
* Final step:
  * Write the new tidy set into a text file called `tidy_UCI_data.txt`, formatted similarly to the original files.
