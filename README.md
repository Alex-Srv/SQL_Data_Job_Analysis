# Introduction 
Dive into the dat job market!
Focusing on data  analyst roles , this project exploeres top paying , in-demand skills and where high demand meets high salary in data analytics.
SQL quiries? check them out  here : [project_sql folder](/project_sql/)
# Background
Driven by a quest to navigate the data analyst job market more effectively, this project was born  from a desire to pinpoint  top-paid jobs and in-demand skills , streamlining others work  to find optimal jobs.

Data from where I start my  SQL course [SQL course](https://lukebarousse.com/sql)

# Tools I used
- **SQL:** The backbone of my analysis

- **PostgreSQL:** The chosen database management

- **Visual studio code**  My goto for database management and executing SQL queries

- **Git & GitHub**: Version control and sharing my work

# The Analysis
Each query for this project aimed at investigating data analyst market:
# 1. Top Paying Data Analyst Jobs
To identify the highest-paying roles I filtered data analyst postition and some other things. Yeah 
```sql
SELECT
  job_id,
  job_title,
  job_location,
  job_schedule_type,
  salary_year_avg,
  job_posted_date,
  name as companany_name
FROM 
  job_postings_fact
LEFT JOIN company_dim  On job_postings_fact.company_id = company_dim.company_id
WHERE 
  job_title_short = 'Data Analyst' AND 
  job_location = 'Anywhere' AND
  salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC
LIMIT 10
```
📊 Salary Overview
Maximum Salary: $650,000 (Mantys)

Minimum Salary: $184,000 (Get It Recruit)

Average (Mean) Salary: $264,506

Median Salary: $211,000

Observations
Mantys stands out with a $650,000 salary, nearly double the second-highest offer.
Leadership roles such as Director of Analytics and Associate Director – Data Insights consistently offer salaries above $250k.
Most of the remaining top-paying positions fall within the $184k–$217k range.
Principal Data Analyst positions appear multiple times, indicating that senior individual contributor roles are highly valued.

![top_paying_jobs](/assets/top_paying_jobs_breakdown.png)
Chat gpt generated graph

# What I learned
SQL. And also how much i dnont know

# Conclusion
I need to watch another of Luke videos ~14 hours.
