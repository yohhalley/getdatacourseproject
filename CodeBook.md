# Code Book
## Human Activity Recognition Using Smartphones Dataset

### Categorical Variables.

* Activity = Activity code
  1. WALKING
  2. WALKING_UPSTAIRS
  3. WALKING_DOWNSTAIRS
  4. SITTING
  5. STANDING
  6. LAYING
  
* Subject = Subject ID. Ranges from 1 to 30, indicating which study subject this measurements belong to. 

### Numerical Variables.

NOTE: Variables ending in XYZ indicate that these corresponds to 3 different measurements, one per each direction of movement (i.e . tBodyAcc-mean()-XYZ implies a tBodyAcc-mean()-X variable, tBodyAcc-mean()-Y, and tBodyAcc-mean()-Z). All measurements have ben normalized (-1, 1).

* tBodyAcc-mean()-XYZ: Mean body linear acceleration.
* tBodyAcc-std()-XYZ: Standard deviation of body linear acceleration.
* tGravityAcc-mean()-XYZ: Mean gravitational acceleration. (Fast fourier transform was applied).
* tGravityAcc-std()-XYZ: Standard deviation of gravitational acceleration. (Fast fourier transform was applied).
* tBodyAccJerk-mean()-XYZ: Mean body jerk signal. (Fast fourier transform was applied).
* tBodyAccJerk-std()-XYZ: Standard deviation of body jerk signal. (Fast fourier transform was applied).
* tBodyGyro-mean()-XYZ: Mean giroscope signal. (Fast fourier transform was applied).
* tBodyGyro-std()-XYZ: Standard deviation of giroscope signal. 
* tBodyGyroJerk-mean()-XYZ: Mean Frequency of body gyroscope signal.
* tBodyGyroJerk-std()-XYZ: Standard deviation of body gyroscope signal.
* fBodyAcc-mean()-XYZ: Mean body linear acceleration, in fourier space.
* fBodyAcc-std()-XYZ: Standard deviation of body linear acceleration, in fourier space.
* fBodyAcc-meanFreq()-XYZ: Weighted average of the frequency components of body acceleation, in fourier space.
* fBodyAccJerk-mean()-XYZ: Mean body jerk signal, in fourier space.
* fBodyAccJerk-std()-XYZ: Standard deviation of gravitational acceleration, in fourier space.
* fBodyAccJerk-meanFreq()-XYZ:  Weighted average of the frequency componentsof body jerk acceleration, in fourier space.
* fBodyGyro-mean()-XYZ: Mean giroscope signal, in fourier space.
* fBodyGyro-std()-XYZ: Standard deviation of giroscope signal, in fourier space.
* fBodyGyro-meanFreq()-XYZ: Weighted average of the frequency components of body gyroscope signal, in fourier space.
* tBodyAccMag-mean(): Mean body acceleration magnitude(Euclidean distance).
* tBodyAccMag-std():Standard deviation of body acceleration magnitude (Euclidean distance).
* tGravityAccMag-mean(): Mean graviational acceleration magnitude (Euclidean distance).
* tGravityAccMag-std(): Standard deviation of graviational acceleration magnitude (Euclidean distance).
* tBodyAccJerkMag-mean():  Mean body acceleration magnitude (Euclidean distance).
* tBodyAccJerkMag-std(): Standard deviation of body acceleration magnitude (Euclidean distance).
* tBodyGyroMag-mean(): Mean body giroscope magnitude (Euclidean distance).
* tBodyGyroMag-std(): Standard deviation of  body giroscope magnitude (Euclidean distance).
* tBodyGyroJerkMag-mean(): Mean gyroscope jerk magnitude (Euclidean distance).
* tBodyGyroJerkMag-std(): Standard deviation of gyroscope jerk magnitude (Euclidean distance).
* fBodyAccMag-mean(): Mean body acceleration magnitude, in fourier space.
* fBodyAccMag-std(): Standard deviation body acceleration magnitude, in fourier space.
* fBodyAccMag-meanFreq(): Mean body acceleration magnitude, in fourier space.
* fBodyBodyAccJerkMag-mean(): Mean Body acceleration jerk magnitude, in fourier space.
* fBodyBodyAccJerkMag-std(): standard deviation of body acceleration jerk magnitude, in fourier space.
* fBodyBodyAccJerkMag-meanFreq(): Weighted average of the frequency components of acceleration jerk magnitude, in fourier space.
* fBodyBodyGyroMag-mean(): Mean body gyroscope magnitude, in fourier space.
* fBodyBodyGyroMag-std(): Standard deviation of body gyroscope magnitude, in fourier space.
* fBodyBodyGyroMag-meanFreq(): Weighted average of the frequency components of body gyroscope magnitude, in fourier space.
* fBodyBodyGyroJerkMag-mean(): Mean body gyroscope jerk magnitude, in fourier space.
* fBodyBodyGyroJerkMag-std(): standard deviation of body gyroscope jerk magnitude, in fourier space.
* fBodyBodyGyroJerkMag-meanFreq():  Weighted average of the frequency components of body gyroscope jerk magnitude, in fourier space.
