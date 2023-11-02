/*
Retrieve a list of employers,
 including first and last names,
  and the first and last names of their immediate managers
*/

SELECT E.employeeId
      , E.firstName
      , E.lastName
      , E.title
      , E.managerId
      , M.firstName AS ManagerFirstName
      , M.lastName AS ManagerLastName
FROM employee AS E
LEFT JOIN employee AS M ON M.employeeId = E.managerId
ORDER BY E.employeeId;
