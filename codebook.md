#Code Book

##Source of Data

This supplement to the code book from the source data that has been included in this github repository called features_info.txt. Please refer to this for the detailed source of the original data.

The original source data is referenced below: 
###A full description is available at the site where the data was obtained:

[Data Source Reference]: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

###Here are the data for the project:

[Data for project]: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

##Operation Performed on original data
This data is a roll up of the test and training data combining the subject, activity and the standard dev and mean of the original measured data.

The rollup of the data takes all measurements per the Subject and Activity and performs a mean operation on the individual measurements.


##Format of the data 
Space Delimited file with


###The field name can be dissected by the following key:
Unit of field is a number measured from the sensor in the phone attached the subject.
First Character
..* These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz.
..* Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing  (Note the 'f' to indicate frequency domain signals).
2. Reference frame for acceleration. The acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

3. accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ
4. The original measurement values mean(): Mean value or std(): Standard deviation
5. '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

### The supplied fieldnames
..* Subject - A numeric field identifying the person from which the measurement were taken.
..* Activity - The type of body movement the person was performing when the 
..* tBodyAccmeanX (See key above to decode field purpose)
..* tBodyAccmeanY (See key above to decode field purpose)
..* tBodyAccmeanZ (See key above to decode field purpose)
..* tBodyAccstdX (See key above to decode field purpose)
..* tBodyAccstdY (See key above to decode field purpose)
..* tBodyAccstdZ (See key above to decode field purpose)
..* tGravityAccmeanX (See key above to decode field purpose)
..* tGravityAccmeanY (See key above to decode field purpose)
..* tGravityAccmeanZ (See key above to decode field purpose)
..* tGravityAccstdX (See key above to decode field purpose)
..* tGravityAccstdY (See key above to decode field purpose)
..* tGravityAccstdZ (See key above to decode field purpose)
..* tBodyAccJerkmeanX (See key above to decode field purpose)
..* tBodyAccJerkmeanY (See key above to decode field purpose)
..* tBodyAccJerkmeanZ (See key above to decode field purpose)
..* tBodyAccJerkstdX (See key above to decode field purpose)
..* tBodyAccJerkstdY (See key above to decode field purpose)
..* tBodyAccJerkstdZ (See key above to decode field purpose)
..* tBodyGyromeanX (See key above to decode field purpose)
..* tBodyGyromeanY (See key above to decode field purpose)
..* tBodyGyromeanZ (See key above to decode field purpose)
..* tBodyGyrostdX (See key above to decode field purpose)
..* tBodyGyrostdY (See key above to decode field purpose)
..* tBodyGyrostdZ (See key above to decode field purpose)
..* tBodyGyroJerkmeanX (See key above to decode field purpose)
..* tBodyGyroJerkmeanY (See key above to decode field purpose)
..* tBodyGyroJerkmeanZ (See key above to decode field purpose)
..* tBodyGyroJerkstdX (See key above to decode field purpose)
..* tBodyGyroJerkstdY (See key above to decode field purpose)
..* tBodyGyroJerkstdZ (See key above to decode field purpose)
..* tBodyAccMagmean (See key above to decode field purpose)
..* tBodyAccMagstd (See key above to decode field purpose)
..* tGravityAccMagmean (See key above to decode field purpose)
..* tGravityAccMagstd (See key above to decode field purpose)
..* tBodyAccJerkMagmean (See key above to decode field purpose)
..* tBodyAccJerkMagstd (See key above to decode field purpose)
..* tBodyGyroMagmean (See key above to decode field purpose)
..* tBodyGyroMagstd (See key above to decode field purpose)
..* tBodyGyroJerkMagmean (See key above to decode field purpose)
..* tBodyGyroJerkMagstd (See key above to decode field purpose)
..* fBodyAccmeanX (See key above to decode field purpose)
..* fBodyAccmeanY (See key above to decode field purpose)
..* fBodyAccmeanZ (See key above to decode field purpose)
..* fBodyAccstdX (See key above to decode field purpose)
..* fBodyAccstdY (See key above to decode field purpose)
..* fBodyAccstdZ (See key above to decode field purpose)
..* fBodyAccmeanFreqX (See key above to decode field purpose)
..* fBodyAccmeanFreqY (See key above to decode field purpose)
..* fBodyAccmeanFreqZ (See key above to decode field purpose)
..* fBodyAccJerkmeanX (See key above to decode field purpose)
..* fBodyAccJerkmeanY (See key above to decode field purpose)
..* fBodyAccJerkmeanZ (See key above to decode field purpose)
..* fBodyAccJerkstdX (See key above to decode field purpose)
..* fBodyAccJerkstdY (See key above to decode field purpose)
..* fBodyAccJerkstdZ (See key above to decode field purpose)
..* fBodyAccJerkmeanFreqX (See key above to decode field purpose)
..* fBodyAccJerkmeanFreqY (See key above to decode field purpose)
..* fBodyAccJerkmeanFreqZ (See key above to decode field purpose)
..* fBodyGyromeanX (See key above to decode field purpose)
..* fBodyGyromeanY (See key above to decode field purpose)
..* fBodyGyromeanZ (See key above to decode field purpose)
..* fBodyGyrostdX (See key above to decode field purpose)
..* fBodyGyrostdY (See key above to decode field purpose)
..* fBodyGyrostdZ (See key above to decode field purpose)
..* fBodyGyromeanFreqX (See key above to decode field purpose)
..* fBodyGyromeanFreqY (See key above to decode field purpose)
..* fBodyGyromeanFreqZ (See key above to decode field purpose)
..* fBodyAccMagmean (See key above to decode field purpose)
..* fBodyAccMagstd (See key above to decode field purpose)
..* fBodyAccMagmeanFreq (See key above to decode field purpose)
..* fBodyBodyAccJerkMagmean (See key above to decode field purpose)
..* fBodyBodyAccJerkMagstd (See key above to decode field purpose)
..* fBodyBodyAccJerkMagmeanFreq (See key above to decode field purpose)
..* fBodyBodyGyroMagmean (See key above to decode field purpose)
..* fBodyBodyGyroMagstd (See key above to decode field purpose)
..* fBodyBodyGyroMagmeanFreq (See key above to decode field purpose)
..* fBodyBodyGyroJerkMagmean (See key above to decode field purpose)
..* fBodyBodyGyroJerkMagstd (See key above to decode field purpose)
..* fBodyBodyGyroJerkMagmeanFreq (See key above to decode field purpose)


