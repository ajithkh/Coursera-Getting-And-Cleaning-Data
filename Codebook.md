CodeBook 
========

Input data
-----------

Data available from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. 

Data is extracted and available in folder **UCI HAR Dataset**

##Implementation 

Variables  and descriptions

Variable         | Description
-----------------|------------
subjectTrain     | subject training data
activityTrain    | activity training data
featuresTrain    | features training data
subjectTest      | subject test data
activityTest     | activity test data
featuresTest     | features test data
subjectMerged    | subject merged 
activityMerged   | activity merged 
selData          | Extracted data for manipulation
tidyData         | Aggregated data to write to file


##Steps on transformation

1.  Load subject, features and  activity training and test data 
    +  `subjectTrain` , `activityTrain` , `featuresTrain` - training data   
    +  `subjectTest` , `activityTest` , `featuresTest` - test data    

2.  Load activity labels and features for future lookup
    +  `features` , `activityLabels` 

3.  Merge training and test data 
    +   `subjectMerged`, `activityMerged`, `featuresMerged` , `mergedSubjActivity`, `mergedData` 
    
4.  Extract the required fields, assign activity with activity labels & correct column names  
     +   `selData` - executed using variable selData 

5.  Aggregate data and write to file   
    +   `tidyData` - data from selData aggregated to tidy data and same is used to write to file. 


