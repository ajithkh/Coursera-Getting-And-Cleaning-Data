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

##Identifiers 
Name      | Description
----------|------------
subject   | Subject ID     
Activity  | Activity info     

##Measurements 

TimeBodyAccelerometerMean()-X    
TimeBodyAccelerometerMean()-Y   
TimeBodyAccelerometerMean()-Z   
TimeBodyAccelerometerSTD()-X   
TimeBodyAccelerometerSTD()-Y   
TimeBodyAccelerometerSTD()-Z   
TimeGravityAccelerometerMean()-X   
TimeGravityAccelerometerMean()-Y   
TimeGravityAccelerometerMean()-Z   
TimeGravityAccelerometerSTD()-X   
TimeGravityAccelerometerSTD()-Y   
TimeGravityAccelerometerSTD()-Z    
TimeBodyAccelerometerJerkMean()-X      
TimeBodyAccelerometerJerkMean()-Y     
TimeBodyAccelerometerJerkMean()-Z    
TimeBodyAccelerometerJerkSTD()-X     
TimeBodyAccelerometerJerkSTD()-Y    
TimeBodyAccelerometerJerkSTD()-Z   
TimeBodyGyroscopeMean()-X     
TimeBodyGyroscopeMean()-Y     
TimeBodyGyroscopeMean()-Z     
TimeBodyGyroscopeSTD()-X    
TimeBodyGyroscopeSTD()-Y     
TimeBodyGyroscopeSTD()-Z     
TimeBodyGyroscopeJerkMean()-X     
TimeBodyGyroscopeJerkMean()-Y     
TimeBodyGyroscopeJerkMean()-Z     
TimeBodyGyroscopeJerkSTD()-X     
TimeBodyGyroscopeJerkSTD()-Y     
TimeBodyGyroscopeJerkSTD()-Z     
TimeBodyAccelerometerMagnitudeMean()     
TimeBodyAccelerometerMagnitudeSTD()     
TimeGravityAccelerometerMagnitudeMean()     
TimeGravityAccelerometerMagnitudeSTD()     
TimeBodyAccelerometerJerkMagnitudeMean()    
TimeBodyAccelerometerJerkMagnitudeSTD()     
TimeBodyGyroscopeMagnitudeMean()     
TimeBodyGyroscopeMagnitudeSTD()    
TimeBodyGyroscopeJerkMagnitudeMean()     
TimeBodyGyroscopeJerkMagnitudeSTD()     
FrequencyBodyAccelerometerMean()-X   
FrequencyBodyAccelerometerMean()-Y    
FrequencyBodyAccelerometerMean()-Z    
FrequencyBodyAccelerometerSTD()-X    
FrequencyBodyAccelerometerSTD()-Y    
FrequencyBodyAccelerometerSTD()-Z    
FrequencyBodyAccelerometerJerkMean()-X    
FrequencyBodyAccelerometerJerkMean()-Y    
FrequencyBodyAccelerometerJerkMean()-Z    
FrequencyBodyAccelerometerJerkSTD()-X    
FrequencyBodyAccelerometerJerkSTD()-Y    
FrequencyBodyAccelerometerJerkSTD()-Z    
FrequencyBodyGyroscopeMean()-X    
FrequencyBodyGyroscopeMean()-Y   
FrequencyBodyGyroscopeMean()-Z   
FrequencyBodyGyroscopeSTD()-X   
FrequencyBodyGyroscopeSTD()-Y    
FrequencyBodyGyroscopeSTD()-Z   
FrequencyBodyAccelerometerMagnitudeMean()    
FrequencyBodyAccelerometerMagnitudeSTD()    
FrequencyBodyAccelerometerJerkMagnitudeMean()    
FrequencyBodyAccelerometerJerkMagnitudeSTD()   
FrequencyBodyGyroscopeMagnitudeMean()    
FrequencyBodyGyroscopeMagnitudeSTD()    
FrequencyBodyGyroscopeJerkMagnitudeMean()    
FrequencyBodyGyroscopeJerkMagnitudeSTD()   

