-- ============================================
-- KPI: Revenue by Country
-- Business Question:
-- Which countries contribute the most revenue?
--
-- Logic:
-- Aggregate revenue by Country.
-- Helps evaluate geographic performance.
-- ============================================

SELECT
  Country,
  SUM(Quantity * Price) AS revenue
FROM `project-7bafa17f-355e-4e84-9e4.retail_dataset.online_retail`
WHERE Quantity > 0
  AND Price > 0
GROUP BY Country
ORDER BY revenue DESC;