# Task 6 – Sales Trend Analysis Using Aggregations

## 📌 Project Overview

This project analyzes online sales data using SQL aggregation techniques to identify monthly sales trends, revenue performance, and order volume.

The analysis was performed using **MySQL**.

## 🎯 Objectives

- Analyze monthly revenue trends
- Calculate monthly order volume
- Identify the top 3 months by sales
- Analyze sales for a specific time period
- Handle date conversion and aggregation using SQL
- Perform basic data quality checks

## 📂 Dataset

**Dataset:** Online Sales Dataset – Popular Marketplace Data

**Source:** Kaggle  
https://www.kaggle.com/datasets/shreyanshverma27/online-sales-dataset-popular-marketplace-data

The dataset contains **240 sales transactions** from January to August 2024.

### Main Columns

- `order_id` – Unique order identifier
- `order_date` – Date of the order
- `product_category` – Product category
- `product_name` – Product name
- `units _sold` – Number of units sold
- `unit_price` – Price per unit
- `amount` – Total revenue
- `region` – Sales region
- `payment_method` – Payment method

## 🛠️ Tools & Technologies

- MySQL
- SQL
- GitHub
- CSV

## 🔍 SQL Analysis Performed

### 1. Monthly Revenue
Calculated total revenue for each month using `SUM()`.

### 2. Monthly Order Volume
Calculated the number of unique orders per month using `COUNT(DISTINCT order_id)`.

### 3. Monthly Revenue and Order Volume
Combined both metrics to compare sales performance across months.

### 4. Top 3 Months by Sales
Identified the three months with the highest revenue using `ORDER BY` and `LIMIT`.

### 5. Time-Period Analysis
Analyzed sales performance between January and April 2024 using a date filter.

### 6. NULL Value Check
Checked important columns for missing values.

### 7. Overall Sales Summary
Calculated:
- Total orders
- Total revenue
- Average order value
- First order date
- Last order date

## 📊 Key Findings

- **Total Orders:** 240
- **Total Revenue:** 80,567.85
- **Average Order Value:** 335.70
- **Highest Revenue Month:** January 2024 – 14,548.32
- **Second Highest:** March 2024 – 12,849.24
- **Third Highest:** April 2024 – 12,451.69
- **Lowest Revenue Month:** July 2024 – 6,797.08
- **Lowest Order Volume:** August 2024 – 27 orders

Overall, revenue was highest at the beginning of the year and generally declined during the later months, with a small increase in August.

## 📁 Project Structure

```text
Task6_Sales_Trend_Analysis/
│
├── online_sales.sql
├── Online_Sales_Data.csv
│
├── results/
│   ├── monthly_sales_trend.csv
│   ├── top_3_months.csv
│   └── overall_summary.csv
│
└── README.md
