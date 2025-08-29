/* Answer: What are the most optimal skills to learn (aka it’s in high demand and a high-paying skill) for a data analyst? 
    - Identify skills in high demand and associated with high average salaries for Data Analyst roles
    - Concentrates on remote positions with specified salaries
    -Why? Targets skills that offer job security (high demand) and financial benefits (high salaries), offering strategic insights for career development in data analysis

*/

WITH skills_demand AS
(
    SELECT
        skills_dim.skills,
        COUNT(job_postings_fact.job_id) AS number_of_jobs
    FROM job_postings_fact
    INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
    WHERE
        job_location IN ('Netherlands', 'Germany', 'France', 'Spain', 'United Kingdom', 'Norway')
    GROUP BY
        skills_dim.skills
    ORDER BY
        number_of_jobs DESC
), average_salary AS
(   SELECT
        skills_dim.skills,
        skills_dim.type,
        ROUND(AVG(salary_year_avg), 0) AS avg_salary
    FROM job_postings_fact
    INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
    WHERE
        job_location IN ('Netherlands', 'Germany', 'France', 'Spain', 'United Kingdom', 'Norway') AND
        salary_year_avg IS NOT NULL
    GROUP BY
        skills_dim.skills,
        skills_dim.type
    ORDER BY
        avg_salary DESC
)

SELECT *
FROM skills_demand
LEFT JOIN average_salary ON average_salary.skills = skills_demand.skills
WHERE avg_salary IS NOT NULL
ORDER BY number_of_jobs DESC