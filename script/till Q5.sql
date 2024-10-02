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

 SELECT COUNT(location = 'TN') AS tn_location_stars
 FROM data_analyst_jobs
 WHERE star_rating >4;
 4.Q.A 416
 
 -- 5.How many postings in the dataset have a review count between 500 and 1000?
 
 
 
