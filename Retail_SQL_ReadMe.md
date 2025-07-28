
# 🛍️ Retail Data Analysis with SQL  
![SQL](https://img.shields.io/badge/SQL-Portfolio-blue) ![Data Analysis](https://img.shields.io/badge/Data-Analytics-success) ![Status](https://img.shields.io/badge/Project-Active-brightgreen)

Welcome to my **Retail SQL Portfolio Project**!  
This repository highlights my ability to **analyze retail sales data, clean and transform datasets, and generate insights** using SQL.  
It demonstrates **real-world analytical skills** valuable for roles in **Data Analytics, BI, and Strategy**.

---

## 📊 Project Overview  
This project is built on a **retail sales dataset** containing:
- **Transaction details**: `transaction_id`, `sale_date`, `sale_time`
- **Customer demographics**: `customer_id`, `gender`, `age`
- **Product info**: `category`, `quantity`, `price_per_unit`, `total_sale`

I used SQL to **answer business questions, calculate KPIs, and uncover insights** about customer behavior and sales performance.

---

## 🧠 Skills Showcased  
### **1. Data Cleaning & Transformation**  
- Checked for nulls and inconsistencies.  
- Removed incomplete records to ensure **data integrity**.

### **2. Business Insights & KPIs**  
- Total sales, unique customers, and **top-performing categories**.  
- Date-specific analysis (sales on `2022-11-05`).  
- Average **customer age** for the *Beauty* category.

### **3. Advanced SQL Features**  
- **Window functions** (`RANK()`) to find **top-performing months**.  
- **CASE statements** to group transactions by shifts (*Morning, Afternoon, Evening*).  
- **Aggregations** to identify top 5 customers and sales by gender/category.

---

## 🔍 Sample Highlight: Best-Performing Month  
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

## 🚀 Why It Matters  
- Proves my **proficiency with SQL** for solving **business problems**.  
- Demonstrates the ability to **transform raw data into actionable insights**.  
- Positions me for roles in **data analytics, BI, and decision support**.

---

## 🛠 Next Steps  
- Build **Power BI** and **Tableau dashboards** for visualization.  
- Automate reporting with **stored procedures**.  
- Combine with **customer feedback and marketing data** for deeper insights.

---

### 👋 Connect With Me  
If you're a recruiter, data professional, or just curious about my work:  
📧 **Email**: your.email@example.com  
🔗 **LinkedIn**: [Your LinkedIn](https://linkedin.com)  
🔗 **GitHub**: [Your GitHub](https://github.com/yourusername)

---
**Clone this repository and explore the queries!**  
```bash
git clone https://github.com/yourusername/retail-sql-analysis.git
```
