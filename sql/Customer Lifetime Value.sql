-- ============================================
-- KPI: Customer Lifetime Value (Basic Proxy)
-- Business Question:
-- Who are the highest-value customers?
--
-- Logic:
-- Calculate total spend per customer.
-- Count distinct invoices to measure repeat purchases.
-- Exclude NULL customer IDs.
-- ============================================

SELECT
  `Customer ID`,
  COUNT(DISTINCT Invoice) AS total_orders,
  SUM(Quantity * Price) AS total_spent
FROM `project-7bafa17f-355e-4e84-9e4.retail_dataset.online_retail`
WHERE Quantity > 0
  AND Price > 0
  AND `Customer ID` IS NOT NULL
GROUP BY `Customer ID`
ORDER BY total_spent DESC
LIMIT 20;