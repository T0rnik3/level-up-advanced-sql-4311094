/*
For each salesperson, rank the car models they've sold the most
*/

WITH CTE AS (
SELECT s.employeeId
      ,m.model
      ,COUNT(s.salesId) OVER (PARTITION BY m.modelId, s.employeeId) AS SalesCount
      -- ,SUM(s.salesAmount) OVER (PARTITION BY m.modelId, s.employeeId) AS SalesSum
FROM sales AS S
INNER JOIN inventory AS i
    ON i.inventoryId = s.inventoryId
INNER JOIN model AS m
    ON m.modelId = i.modelId
)
SELECT DISTINCT
      C.employeeId
      ,C.model
      ,C.salesCount
      -- ,C.SalesSum
      ,DENSE_RANK() OVER (PARTITION BY C.employeeId ORDER BY C.SalesCount DESC) AS Ranks
FROM CTE AS C
ORDER BY C.employeeId
