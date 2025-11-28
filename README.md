# Sales-Insights-SQL-PowerBI

This project is an end-to-end Sales Insights analysis built using **PostgreSQL** for data cleaning and transformation, and **Power BI** for interactive dashboarding.  
The goal is to understand sales performance across categories, regions, customer segments, and time periods.

---

## 🔍 Project Overview

- Cleaned, transformed, and analyzed a sales dataset using SQL.
- Created new features such as `order_year`, `order_month`, and `ship_days`.
- Built a multi-page Power BI dashboard showing KPIs, trends, and insights.
- Derived actionable insights on top categories, seasonal patterns, and regional performance.

---

## 🛠 Tools & Technologies

- **PostgreSQL** – Data cleaning, type conversions, feature engineering  
- **Power BI** – Interactive dashboard creation  
- **DBeaver** – SQL execution and export  
- **CSV** – Final cleaned dataset  

---

## 🧹 SQL Data Cleaning & Transformation

Key tasks performed in SQL:

- Removed duplicates & null values  
- Standardized date formats and converted to DATE type  
- Added new columns:
  - `order_year`
  - `order_month`
  - `ship_days`
- Trimmed whitespaces & fixed inconsistent category values  
- Validated shipping dates and ensured clean data

---

## 📊 Power BI Dashboard

The dashboard contains three main pages:

### **1️⃣ Overview**
- Total Sales  
- Average Ship Days  
- Sales by Category  
- Sales by Region  
- Top Products Table  

### **2️⃣ Sales Trends**
- Monthly Sales Trend (Line Chart)  
- Sales by Sub-Category  
- Shipping Performance Trend  

### **3️⃣ Customer Insights**
- Sales by Segment  
- Top Customers  
- Region & State Breakdown  

---

## 📈 Key Insights

- **Technology category** contributes a major share (~36%) of total revenue.  
- Sales show **seasonal peaks in November and December**.  
- The **West region** consistently generates the highest sales.  

---

## 📁 Project Structure

Sales-Insights-SQL-PowerBI
│
├── data
│ └── train_cleaned.csv
│
├── sql
│ ├── 01_cleaning.sql
│ ├── 02_feature_engineering.sql
│ └── 03_analysis_queries.sql
│
├── powerbi
│ └── Sales_Insights_Dashboard.pbix
│
├── docs
│ └── (optional screenshots)
│
└── README.md
