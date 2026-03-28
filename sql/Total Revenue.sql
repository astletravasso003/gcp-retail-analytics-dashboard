-- KPI: Total Orders
-- Business Question:
-- How many unique completed orders were placed?
--
-- Logic:
-- Each Invoice represents one order.
-- Use DISTINCT to avoid double counting.
-- Exclude returns and invalid prices.

SELECT
  COUNT(DISTINCT Invoice) AS total_orders
FROM `project-7bafa17f-355e-4e84-9e4.retail_dataset.online_retail`
WHERE Quantity > 0
  AND Price > 0;