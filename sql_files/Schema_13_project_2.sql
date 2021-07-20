-- Creating table schema for 13_project_2 (2 tables)
-- Drop tables (if they have been set up)  

DROP TABLE IF EXISTS job_post;
DROP TABLE IF EXISTS glassdoor;

-- 1) Creating Job_Post Table

CREATE TABLE job_post(
	company_name varchar(250),
	job_title varchar(300)	
);

-- 2) Creating Glassdoor Table

CREATE TABLE glassdoor(
	company_name varchar(250),
	salary_range varchar(300),	
	primary key (company_name)
);

-- ALTER TABLE job_post ADD CONSTRAINT fk_company_name FOREIGN KEY(company_name)
-- REFERENCES glassdoor (company_name);



