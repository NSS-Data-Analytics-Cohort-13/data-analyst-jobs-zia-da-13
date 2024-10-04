-- 1.How many rows are in the data_analyst_jobs table?
   SELECT *
   FROM data_analyst_jobs;
-- Q1.A 1793

-- 2.Write a query to look at just the first 10 rows. What company is associated with the job posting on the 10th row?

  SELECT * 
  FROM data_analyst_jobs
  LIMIT 10;
-- Q2.A ExxonMObile

-- 3.How many postings are in Tennessee? How many are there in either Tennessee or Kentucky?

SELECT COUNT(location = 'TN') AS tn_location ,COUNT (location = 'KY') AS ky_location
FROM data_analyst_jobs
WHERE location = 'TN' OR location  = 'KY';

3Q.A 27 ---- 27

-- 4.How many postings in Tennessee have a star rating above 4.

 SELECT COUNT(star_rating) AS tn_location_stars,location
 FROM data_analyst_jobs
 WHERE location ='TN' AND star_rating >4
 GROUP BY location;

 SELECT *
 FROM data_analyst_jobs
 WHERE location = 'TN'
 AND star_rating >4;
 4.Q.A 3
 
 -- 5.How many postings in the dataset have a review count between 500 and 1000?
 
 
 SELECT *
 FROM data_analyst_jobs
 WHERE review_count 
 BETWEEN 500 AND 1000,
-- 5Q.A will have the list of review count between 500 and 100

-- 6.Show the average star rating for companies in each state. The output should show the state as `state` and the average rating for the state as `avg_rating`. Which state shows the highest average rating?

SELECT AVG(star_rating) AS avg_rating,location
FROM data_analyst_jobs
WHERE star_rating IS NOT NULL
GROUP BY location
ORDER BY avg_rating DESC
limit 1;
-- 6.Q.A is NE

-- 7.Select unique job titles from the data_analyst_jobs table. How many are there?
SELECT COUNT(DISTINCT title) AS Unique_job_titles 
FROM data_analyst_jobs;
7.Q.A 881

-- 8.How many unique job titles are there for California companies?
SELECT COUNT(DISTINCT title) AS unique_jobs,location
FROM data_analyst_jobs
WHERE location ='CA'
GROUP BY location;
8Q.A 230

-- 9.Find the name of each company and its average star rating for all companies that have more than 5000 reviews across all locations. How many companies are there with more that 5000 reviews across all locations?

SELECT company,
AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE review_count IS NOT NULL
AND company IS NOT NULL
GROUP BY company
HAVING min(review_count)>5000
ORDER BY avg_rating DESC;


-- Q9.A 40 companies

-- 10.Add the code to order the query in #9 from highest to lowest average star rating. Which company with more than 5000 reviews across all locations in the dataset has the highest star rating? What is that rating?

 --Nike 4.1999 










-- 11.Find all the job titles that contain the word ‘Analyst’. How many different job titles are there?
SELECT DISTINCT title as job_title
FROM data_analyst_jobs 
WHERE title Ilike '%Analyst%';
 11.Q.A 774

-- 12. How many different job titles do not contain either the word ‘Analyst’ or the word ‘Analytics’? What word do these positions have in common?

SELECT DISTINCT title AS not_analyst
FROM data_analyst_jobs 
WHERE title NOT ILIKE '%Analyst%'
AND title NOT ILIKE  '%Analytics%';
 12.Q>A CAP 