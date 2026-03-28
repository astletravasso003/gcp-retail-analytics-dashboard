# Cloud Retail Sales Analytics Dashboard (GCP + BigQuery)

## Overview

This project demonstrates an end-to-end **cloud-based data analytics pipeline** built using **Google BigQuery** to process and analyze large-scale retail transaction data.

The solution transforms raw transactional data into a structured analytical model, computes key business KPIs, and enables data-driven decision-making through SQL-based analysis and dashboarding.

---

## Objective

The goal of this project is to:

* Build a scalable cloud analytics workflow using BigQuery
* Clean and transform raw retail transaction data
* Develop core business KPIs using SQL
* Perform customer, product, and revenue analysis
* Enable downstream dashboarding for business insights

---

## Dataset

* **Dataset Name:** `retail_dataset`
* **Tables:**

  * `online_retail` → raw transactional data
  * `online_retail_clean` → cleaned and transformed dataset

### Key Fields

* InvoiceNo
* StockCode
* Description
* Quantity
* InvoiceDate
* UnitPrice
* CustomerID
* Country

Total records: **1M+ retail transactions**

---

## Data Pipeline Architecture

Raw Data → BigQuery → SQL Transformations → Analytical Tables → Dashboard (Looker Studio)

The pipeline includes:

1. Raw data ingestion into BigQuery
2. Data cleaning and preprocessing
3. Analytical data modeling
4. KPI computation using SQL
5. Business insight generation

---

## Data Processing & Transformation

A cleaned analytical table (`online_retail_clean`) was created by:

* Removing invalid or null customer records
* Filtering negative or zero transactions
* Standardizing date formats
* Preparing data for aggregation and analysis

This step ensures **data quality and reliability** for downstream analysis.

---

## Key Metrics Developed

The project focuses on core business KPIs:

* **Total Revenue**
* **Total Orders**
* **Average Order Value (AOV)**
* **Unique Customers (COUNT DISTINCT)**
* **Customer Lifetime Value (CLV)**

These metrics were computed using optimized SQL queries on BigQuery.

---

## Analytical Use Cases

### Revenue Analysis

* Monthly revenue trends
* Revenue distribution across categories
* Revenue contribution by country

---

### Customer Analysis

* Customer Lifetime Value (CLV)
* Purchase frequency
* High-value customer identification

---

### Product Analysis

* Top-performing products by revenue
* Sales contribution by product category

---

### Geographic Analysis

* Revenue by country
* Regional performance insights

---

### Validation & Data Quality

Validation queries were implemented to ensure:

* Row count consistency
* Revenue accuracy
* Data integrity after transformations

This step reflects real-world **data engineering and analytics validation practices**.

---

## Technologies Used

* **Google BigQuery** – Cloud data warehouse
* **SQL** – Data transformation and analysis
* **Google Cloud Platform (GCP)**
* **Looker Studio** – Data visualization (dashboard layer)

---

## Key Insights

* Revenue is highly concentrated among top customers and products
* Clear monthly trends indicate seasonality in sales
* A small percentage of customers contribute a significant portion of total revenue
* Geographic analysis highlights key revenue-generating regions

---

## Business Impact

This project demonstrates how cloud-based analytics can:

* Enable real-time KPI monitoring
* Support sales and revenue tracking
* Improve customer segmentation strategies
* Assist in inventory and demand planning
* Drive data-informed business decisions

---

## What This Project Demonstrates

* End-to-end cloud analytics pipeline design
* SQL-based data transformation and modeling
* KPI development and business analytics
* Data validation and quality assurance
* Integration of analytics with BI dashboards

---

## Future Improvements

* Integration with real-time streaming data
* Advanced customer segmentation (RFM / clustering)
* Predictive analytics (sales forecasting)
* Dashboard interactivity enhancements

## Notes

---

Dataset used for educational and analytical purposes.
