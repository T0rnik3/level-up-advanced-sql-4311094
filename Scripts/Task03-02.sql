/*
Display the number of sales for each employee
by month for 2021
*/

SELECT E.firstName, E.lastName
  ,SUM(CASE WHEN strftime('%m', soldDate) = '01'
  THEN s.salesAmount END) AS JanSales
  ,SUM(CASE WHEN strftime('%m', soldDate) = '02'
  THEN s.salesAmount END) AS FebSales
  ,SUM(CASE WHEN strftime('%m', soldDate) = '03'
  THEN s.salesAmount END) AS MarSales
  ,SUM(CASE WHEN strftime('%m', soldDate) = '04'
  THEN s.salesAmount END) AS AprSales
  ,SUM(CASE WHEN strftime('%m', soldDate) = '05'
  THEN s.salesAmount END) AS MaySales
  ,SUM(CASE WHEN strftime('%m', soldDate) = '06'
  THEN s.salesAmount END) AS JunSales
  ,SUM(CASE WHEN strftime('%m', soldDate) = '07'
  THEN s.salesAmount END) AS JulSales
  ,SUM(CASE WHEN strftime('%m', soldDate) = '08'
  THEN s.salesAmount END) AS AugSales
  ,SUM(CASE WHEN strftime('%m', soldDate) = '09'
  THEN s.salesAmount END) AS SepSales
  ,SUM(CASE WHEN strftime('%m', soldDate) = '10'
  THEN s.salesAmount END) AS OctSales
  ,SUM(CASE WHEN strftime('%m', soldDate) = '11'
  THEN s.salesAmount END) AS NovSales
  ,SUM(CASE WHEN strftime('%m', soldDate) = '12'
  THEN s.salesAmount END) AS DecSales
  
FROM Sales AS S
INNER JOIN employee AS E
  ON E.employeeId = S.employeeId
WHERE CAST(soldDate AS YEAR) = 2021
GROUP BY E.firstName, e.lastName
ORDER BY E.firstName, e.lastName
