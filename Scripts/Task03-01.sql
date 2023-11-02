/*
Summarize Total sales per year by using a CTE
*/

-- SELECT CAST(s.SoldDate AS year) AS Year, SUM(S.salesAmount) AS SalesAmount
-- FROM sales AS S
-- GROUP BY year

WITH CTE AS (
SELECT strftime('%Y', s.soldDate) AS soldYear
  ,S.salesAmount
FROM sales AS S
)
SELECT soldYear
  ,FORMAT("$%.2f", SUM(salesAmount)) AS AnnualSales
FROM cte
GROUP BY SoldYear
ORDER BY SoldYear
