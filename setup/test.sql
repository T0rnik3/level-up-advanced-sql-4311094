SELECT * FROM employee LIMIT 10;
SELECT * FROM customer LIMIT 10;
SELECT * FROM model LIMIT 10;
SELECT * FROM inventory LIMIT 10;
SELECT * FROM sales LIMIT 10;

SELECT sql
FROM sqlite_schema
WHERE name = 'employee';
