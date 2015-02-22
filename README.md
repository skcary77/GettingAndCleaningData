The script run_analysis.R creates a tidy set with information collected from the accelerometers on a Samsung phone. The tidy has been summarized to show the average reading of each variable 
for each participant/activity combination.For example, the "tBodyAcc-mean()-X" column in the row where the participant is 1 and the activity is "laying", represents the mean tBodyAcc-mean()-X reading
taken across the entire measurement window for that participant and that activity. Detailed information regarding the raw
data and what variables were kept are availble in the Code Book. 

For the script to run properly, the following files must be in the User's working directory:
* subject_train.txt
* subject_test.txt
* y_train.txt
* y_train.txt
* X_train.txt
* X_train.txt
* features.txt
* activity_labels.txt

The script transforms the data in the following manner (more deatiled comments are included in the script itself):
* Step 1: Merges the training and test sets together to form one dataset
* Step 2: Only keeps variables in which in the word "mean" or "std" is included in the variable name
* Step 3: Changes the activity code from a numeric value to a more descriptive name
* Step 4: Labels all variables in the database with a decriptive name (see the Code Book for more information)
* Step 5: Summarizes the data to show the average reading of each variable for each participant/activity combination (more info in the Code Book).
* Step 6: Returns the tidy dataset
