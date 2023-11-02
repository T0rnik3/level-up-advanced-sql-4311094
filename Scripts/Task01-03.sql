/*
List all customers and their sales,
 even if some data is gone
*/

SELECT C.customerId
      ,C.firstName
      ,C.lastName
      ,s.salesAmount
      ,s.soldDate
FROM customer AS C
LEFT JOIN sales AS S 
  ON S.customerId = C.customerId
WHERE S.salesId IS NULL
UNION
SELECT C.customerId
      ,C.firstName
      ,C.lastName
      ,s.salesAmount
      ,s.soldDate
FROM customer AS C
INNER JOIN sales AS S 
  ON S.customerId = C.customerId
UNION
SELECT C.customerId
      ,C.firstName
      ,C.lastName
      ,s.salesAmount
      ,s.soldDate
FROM sales S
LEFT JOIN customer AS C
  ON S.customerId = C.customerId
WHERE c.customerId IS NULL
