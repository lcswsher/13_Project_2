-- Data Queries 13_project_2

-- Glass Door, List company_name, salary_range.

select g.company_name as "Company Name", g.salary_range as "Salary Ranges" 
from glassdoor as g
order by g.company_name;

-- Job Post, List company_name, job_title.

select j.company_name as "Company Name", job_title as "Job_Title" 
from job_post as j
order by j.company_name;

-- Job Post - List company_name & Glass Door - List Salary Range
-- Inner Join on Company Name in tables Job Post and Glass Door: 

select j.company_name as "Company Name", g.salary_range as "Salary Ranges"
from job_post as j
join glassdoor as g on g.company_name = j.company_name
order by g.company_name;





