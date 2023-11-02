/*
Find the sales of cars that are electric by using a subquery
*/

SELECT s.soldDate, s.salesAmount, i.colour, i.year
FROM sales AS s
INNER JOIN inventory AS I
  ON i.inventoryId = s.inventoryId
WHERE i.modelId IN (
SELECT M.modelId
FROM model AS M
WHERE M.EngineType = 'Electric'
)
