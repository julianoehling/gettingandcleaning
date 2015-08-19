# CodeBook

## tidy_data.txt
The text file tidy_data.txt contains the output of run_analysis.R. It complies with the principles of tidy data as described by Hadley Wickham in [his paper.](http://www.jstatsoft.org/v59/i10/paper)

### Columns
The file contains 68 variables is 68 columns. The first column identifies the subject by an unique id ranging from 1 to 30:

* subjects: unique integer id from 1 to 30

The second column identifies the activity by one of 6 factors.

* activity: 6 factors: LAYING, SITTING; STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS

The following 66 columns contain the mean as a numeric value normalised between -1 and 1 from each parameter:

* timebodyaccelerometer mean x
* timebodyaccelerometer mean y
* timebodyaccelerometer mean z
* timebodyaccelerometer std x
* timebodyaccelerometer std y
* timebodyaccelerometer std z
* timegravityaccelerometer mean x
* timegravityaccelerometer mean y
* timegravityaccelerometer mean z
* timegravityaccelerometer std x
* timegravityaccelerometer std y
* timegravityaccelerometer std z
* timebodyaccelerometerjerk mean x
* timebodyaccelerometerjerk mean y
* timebodyaccelerometerjerk mean z
* timebodyaccelerometerjerk std x      
* timebodygyroscope mean z                   
* timebodygyroscope std x
* timebodygyroscope std y
* timebodygyroscope std z
* timebodygyroscopejerk mean x
* timebodygyroscopejerk mean y
* timebodygyroscopejerk mean z
* timebodygyroscopejerk std x
* timebodygyroscopejerk std y
* timebodygyroscopejerk std z
* timebodyaccelerometermagnitude mean
* timebodyaccelerometermagnitude std
* timegravityaccelerometermagnitude mean
* timegravityaccelerometermagnitude std
* timebodyaccelerometerjerkmagnitude mean
* timebodyaccelerometerjerkmagnitude std
* timebodygyroscopemagnitude mean
* timebodygyroscopemagnitude std
* timebodygyroscopejerkmagnitude mean
* timebodygyroscopejerkmagnitude std
* frequencybodyaccelerometer mean x
* frequencybodyaccelerometer mean y
* frequencybodyaccelerometer mean z
* frequencybodyaccelerometer std x
* frequencybodyaccelerometer std y
* frequencybodyaccelerometer std z
* frequencybodyaccelerometerjerk mean x
* frequencybodyaccelerometerjerk mean y
* frequencybodyaccelerometerjerk mean z
* frequencybodyaccelerometerjerk std x
* frequencybodyaccelerometerjerk std y
* frequencybodyaccelerometerjerk std z
* frequencybodygyroscope mean x
* frequencybodygyroscope mean y
* frequencybodygyroscope mean z
* frequencybodygyroscope std x
* frequencybodygyroscope std y
* frequencybodygyroscope std z
* frequencybodyaccelerometermagnitude mean
* frequencybodyaccelerometermagnitude std
* frequencybodyaccelerometerjerkmagnitude mean
* frequencybodyaccelerometerjerkmagnitude std
* frequencybodygyroscopemagnitude mean
* frequencybodygyroscopemagnitude std
* frequencybodygyroscopejerkmagnitude mean
* frequencybodygyroscopejerkmagnitude std

### Rows

Each row contains one observation, which means one combination of subject and activity and the respective mean values.

## Data Source
The data was created by Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

Human Activity Recognition Using Smartphones Dataset
Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.

* Features are normalized and bounded within [-1,1].
* Each feature vector is a row on the text file.

