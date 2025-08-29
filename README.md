This SQL project is part of the SQL course made by Luke Barousse: https://www.lukebarousse.com/sql

In this project I analyzed job postings from the year 2023 to identify the most in-demand and highest-paying skills for data analysts across several European countries. 
This helps aspiring data professionals (including myself) understand which skills are most valuable to learn in today’s job market.

The dataset consists of four tables:
  job_postings_fact (fact table, job postings incl. salary, location, date, company_id)
  company_dim (company info, joined on company_id)
  skills_job_dim (bridge table, job_id ↔ skill_id)
  skills_dim (dimension table, skill names and categories)

The five queries that were uploaded represent the five closing research questions at the end of the course.

The five questions to the reserach questions were:
  1. Identify the top 10 highest-paying Data Analyst roles that are available in the Netherlands, Germany, France, UK, Spain and Norway.
  2. What are the top-paying data analyst jobs, and what skills are required?
  3. What are the most in-demand skills for data analysts?
  4. What are the top paying skills for data analysts?
  5. What are the most optimal skills to learn (aka it’s in high demand and a high-paying skill) for a data analyst?

Results:
  1. Machine Learning Engineers, Sr. Data Scientist, Software Engineer, Data Analyst.
  2. Top paying jobs: similar to questions 1., skills required: Python, AWS, PostgresSQL, PyTorch, C++,  Scala, Spark.
  3. Top five in demand skills for data analysis jobs in several European countries: Python, SQL, Azure, AWS, PowerBI.
  4. Top five paying skills by salary: mySQL (databases), debian (OS), C++ (programming), postgressql (databases), neo4j (databases).
  5. Top five skills to learn by number of jobs: Python, SQL, Azure, AWS, PowerBi.

The techniques used are:
  1. JOINS, WHERE (Filtering), ORDER BY, LIMIT
  2. CTE, JOINS, WHERE (Filtering), ORDER BY
  3. AGGREGATIONS (COUNT), JOINS, WHERE (Filtering), GROUP BY, ORDER BY
  4. AGGREGATIONS (AVERAGE), ROUND, JOINS, WHERE (Filtering), GROUP BY, ORDER BY
  5. CTE, JOINS, WHERE (Filtering), GROUP BY, ORDER BY
