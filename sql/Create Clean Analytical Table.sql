-- ============================================
-- Create Clean Analytical Table
-- Purpose:
-- Prepare structured dataset for dashboard & BI usage
-- ============================================

CREATE OR REPLACE TABLE 
`project-7bafa17f-355e-4e84-9e4.retail_dataset.online_retail_clean` AS

SELECT
  Invoice,
  StockCode,
  Description,
  Quantity,
  InvoiceDate,
  Price,
  `Customer ID` AS Customer_ID,
  Country,
  
  -- Derived Metric
  Quantity * Price AS revenue

FROM `project-7bafa17f-355e-4e84-9e4.retail_dataset.online_retail`

WHERE Quantity > 0
  AND Price > 0
  AND `Customer ID` IS NOT NULL;