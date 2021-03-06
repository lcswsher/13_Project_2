
# Data Science Job Postings Project 2
## Dalton, Harika, Jucary, Yuting, Clay


## Project Report

### EXTRACT


### Source Data (csv):

### [Data Scientist Job Postings](https://data.world/jobspikr/10000-data-scientist-job-postings-from-the-usa)


### [Glass Door Data Scientist Data](https://www.kaggle.com/milan400/glassdoordata-scientist?select=glassdoor.csv)


We decided to do our research and gather data to figure what salary options Data Scientist have based on different companies. 

The original data sources we based our ETL are from Glassdoor and Data Scientist Job Postings from U.S. We pulled this data from Kaggle.

1. We decided to be specific with the job titles and work with only Data Scientist. After that was a success we moved on to companies names and eliminated duplicate companies names, the splitting method was used to have the code be successful. 

![image](C:\Users\sreek\Desktop\13_Project_2\repeating_names.png)
![image](C:\Users\sreek\Desktop\13_Project_2\data_scientist.png)

From this data we were able to show the data scientist job posting by company names.


2. From Glassdoor the data was combined based in companies names and merged to see the salaries. 

![image](C:\Users\sreek\Desktop\13_Project_2\merged_df.png)


3. After merging the two databases we were able to match out of 2894 companies 73 companies and their salaries.


### TRANSFORM

The two raw csv files were not originally formatted properly to be loaded into the relational database. Therefore the team embarked on a wonderful data transformation journey.

For the job post csv the following tasks were accomplished to transform the data:

1. NA values were dropped
2. Job Title was filtered for Data Scientist (originally contained Analyst roles as well as Data engineering)
3. Company names were cleaned. The team decided to titlecase all company names for consistency as well as remove corporate tags such as INC, inc, LLC, etc.
4. The data was grouped by company name to prepare for joining in the database.
5. Output new dataframe as csv for data loading into relational database.


For the glassdoor job posts csv the following tasks were accomplished to transform the data:
1. Unnecessary columns outside the scope of the project were dropped first.
2. Duplicate company name rows were dropped
3. Company Name column strings were filtered (all contained unnecessary numeric data)
4. Company Name column also had corporate tags removed and was title cased.
5. Salary Estimate column was cleaned and formatted to the team's liking.
6. Output new dataframe as csv for data loading into relational database.

### LOAD

The final database contains two tables. 

1. Job Post table:
Contains loaded data from job posts csv. (Companry Name as fk, and job title)


2. Glassdoor table:
Contains loaded data from glassdoor csv. (Company Name as pk, and Salary Range)



![Data_Model_13_project_2](sql_files\Data_Model_13_project_2.PNG)








