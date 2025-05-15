-- Drop SalesDB if it exists and then create it.
DROP DATABASE IF EXISTS SalesDB;
CREATE DATABASE SalesDB;

-- Switch to the SalesDB database.
USE SalesDB;

-- ======================================================
-- Table: Customers
-- ======================================================
CREATE TABLE Customers (
    CustomerID INT NOT NULL,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Country VARCHAR(50),
    Score INT,
    PRIMARY KEY (CustomerID)
);

INSERT INTO Customers (CustomerID, FirstName, LastName, Country, Score) VALUES
    (1, 'Jossef', 'Goldberg', 'Germany', 350),
    (2, 'Kevin', 'Brown', 'USA', 900),
    (3, 'Mary', NULL, 'USA', 750),
    (4, 'Mark', 'Schwarz', 'Germany', 500),
    (5, 'Anna', 'Adams', 'USA', NULL);

-- ======================================================
-- Table: Employees
-- ======================================================
CREATE TABLE Employees (
    EmployeeID INT NOT NULL,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    BirthDate DATE,
    Gender CHAR(1),
    Salary INT,
    ManagerID INT,
    PRIMARY KEY (EmployeeID)
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, BirthDate, Gender, Salary, ManagerID) VALUES
    (1, 'Frank', 'Lee', 'Marketing', '1988-12-05', 'M', 55000, NULL),
    (2, 'Kevin', 'Brown', 'Marketing', '1972-11-25', 'M', 65000, 1),
    (3, 'Mary', NULL, 'Sales', '1986-01-05', 'F', 75000, 1),
    (4, 'Michael', 'Ray', 'Sales', '1977-02-10', 'M', 90000, 2),
    (5, 'Carol', 'Baker', 'Sales', '1982-02-11', 'F', 55000, 3);

-- ======================================================
-- Table: Products
-- ======================================================
CREATE TABLE Products (
    ProductID INT NOT NULL,
    Product VARCHAR(50),
    Category VARCHAR(50),
    Price INT,
    PRIMARY KEY (ProductID)
);

INSERT INTO Products (ProductID, Product, Category, Price) VALUES
    (101, 'Bottle', 'Accessories', 10),
    (102, 'Tire', 'Accessories', 15),
    (103, 'Socks', 'Clothing', 20),
    (104, 'Caps', 'Clothing', 25),
    (105, 'Gloves', 'Clothing', 30);

-- ======================================================
-- Table: Orders
-- ======================================================
-- (Note: The original script was truncated. Assuming a column definition for ShipAddr)
CREATE TABLE Orders (
    OrderID INT NOT NULL,
    ProductID INT,
    CustomerID INT,
    SalesPersonID INT,
    OrderDate DATE,
    ShipDate DATE,
    OrderStatus VARCHAR(50),
    ShipAddr VARCHAR(255),
    Sales int,
    PRIMARY KEY (OrderID)
);

-- ======================================================
-- Insert data into Orders table
-- Ensure all foreign key references (ProductID, CustomerID, SalesPersonID) match existing records.
-- ======================================================

INSERT INTO Orders (OrderID, ProductID, CustomerID, SalesPersonID, OrderDate, ShipDate, OrderStatus, ShipAddr, Sales) VALUES
    (1001, 101, 1, 2, '2023-01-01', '2023-01-05', 'Shipped', '123 Elm St, Berlin', 30),
    (1002, 102, 2, 3, '2023-02-15', '2023-02-18', 'Delivered', '456 Oak Ave, New York', 45),
    (1003, 103, 3, 4, '2023-03-10', '2023-03-13', 'Delivered', '789 Pine Ln, Chicago', 60),
    (1004, 104, 4, 2, '2023-04-20', '2023-04-22', 'Pending', '321 Maple Dr, Munich', 75),
    (1005, 105, 5, 1, '2023-05-25', '2023-05-29', 'Cancelled', '654 Birch Blvd, Boston', 90),
    (1006, 102, 1, 3, '2023-06-11', '2023-06-14', 'Delivered', '987 Cedar St, Berlin', 50),
    (1007, 101, 2, 4, '2023-07-08', '2023-07-12', 'Shipped', '111 Walnut Ave, New York', 35),
    (1008, 103, 3, 2, '2023-08-19', '2023-08-21', 'Returned', '222 Cherry Ln, LA', 40),
    (1009, 104, 4, 3, '2023-09-23', '2023-09-26', 'Delivered', '333 Spruce Rd, Hamburg', 65),
    (1010, 105, 5, 1, '2023-10-30', '2023-11-02', 'Delivered', '444 Magnolia St, Houston', 85);

