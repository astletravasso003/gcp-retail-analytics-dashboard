-- KPI: Average Order Value (AOV)
-- Business Question:
-- What is the average revenue per order?
--
-- Formula:
-- AOV = Total Revenue / Total Orders

SELECT
  SUM(Quantity * Price) / COUNT(DISTINCT Invoice) AS avg_order_value
FROM `project-7bafa17f-355e-4e84-9e4.retail_dataset.online_retail`
WHERE Quantity > 0
  AND Price > 0;