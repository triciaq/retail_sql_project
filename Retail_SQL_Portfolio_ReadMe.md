
# Retail Data Analysis with SQL - Portfolio Showcase

This portfolio project demonstrates my ability to **clean, explore, and analyze retail transaction data using SQL**.  
It highlights my expertise in writing efficient queries, uncovering insights, and leveraging SQL functions for **business intelligence**.

---

## About the Project
The project revolves around a transactional **retail dataset** with fields including:
- Transaction details (`transaction_id`, `sale_date`, `sale_time`)
- Customer demographics (`customer_id`, `gender`, `age`)
- Product information (`category`, `quantity`, `price_per_unit`, `costs`, `total_sale`)

The SQL scripts answer **real business questions** and generate **actionable insights**.

---

## Key Skills Demonstrated

### 1. Data Cleaning & Preparation
- Identified and removed missing values.
- Ensured dataset consistency for accurate reporting.

### 2. Business Insights & Exploratory Analysis
- Computed KPIs such as **total sales, unique customers, and top categories**.
- Filtered sales by date, category, and sales thresholds to identify trends.
- Discovered customer behavior insights (e.g., **average age of Beauty category buyers**).

### 3. Advanced SQL Techniques
- Used `GROUP BY`, `HAVING`, and aggregation functions for summaries.
- Leveraged **window functions** (`RANK()`) to identify top-performing months.
- Created **time-based sales segmentation** (Morning, Afternoon, Evening) using `CASE` statements.

---

## Sample Query Highlight

Finding the **best-performing month per year** using `RANK()`:
```sql
SELECT 
  EXTRACT(YEAR FROM sale_date) AS year,
  EXTRACT(MONTH FROM sale_date) AS month,
  AVG(total_sale) AS avg_sale,
  RANK() OVER(PARTITION BY EXTRACT(YEAR FROM sale_date) ORDER BY AVG(total_sale) DESC) AS rank
FROM retail
GROUP BY 1,2;
```

---

## Why This Project Matters
- Demonstrates **proficiency in SQL** for retail analytics.
- Shows ability to transform raw sales data into **business insights**.
- Highlights skills valuable for **data analyst, BI analyst, and strategy roles**.

---

## Next Steps
- Visualize these results using **Power BI** or **Tableau**.
- Automate reports via **SQL stored procedures**.
- Integrate with marketing and customer feedback data for deeper insights.

---
**Explore the SQL scripts in this repository to see my full approach to retail data analytics.**
