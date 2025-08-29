/* 

Question: What are the top-paying data analyst jobs?
    Identify the top 10 highest-paying Data Analyst roles that are available in the Netherlands, Germany, France, UK, Spain and Norway.
    Focuses on job postings with specified salaries.
    Why? Aims to highlight the top-paying opportunities for Data Analysts, offering insights into employment options and location flexibility.
*/

SELECT
    job_id,
    job_title_short,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    company_dim.name AS company_name
FROM
    job_postings_fact
    LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_location IN ('Netherlands', 'Germany', 'France', 'Spain', 'United Kingdom', 'Norway') AND
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 10
