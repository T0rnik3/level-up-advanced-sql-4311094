/*
Get a list of salespeople
with zero sales.
*/

SELECT E.employeeId
      ,E.firstName
      ,E.lastName
      ,COUNT(S.salesId) AS SalesCount
FROM employee AS E
LEFT JOIN sales AS S
  ON S.employeeId = E.employeeId
WHERE E.title = 'Sales Person'
GROUP BY E.employeeId
      ,E.firstName
      ,E.lastName
HAVING SalesCount = 0
ORDER BY SalesCount
