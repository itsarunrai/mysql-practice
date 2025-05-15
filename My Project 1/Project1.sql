-- Use the target database
USE SalesDB;

-- Retrieve a comprehensive sales report by joining multiple tables
SELECT 
    o.OrderID,                                        -- Unique order identifier
    c.FirstName,                                      -- Customer's first name
    c.LastName,                                       -- Customer's last name
    o.Sales,                                          -- Sales amount for the order
    p.Product AS ProductName,                         -- Name of the product ordered
    p.Price,                                          -- Price of the product
    e.FirstName AS SalesPersonFirstName,             -- First name of the employee who handled the sale
    e.LastName AS SalesPersonLastName                -- Last name of the employee who handled the sale
FROM Orders AS o

-- Join with Customers table to get customer details
LEFT JOIN Customers AS c
    ON o.CustomerID = c.CustomerID

-- Join with Products table to get product name and price
LEFT JOIN Products AS p
    ON o.ProductID = p.ProductID

-- Join with Employees table to get the sales representative details
LEFT JOIN Employees AS e
    ON o.SalesPersonID = e.EmployeeID;
