SELECT 
  skills_dim.skill_id,
  skills_dim.skills,
  count(skills_job_dim.job_id) as demand_count,
  ROUND(avg(salary_year_avg), 2) as average
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id 
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
  job_title_short = 'Data Analyst' 
  AND job_work_from_home = True
  AND salary_year_avg IS NOT NULL 
GROUP BY
   skills_dim.skill_id,
   skills_dim,skills
HAVING 
COUNT(skills_job_dim.job_id) > 10
ORDER BY 
  average DESC,
  demand_count DESC
  
LIMIT 25