-- ============================================
-- KPI: Monthly Revenue Trend
-- Business Question:
-- How does revenue change over time?
--
-- Logic:
-- Group revenue by Year-Month using TIMESTAMP formatting.
-- Helps detect seasonality and growth trends.
-- ============================================

SELECT
  FORMAT_TIMESTAMP('%Y-%m', InvoiceDate) AS month,
  SUM(Quantity * Price) AS monthly_revenue
FROM `project-7bafa17f-355e-4e84-9e4.retail_dataset.online_retail`
WHERE Quantity > 0
  AND Price > 0
GROUP BY month
ORDER BY month;