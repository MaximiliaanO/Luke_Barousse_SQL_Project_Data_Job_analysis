This SQL project is part of the SQL course made by Luke Barousse: https://www.lukebarousse.com/sql

The dataset consists of four tables:
  1. The job_postings_fact table this table contains the main fact table with the 2023 job postings.
       The job_id is the primary key of this table.
       The foreign keys are:
         - company_id (primary key in the company_dim table)
         - job_id is also the primary key in the skills_job_dim table.
  3. The company_dim table, this table is a dimension table that contains the company information of the job postings.
  4. The skills_job_dim table, this is a bridge table between the skills_job_dim table and the skills_dim table.
     The table contains two columns, the job_id as the primary key and the skill_id as the foreign key to the skills_dim table.
  5. The skills_dim table is the dimensions table that contains all the skills needed for data analysis (p[rogramming, analysis tools, libraries, etc.)

The five queries that were uploaded represent the five closing research questions at the end of the course.

The five questions to the reserach questions were:
  1. Identify the top 10 highest-paying Data Analyst roles that are available in the Netherlands, Germany, France, UK, Spain and Norway.
  2. What are the top-paying data analyst jobs, and what skills are required?
  3. What are the most in-demand skills for data analysts?
  4. What are the top paying skills for data analysts?
  5. What are the most optimal skills to learn (aka it’s in high demand and a high-paying skill) for a data analyst? 


The techniques used are:
  1. JOINS, WHERE (Filtering), ORDER BY
  2. CTE, JOINS, WHERE (Filtering), ORDER BY
  3. AGGREGATIONS (COUNT), JOINS, WHERE (Filtering), GROUP BY, ORDER BY
  4. AGGREGATIONS (AVERAGE), JOINS, WHERE (Filtering), GROUP BY, ORDER BY
  5. CTE, JOINS, WHERE (Filtering), GROUP BY, ORDER BY
