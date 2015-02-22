library(dplyr)

#Step1: Merge training and test sets

        #read in the subjects for each record in the training set and test set
        train.subs <- read.table('subject_train.txt', header = FALSE)
        test.subs <- read.table('subject_test.txt', header = FALSE)

        #read in the activity type for each record in the training set and test set
        train.action <- read.table('y_train.txt', header = FALSE)
        test.action <- read.table('y_test.txt', header = FALSE)

        #want to learn how to use fread for this as it is a huge table and it takes a while to read it in
        #read in all other variables for the training set and test set
        train.vars <- read.table('X_train.txt', header = FALSE)
        test.vars <- read.table('X_test.txt', header = FALSE)

        #update the "vars" data frames to include the subject and activity by cbinding them
        train.vars <- cbind(train.subs,train.action,train.vars)
        test.vars <- cbind(test.subs,test.action,test.vars)

        #create one dataset by rbinding the training and test set together
        records <- rbind(train.vars,test.vars)

#Step2: Extract the mean and std measurements only
        
        #read in the features (aka variable names)
        vars <- read.table('features.txt', header = FALSE, stringsAsFactors = FALSE)
        
        #add in the participant and activity variables to the vector
        #we also only need the second column of the data frame
        vars <- rbind("Participant","Activity.Code", vars)[,2]
        
        #we want the first 2 columns (with the subject and activity) and those that contain "mean()" or "std()"
        records <- records[,c(1:2,which(grepl("mean()|std()",vars)))]
        
        #now update vars to only include the columns that we kept
        #note that the parenthesis don't work correctly is basically picks up anything with "mean"
        #i am not sure why that is but someone on the forum said you have to use escape characters or something
        vars <- vars[c(1:2,which(grepl("mean()|std()",vars)))]
        
#Step3: Use descriptive names to name the activities in the data set
        
        #change the activity number to the corresponding activivty name
        #read in the activity names
        actions <- read.table('activity_labels.txt', header = FALSE, stringsAsFactors = FALSE)
        
        #we only need the second column with the names (and to conver it to lowercase)
        actions <- tolower(actions[,2])
        
        #convert the activity numbers to the corresponding activity name (and convert from data frame to vector)
        records[,2] <- actions[records[,2]]
        
#Step4: Label the data set with descriptive names
        
        #change the column names of the records dataframe to the correct variable name
        colnames(records) <- vars

#step 5:create a tidy data set
        
        #the forums speak of multiple ways to do this so I may want to go back and read more about them
        #create a tidy data set by grouping the records data frame by Partcipant and Activity, then
        #summarize each measure for each particular Partcipant/Activity grouping
        tidy1 <- records %>% group_by(Participant,Activity.Code) %>% summarise_each(funs(mean))


#Step 6: Return the tidy data set
        tidy1

