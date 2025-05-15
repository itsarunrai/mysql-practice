USE salesdb;

-- --------------------------------------------
-- UNION to combine the data:
-- This query combines firstName and lastName from both 'customers' and 'employees' tables.
-- The UNION operator removes duplicate rows by default.
-- Useful when combining similar data from multiple tables with matching column types.
SELECT 
  firstName,
  lastName
FROM salesdb.customers

UNION

SELECT 
  firstName,
  lastName
FROM salesdb.employees;


-- --------------------------------------------
-- UNION with different column names (but matching types and order):
-- This query combines data from 'employees' and 'customers'.
-- Even though the column names (EmployeeID, CustomerID) differ,
-- the UNION works because they are in the same order and of compatible types.
-- Again, duplicates are removed unless you use UNION ALL.
SELECT
  EmployeeID,
  firstName,
  lastName
FROM employees

UNION

SELECT
  CustomerID,
  firstName,
  lastName
FROM customers;
