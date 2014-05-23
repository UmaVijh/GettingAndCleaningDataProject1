#Readme File

This is the ReadMe for the Coursera Getting and Cleaning Data Project 1

The data for this project comes from the following url:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The run_analysis.R code assumes the data has been downloaded and the relevant files unzipped in the ./data/ directory in the working directory. 

##Instruction List:
The following steps are then performed:

* The relevant data for the test and train data are then loaded into R as data frames. 

* The Test data and the Train data are then merged with the appropriate subject identifiers.

* From the 561 recorded variables, only those that are indicated as the means or standard deviations in their names are then selected.

* The activity descriptions are added based on the activity codes. This column is called activity.labels

* The original variable names have hyphens and parentheses. These are removed and changed. Some capitalization is kept to ensure readability.

* The data frame is then melted and recast using the reshape2 package to present the average values of the chosen variables per subject-activity pair. This results in a tidy data set with 180 rows.