# Getting and Cleaning Data: Course Project

## Introduction

This repository contains my solution to assignment part of the Coursera course 
"Getting and Cleaning data", part of the Data Science specialization. 

run_analysis.R script will perform the following:
    1. Merges the training and the test sets to create one data set
    2. Extracts only the measurements on the mean and standard deviation for 
    each measurement.
    3. Replaces activities id with activities labels.
    4. Creates a second, independent tidy data set with the average of 
    each variable for each activity and each subject.
    5. Outputs dataset from step 4 to "averagesPerSubject.txt" file.

## Prerequisites

* The working directory to be the root of this repository
* The [UCI HAR Dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) 
to be downloaded and saved to a folder called "data"
in the root of the repository
* To have [dplyr](https://dplyr.tidyverse.org) library installed

## About the Code Book

This repo also contains a CodeBook.md file that explains the data in detail.
