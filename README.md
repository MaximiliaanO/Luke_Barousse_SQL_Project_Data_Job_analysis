# SQL Job Market Analysis

In this SQL project I analyzed job postings from 2023 for Data Analyst roles across Europe.  

The goal was to uncover:  
- The highest-paying jobs and required skills  
- The most in-demand skills  
- The most optimal skills to learn (skills that are both high-paying and in-demand)  

This project was inspired by [Luke Barousse’s SQL course](https://www.lukebarousse.com/sql), and demonstrates how SQL can be used to extract actionable insights from raw job market data.  

---

## Dataset

The dataset consists of four tables:  
- `job_postings_fact` — fact table, job postings incl. salary, location, date, company_id  
- `company_dim` — company info, joined on company_id  
- `skills_job_dim` — bridge table, job_id ↔ skill_id  
- `skills_dim` — dimension table, skill names and categories  

---

## Research Questions

The five queries uploaded represent the closing research questions at the end of the course:

1. Identify the top 10 highest-paying Data Analyst roles that are available in the Netherlands, Germany, France, UK, Spain and Norway.  
2. What are the top-paying Data Analyst jobs, and what skills are required?  
3. What are the most in-demand skills for Data Analysts?  
4. What are the top paying skills for Data Analysts?  
5. What are the most optimal skills to learn (i.e. in high demand and high-paying) for a Data Analyst?  

---

## Results

1. Top-paying roles: Machine Learning Engineer, Senior Data Scientist, Software Engineer, Data Analyst  
2. Skills required for top-paying jobs: Python, AWS, PostgreSQL, PyTorch, C++, Scala, Spark  
3. Most in-demand skills: Python, SQL, Azure, AWS, Power BI  
4. Top-paying skills by average salary: MySQL (databases), Debian (OS), C++ (programming), PostgreSQL (databases), Neo4j (databases)  
5. Optimal skills (high demand + high pay): Python, SQL, Azure, AWS, Power BI  

---

## Techniques Used

1. JOINS, WHERE (Filtering), ORDER BY, LIMIT  
2. CTE, JOINS, WHERE (Filtering), ORDER BY  
3. AGGREGATIONS (COUNT), JOINS, WHERE (Filtering), GROUP BY, ORDER BY  
4. AGGREGATIONS (AVERAGE), ROUND, JOINS, WHERE (Filtering), GROUP BY, ORDER BY  
5. CTE, JOINS, WHERE (Filtering), GROUP BY, ORDER BY  

