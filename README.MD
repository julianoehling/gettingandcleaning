# ReadMe

## Overview

There are four relevant files:

* run_analysis.R: This R script contains the code to create tidy data from the raw data as per given task.
* tidy_data.txt: This is the tidy data output from run_analysis.R
* CodeBook.MD: This document is the code book explaining the content of tidy_data.txt
* README.MD: The file you are currently reading

## Purpose

The purpose of these four documents is to fulfil the task given in the course project by the Coursera Getting And Cleaning Data class.

## Assumptions

* It is assumed, that the raw data files are present and unzipped. There is no requirement to download or unzip data in the task description.
* Only parameters with the ending mean() or std() are considered to be relevant for the task. Other parameters containing mean (e.g. MeanFreq) are described as weighted averaages and therefore excluded.
* In order to create descriptive variable names, long expressions are inserted (Gyroscope instead of Gyro), typos removed (Body instead of BodyBody), parantheses and dots are removed and lower case is used. All choices are made to comply with the week 4 lecture on appropriate naming.
* The dplyr package is used, as it was used during lectures in this module and is therefore assumed to be available.

## Tidy data

* Tidy data is created, because each column will contain only one variable and each row only one observation.
* An observation is understood as a combination of subject and activity, so each row is a unique observation. This means that the wide form of tidy data is used.

