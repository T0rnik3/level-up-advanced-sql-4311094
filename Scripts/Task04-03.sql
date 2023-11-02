/*
Create a Report showing the number of cars sold this month and last month
*/

SELECT strftime('%Y-%m', soldDate) AS MonthSold, COUNT(*) AS NumberCarsSold
      ,LAG(COUNT(*), 1, 0) OVER (ORDER BY strftime('%Y-%m', soldDate)) aS LastMonthCarsSold
FROM sales
GROUP BY MonthSold
ORDER BY MonthSold
