-- ============================================
-- KPI: Top 10 Products by Revenue
-- Business Question:
-- Which products generate the most revenue?
--
-- Logic:
-- Aggregate revenue by product description.
-- Sort in descending order.
-- Limit to Top 10.
-- ============================================

SELECT
  Description,
  SUM(Quantity * Price) AS revenue
FROM `project-7bafa17f-355e-4e84-9e4.retail_dataset.online_retail`
WHERE Quantity > 0
  AND Price > 0
GROUP BY Description
ORDER BY revenue DESC
LIMIT 10;