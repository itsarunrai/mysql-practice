-- Selecting the database to use
USE practiceTemplate2;

-- Viewing data from 'customers' and 'orders' tables
SELECT * FROM customers;
SELECT * FROM orders;

-- --------------------------------------------
-- INNER JOIN Explanation:
-- This query returns only those records where the customer has placed an order.
-- It matches rows from 'customers' and 'orders' where 'id' in customers = 'customer_id' in orders.
-- If a customer has not placed any order, they will NOT be shown in the result.

SELECT 
  c.id,
  c.first_name,
  o.order_id,
  o.sales
FROM customers AS c
INNER JOIN orders AS o
  ON c.id = o.customer_id;

-- --------------------------------------------
-- LEFT JOIN Explanation:
-- This query returns all records from the 'customers' table, and the matching records from the 'orders' table.
-- If a customer has NOT placed any order, their order columns (like order_date) will be shown as NULL.

SELECT 
  c.id,
  c.first_name,
  c.country,
  c.score,
  o.order_date
FROM customers AS c
LEFT JOIN orders AS o
  ON c.id = o.customer_id;

-- --------------------------------------------
-- RIGHT JOIN Explanation:
-- This query returns all records from the 'orders' table, and the matching records from the 'customers' table.
-- If an order does NOT have a matching customer (rare but possible due to data inconsistency), customer fields will be NULL.

SELECT 
  c.id,
  c.first_name,
  c.country,
  c.score,
  o.order_date
FROM customers AS c
RIGHT JOIN orders AS o
  ON c.id = o.customer_id;

-- --------------------------------------------
-- FULL JOIN Simulation using UNION (MySQL does not support FULL OUTER JOIN natively)
-- This query combines the results of LEFT JOIN and RIGHT JOIN to include:
-- - Customers with and without orders
-- - Orders with and without customers (data anomalies)
-- UNION removes duplicate rows to avoid showing matched rows twice.

SELECT 
  c.id,
  c.first_name,
  c.country,
  c.score,
  o.order_date
FROM customers AS c
LEFT JOIN orders AS o
  ON c.id = o.customer_id

UNION

SELECT 
  c.id,
  c.first_name,
  c.country,
  c.score,
  o.order_date
FROM customers AS c
RIGHT JOIN orders AS o
  ON c.id = o.customer_id;
