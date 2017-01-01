Codebook for tidy dataset
==================================

## Variables
````
subject                                                     1..2
    Subject number                      
                                                            1..30 .Unique identifier assigned to each subject                      
                      
label                                                       6..18
    Acitivity label                      
                                                            "WALKING"
                                                            "WALKING_UPSTAIRS"
                                                            "WALKING_DOWNSTAIRS"
                                                            "SITTING"
                                                            "STANDING"
                                                            "LAYING"
                      
timeBodyAccelerometerMeanX                                  12
    Described below

timeBodyAccelerometerMeanY                                  12
    Described below                               
                                
timeBodyAccelerometerMeanZ                                  12
    Described below                               
                                
timeBodyAccelerometerStandardDeviationX                     12
    Described below                               
                                
timeBodyAccelerometerStandardDeviationY                     12
    Described below                               
                                
timeBodyAccelerometerStandardDeviationZ                     12
    Described below                               
                                
timeGravityAccelerometerMeanX                               12
    Described below                               
                                
timeGravityAccelerometerMeanY                               12
    Described below                               
                                
timeGravityAccelerometerMeanZ                               12
    Described below                               
                                
timeGravityAccelerometerStandardDeviationX                  12
    Described below                               
                                
timeGravityAccelerometerStandardDeviationY                  12
    Described below                               
                                
timeGravityAccelerometerStandardDeviationZ                  12
    Described below                               
                                
timeBodyAccelerometerJerkMeanX                              12
    Described below                               
                                
timeBodyAccelerometerJerkMeanY                              12
    Described below                               
                                
timeBodyAccelerometerJerkMeanZ                              12
    Described below                               
                                
timeBodyAccelerometerJerkStandardDeviationX                 12
    Described below                               
                                
timeBodyAccelerometerJerkStandardDeviationY                 12
    Described below                               
                                
timeBodyAccelerometerJerkStandardDeviationZ                 12
    Described below                               
                                
timeBodyGyroscopeMeanX                                      12
    Described below                               
                                
timeBodyGyroscopeMeanY                                      12
    Described below                               
                                
timeBodyGyroscopeMeanZ                                      12
    Described below                               
                                
timeBodyGyroscopeStandardDeviationX                         12
    Described below                               
                                
timeBodyGyroscopeStandardDeviationY                         12
    Described below                               
                                
timeBodyGyroscopeStandardDeviationZ                         12
    Described below                               
                                
timeBodyGyroscopeJerkMeanX                                  12
    Described below                               
                                
timeBodyGyroscopeJerkMeanY                                  12
    Described below                               
                                
timeBodyGyroscopeJerkMeanZ                                  12
    Described below                               
                                
timeBodyGyroscopeJerkStandardDeviationX                     12
    Described below                               
                                
timeBodyGyroscopeJerkStandardDeviationY                     12
    Described below                               
                                
timeBodyGyroscopeJerkStandardDeviationZ                     12
    Described below                               
                                
timeBodyAccelerometerMagnitudeMean                          12
    Described below                               
                                
timeBodyAccelerometerMagnitudeStandardDeviation             12
    Described below                               
                                
timeGravityAccelerometerMagnitudeMean                       12
    Described below                               
                                
timeGravityAccelerometerMagnitudeStandardDeviation          12
    Described below                               
                                
timeBodyAccelerometerJerkMagnitudeMean                      12
    Described below                               
                                
timeBodyAccelerometerJerkMagnitudeStandardDeviation         12
    Described below                               
                                
timeBodyGyroscopeMagnitudeMean                              12
    Described below                               
                                
timeBodyGyroscopeMagnitudeStandardDeviation                 12
    Described below                               
                                
timeBodyGyroscopeJerkMagnitudeMean                          12
    Described below                               
                                
timeBodyGyroscopeJerkMagnitudeStandardDeviation             12
    Described below                               
                                
frequencyBodyAccelerometerMeanX                             12
    Described below                               
                                
frequencyBodyAccelerometerMeanY                             12
    Described below                               
                                
frequencyBodyAccelerometerMeanZ                             12
    Described below                               
                                
frequencyBodyAccelerometerStandardDeviationX                12
    Described below                               
                                
frequencyBodyAccelerometerStandardDeviationY                12
    Described below                               
                                
frequencyBodyAccelerometerStandardDeviationZ                12
    Described below                               
                                
frequencyBodyAccelerometerJerkMeanX                        12
    Described below                               
                                
frequencyBodyAccelerometerJerkMeanY                        12
    Described below                               
                                
frequencyBodyAccelerometerJerkMeanZ                        12
    Described below                               
                                
frequencyBodyAccelerometerJerkStandardDeviationX           12
    Described below                               
                                
frequencyBodyAccelerometerJerkStandardDeviationY           12
    Described below                               
                                
frequencyBodyAccelerometerJerkStandardDeviationZ           12
    Described below                               
                                
frequencyBodyGyroscopeMeanX                                12
    Described below                               
                                
frequencyBodyGyroscopeMeanY                                12
    Described below                               
                                
frequencyBodyGyroscopeMeanZ                                12
    Described below                               
                                
frequencyBodyGyroscopeStandardDeviationX                   12
    Described below                               
                                
frequencyBodyGyroscopeStandardDeviationY                   12
    Described below                               
                                
frequencyBodyGyroscopeStandardDeviationZ                   12
    Described below                               
                                
frequencyBodyAccelerometerMagnitudeMean                    12
    Described below                               
                                
frequencyBodyAccelerometerMagnitudeStandardDeviation       12
    Described below                               
                                
frequencyBodyAccelerometerJerkMagnitudeMean                12
    Described below                               
                                
frequencyBodyAccelerometerJerkMagnitudeStandardDeviation   12
    Described below                               
                                
frequencyBodyGyroscopeMagnitudeMean                        12
    Described below                               
                                
frequencyBodyGyroscopeMagnitudeStandardDeviation           12
    Described below                               
                                
frequencyBodyGyroscopeJerkMagnitudeMean                    12
    Described below                               
                                
frequencyBodyGyroscopeJerkMagnitudeStandardDeviation       12
    Described below

````

## Data

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAccelerometer-XYZ and timeGravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing the frequency* variables. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


timeBodyAccelerometer-xyz

timeGravityAccelerometer-xyz

timeBodyAccelerometerJerk-xyz

timeBodyGyroscope-xyz

timeBodyGyroscopeJerk-xyz

timeBodyAccelerometerMagnitude

timeGravityAccelerometerMagnitude

timeBodyAccelerometerJerkMagnitudeMean

timeBodyGyroscopeMagnitude

timeBodyGyroscopeJerkMagnitude

frequencyBodyAccelerometer-xyz

frequencyBodyAccelerometerJerk-xyz

frequencyBodyGyroscope-xyz

frequencyBodyAccelerometerMagnitude

frequencyBodyAccelerometerJerkMagnitude

frequencyBodyGyroscopeMagnitude

frequencyBodyGyroscopeJerkMagnitude

The set of variables that were estimated from these signals are: 

mean: Mean value

std: Standard deviation

## Transformation

All the values are means, aggregated over 30 subjects and 6 activities, hence the resulting dataset is 180 rows by 68 columns.