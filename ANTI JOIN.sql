USE practiceTemplate2;

-- --------------------------------------------
-- LEFT ANTI JOIN
-- This query retrieves all customers who have NOT placed any orders.
-- It performs a LEFT JOIN and filters out rows where a match was found in 'orders'.

SELECT * 
FROM customers
LEFT JOIN orders
  ON customers.id = orders.customer_id
WHERE orders.customer_id IS NULL;

-- --------------------------------------------
-- RIGHT ANTI JOIN
-- This query retrieves all orders that do NOT have a matching customer record.
-- It performs a RIGHT JOIN and filters out rows where a match was found in 'customers'.
-- This is useful for detecting orphaned orders (possibly due to deleted or missing customers).

SELECT * 
FROM customers
RIGHT JOIN orders
  ON customers.id = orders.customer_id
WHERE customers.id IS NULL;

-- --------------------------------------------
-- FULL ANTI JOIN (Simulated in MySQL using UNION of left and right anti joins)
-- This query retrieves all records from both tables that do NOT have a matching row in the other table.
-- It combines:
--   1. Customers without orders (Left Anti Join)
--   2. Orders without matching customers (Right Anti Join)
-- This is often used to find mismatched or unlinked data.

SELECT * 
FROM customers
LEFT JOIN orders
  ON customers.id = orders.customer_id
WHERE orders.customer_id IS NULL

UNION

SELECT * 
FROM customers
RIGHT JOIN orders
  ON customers.id = orders.customer_id
WHERE customers.id IS NULL;

-- --------------------------------------------
-- CROSS JOIN
-- This query performs a CROSS JOIN between 'customers' and 'orders'.
-- It returns the Cartesian product, meaning it pairs **every row** from 'customers' 
-- with **every row** from 'orders'.
-- This is used when every combination of the two tables is required, such as
-- generating test data, comparisons, or all possible matchups.

SELECT * 
FROM customers
CROSS JOIN orders;
