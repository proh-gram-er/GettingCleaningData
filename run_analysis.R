setwd("~/Projects/R/getting-cleaning-data/peer-assignment")
library(dplyr)

# Read the features list
features <- read.table("data/features.txt")$V2

# Retrieve indicies of the features that represent either a "mean" or
# "standard deviation"
featuresIndicies <- as.vector(grep("^.*mean\\(\\)|std\\(\\).*$", features))

# Read the human-readable activity labels
activityLabels <- read.table("data/activity_labels.txt")

# Read the subject ids
subjects <- read.table("data/train/subject_train.txt") %>% 
    rbind(read.table("data/test/subject_test.txt"))

# Bind the rows of test and train activity labels
# and left join the activityLabels data set
# so that that  the activity in available in 
# a human-readable format
labels <- read.table("data/train/y_train.txt") %>% 
    rbind(read.table("data/test/y_test.txt")) %>% 
    left_join(activityLabels)


# Bind the rows of test and train activity labels
# and select only the columns that represent either
# a mean or a standard deviation
dataSet <- read.table("data/train/X_train.txt") %>% 
    rbind(read.table("data/test/X_test.txt")) %>%
    select(featuresIndicies)
# Name the columns after their features
colnames(dataSet) <- features[featuresIndicies]

# Add the  "activity" column to the leftmost position (personal preference)
dataSet <- mutate(dataSet, activity = labels$V2) %>% 
    select(activity, c(-activity))

# Add the  "subject.id" column to the leftmost position (personal preference)
dataSet <- mutate(dataSet, subject.id = subjects$V1) %>% 
    select(subject.id, c(-subject.id))

# Create a data set that creates averages for all variables grouped by
# "subject.id" and "activity"
averagesPerSubject <- dataSet %>% 
    group_by(subject.id, activity) %>% 
    summarise_all(funs(mean))

# Prettify variable names for easier reading
names(averagesPerSubject) <- names(averagesPerSubject) %>% 
   {gsub("-", ".", .)} %>%
    {gsub("\\(\\)", "", .)}

# Write the table out to file
write.table(averagesPerSubject, "averagesPerSubject.txt", row.name = FALSE)

averagesPerSubject