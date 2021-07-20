
# Data Science Job Postings Project 2
## Dalton, Harika, Jucary, Yuting, Clay


## Project Proposal 

The ETL process is composed of Extract, Transform, and Load subprocesses. 
 
All members will be using Pandas to clean the data, final cleaning and merging into one table using Pandas.

Proposal:
The goal for this project is to extract, transform and load the data we found for jobs in the field of Data Science. Our project started with the idea of finding salary information for the job posts made on different platforms.


## Project Report

### EXTRACT


### Source Data (csv):

### [Data Scientist Job Postings](https://data.world/jobspikr/10000-data-scientist-job-postings-from-the-usa)


### [Glass Door Data Scientist Data](https://www.kaggle.com/milan400/glassdoordata-scientist?select=glassdoor.csv)


We decided to do our research and gather data to figure what salary options Data Scientist have based on different companies. 

The original data sources we based our analysis are from Glassdoor and Data Scientist Job Postings from U.S. We pulled this data from Kaggle.

1. We decided to be specific with the job titles and work with only Data Scientist. After that was a success we moved on to companies names and eliminated duplicate companies names, the splitting method was used to have the code be succesful. 

![image](https://user-images.githubusercontent.com/82185341/126244962-b551178b-f948-43b4-81d3-26e43214c233.png)

From this data we were able to show the data scientist job posting by company names.


2. From Glassdoor the data was combined based in companies names and merged to see the salaries. 

![image](https://user-images.githubusercontent.com/82185341/126245641-515edaca-d66d-44c1-8b64-31b287ae8983.png)


3. After merging the two databases we were able to match out of 2894 companies 73 companies and their salaries.

Thanks to this merge we were able to identify the top 5 high paying companies on average for Data Scientist. 

![image](https://user-images.githubusercontent.com/82185341/126246927-6b73869e-b54d-4848-80b4-af94f1829e8d.png)
![image](https://user-images.githubusercontent.com/82185341/126247030-f87ea220-38b3-478f-ae4c-13949b89d5d0.png)
![image](https://user-images.githubusercontent.com/82185341/126246567-71f1a862-7a77-459f-b91e-26431c8aba76.png)
![image](https://user-images.githubusercontent.com/82185341/126246621-94f232bb-6b13-4198-b1ac-f24b06619c83.png)




### TRANSFORM

The two raw csv files were not originally formatted properly to be loaded into the relational database. Therefore the team embarked on a wonderful data transformation journey.

For the job post csv the following tasks were accomplished to transform the data:

1. NA values were dropped
2. Job Title was filtered for Data Scientist (originally contained Analyst roles as well as Data engineering)
3. Company names were cleaned. The team decided to titlecase all company names for consistency as well as remove corporate tags such as INC, inc, LLC, etc.
4. The data was grouped by company name to prepare for joining in the database.
5. Output new dataframe as csv for data loading into relational database.


For the glassdoor job posts csv the following tasks were accomplished to transform the data:
1. Unnessary columns outside the scope of the project were dropped first.
2. Duplicate company name rows were dropped
3. Company Name column strings were filtered (all contained unnecessary numeric data)
4. Company Name column also had corporate tags removed and was title cased.
5. Salary Estimate column was cleaned and formatted to the team's liking.
6. Output new dataframe as csv for data loading into relational database.

### LOAD

The final database was contructed with 2 tables. 

1. Job Post table:
Contains loaded data from job posts csv. (Companry Name as fk, and job title)


2. Glassdoor table:
Contains loaded data from glassdoor csv. (Company Name as pk, and Salary Range)











