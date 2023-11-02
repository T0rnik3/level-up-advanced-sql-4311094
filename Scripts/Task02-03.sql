/*
Display a report for employees who
  have sold more than five cars
*/

SELECT E.employeeId, E.firstName, E.lastName
      ,MAX(salesAmount) AS MaxSalesAmount
      ,MIN(salesAmount) AS MinSalesAmount
      ,COUNT(*) AS SoldCarsCount
FROM employee AS E
INNER JOIN sales AS S
  ON S.employeeId = E.employeeId
WHERE soldDate >= date('now', 'start of year')
GROUP BY E.employeeId, E.firstName, E.lastName
HAVING SoldCarsCount > 5
ORDER BY SoldCarsCount DESC
