DROP TABLE IF EXISTS retail;
CREATE TABLE retail
(
	transactions_id INT PRIMARY KEY,
	sale_date DATE,	
	sale_time TIME,	
	customer_id INT,	
	gender VARCHAR(15),	
	age INT,
	category VARCHAR(15),	
	quantity INT,	
	price_per_unit FLOAT,	
	costs FLOAT,	
	total_sale FLOAT
)

SELECT *
FROM retail

SELECT
	COUNT(*)
FROM retail

---data cleaning ---
SELECT * 
FROM retail
WHERE transactions_id IS NULL

SELECT * 
FROM retail
WHERE quantity IS NULL

DELETE FROM retail
WHERE quantity IS NULL

---Data Exploration--
--How many sales do we have?

SELECT 
	COUNT(*) AS total_sales
FROM retail

--how many unique customers
SELECT 
	COUNT(DISTINCT customer_id) as total_customers
FROM retail

--Write a SQL query to retrieve all column for sales made on '2022-11-05'
SELECT *
FROM retail
WHERE sale_date = '2022-11-05'

--transactions from clothing where quantity is more than 10 in Nov
SELECT *
FROM retail
WHERE category = 'Clothing' 	
	AND	sale_date >= DATE '2022-11-01'
	AND sale_date < DATE '2022-12-01'
	AND quantity >= 4

--total_sales for each category
SELECT 
	category,
	SUM(total_sale)
FROM retail
GROUP BY category

--average age of customers who purchased from the beauty category
SELECT 
	ROUND(AVG(age),2)
FROM retail
WHERE category = 'Beauty'

--transactions where the total_sale is greater than 1000
SELECT *
FROM retail
WHERE total_sale >= 1000

--total number of transactions made by each gender in each category
SELECT 
category,
gender,
COUNT(*)
FROM retail
GROUP  BY  category,gender
ORDER BY 1

--average sale for each month
SELECT *
FROM(
SELECT 
	EXTRACT(YEAR FROM sale_date) as year,
	EXTRACT(MONTH FROM sale_date) AS month,
	AVG(total_sale) AS avg_sale,
	RANK() OVER(PARTITION BY EXTRACT(YEAR FROM sale_date) ORDER BY AVG(total_sale) DESC) as rank
FROM retail
GROUP BY 1,2) as t1
WHERE rank = 1
--ORDER BY 1,3 DESCthe 
--top 5 customers based on highest total sales
SELECT 
	customer_id,
	SUM(total_sale) AS total_sales
FROM retail
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5

--number of unique customers who purchased from each category
SELECT 
	category,
	COUNT(DISTINCT(customer_id))
FROM retail
GROUP BY category

--create shift and numer of orders(Morning, Afternoon, Evening)
WITH hourly_sales AS
(
SELECT *,
	CASE
		WHEN EXTRACT(HOUR FROM sale_time) <= 12 THEN 'morning'
		WHEN EXTRACT(HOUR FROM sale_time) BETWEEN 12 AND 17 THEN 'afternoon'
		ELSE 'evening'
	END as shift
FROM retail
)
SELECT 
	shift,
	COUNT(*)
FROM hourly_sales
GROUP BY shift







