 /*
Create a sales report showing total sales per month and an annual running total
 */

WITH Cte_Sales AS (
SELECT strftime('%Y', s.soldDate) AS soldYear
  ,strftime('%m', s.soldDate) AS soldMonth
  ,SUM(s.salesAmount) AS salesAmount
 FROM sales AS S
GROUP BY soldYear, soldMonth
)
SELECT CS.SoldYear, CS.soldMonth, CS.salesAmount
  ,SUM(cs.salesAmount) OVER (PARTITION BY SoldYear ORDER BY soldYear, soldMonth) AS AnnualSales_RunningTotal
FROM cte_Sales AS CS
ORDER BY soldYear, soldMonth
