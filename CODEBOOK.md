# Code Book for Gathering and Cleaning Project

## Key Variables
The following are the variables the data set is grouped by:
subject – the person the data is collected from, numbered 1-30.
Activityname – the activity the subject performed.
Dataset – “Train” or “Test” to distinguish the training dataset from the test dataset.

## Notes on variable names
A “t” in front of the variable donates time  
An “f” in front of the variable donates frequency  
“acc” is data collected from a 3-axis raw signal accelerometer.   
“gyro” is data collected from a gyroscopre  
The “x”, “y”, or “z” at the end of the variable name donates the axis.  
The are two types of signals for acceleration, “body” and “gravity”  
Body linear acceleration and angular velocity were derived in time to obtain Jerk signals and is donated by “jerk”  
The magnitude of these three-dimensional signals were calculated using the Euclidean norm and is donated by “mag”  
“mean” donates the mean value and “std” donates the standard deviation.  
The average of the signals in a signal window sample is donated by “angle”  

## Variable Names
tbodyaccmeanx  
tbodyaccmeany  
tbodyaccmeanz  
tbodyaccstdx  
tbodyaccstdy  
tbodyaccstdz  
tgravityaccmeanx  
tgravityaccmeany  
tgravityaccmeanz  
tgravityaccstdx  
tgravityaccstdy  
tgravityaccstdz  
tbodyaccjerkmeanx  
tbodyaccjerkmeany  
tbodyaccjerkmeanz  
tbodyaccjerkstdx  
tbodyaccjerkstdy  
tbodyaccjerkstdz  
tbodygyromeanx  
tbodygyromeany  
tbodygyromeanz  
tbodygyrostdx  
tbodygyrostdy  
tbodygyrostdz  
tbodygyrojerkmeanx  
tbodygyrojerkmeany  
tbodygyrojerkmeanz  
tbodygyrojerkstdx  
tbodygyrojerkstdy  
tbodygyrojerkstdz  
tbodyaccmagmean  
tbodyaccmagstd  
tgravityaccmagmean  
tgravityaccmagstd  
tbodyaccjerkmagmean  
tbodyaccjerkmagstd  
tbodygyromagmean  
tbodygyromagstd  
tbodygyrojerkmagmean  
tbodygyrojerkmagstd  
fbodyaccmeanx  
fbodyaccmeany  
fbodyaccmeanz  
fbodyaccstdx  
fbodyaccstdy  
fbodyaccstdz  
fbodyaccmeanfreqx  
fbodyaccmeanfreqy  
fbodyaccmeanfreqz  
fbodyaccjerkmeanx  
fbodyaccjerkmeany  
fbodyaccjerkmeanz  
fbodyaccjerkstdx  
fbodyaccjerkstdy  
fbodyaccjerkstdz  
fbodyaccjerkmeanfreqx  
fbodyaccjerkmeanfreqy  
fbodyaccjerkmeanfreqz  
fbodygyromeanx  
fbodygyromeany  
fbodygyromeanz  
fbodygyrostdx  
fbodygyrostdy  
fbodygyrostdz 
fbodygyromeanfreqx  
fbodygyromeanfreqy  
fbodygyromeanfreqz  
fbodyaccmagmean  
fbodyaccmagstd  
fbodyaccmagmeanfreq  
fbodybodyaccjerkmagmean  
fbodybodyaccjerkmagstd  
fbodybodyaccjerkmagmeanfreq  
fbodybodygyromagmean  
fbodybodygyromagstd  
fbodybodygyromagmeanfreq  
fbodybodygyrojerkmagmean   
fbodybodygyrojerkmagmeanfreq  
angletbodyaccmeangravity  
angletbodyaccjerkmeangravitymean  
angletbodygyromeangravitymean  
angletbodygyrojerkmeangravitymean  
anglexgravitymean  
angleygravitymean  
anglezgravitymean  
