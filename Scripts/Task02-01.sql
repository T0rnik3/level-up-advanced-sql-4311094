/*
Pull a report that totals the number of cars
sold by each employee
*/

SELECT e.employeeId, e.firstName, E.lastName, COUNT(*) AS NumOfCarsSold
FROM sales AS S
INNER JOIN employee AS E
  ON S.employeeId = E.EmployeeID
GROUP BY e.employeeId, e.firstName, E.lastName
ORDER BY NumOfCarsSold DESC;
