USE northwind;

SELECT EmployeeID, LastName, FirstName
	FROM Employees;
    
SELECT ProductID, ProductName
	FROM products
    WHERE UnitPrice BETWEEN 0 AND 5;
    
SELECT *
    FROM products;
    
SELECT ProductID, ProductName, UnitPrice
   FROM products 
   WHERE UnitPrice is NULL;
   
SELECT *
	FROM products;
    
SELECT ProductID, ProductName
	FROM products
    WHERE UnitPrice < 15;
    
SELECT ProductID, ProductName, UnitPrice
	FROM products
    WHERE UnitPrice < 15;
    
SELECT ProductID, ProductName, UnitPrice
	FROM products
    WHERE UnitPrice < 15 AND ProductID < 20;
    
SELECT ProductID, ProductName, UnitPrice
	FROM products
    WHERE NOT UnitPrice < 15 AND NOT ProductID < 20;
    
SELECT *
	FROM orders;
    
SELECT ShipCountry, ShipRegion
	FROM orders;

SELECT DISTINCT ShipCountry  
	FROM orders;
    
SELECT DISTINCT ShipRegion
	FROM orders;
    
SELECT DISTINCT ShipCountry, ShipRegion
	FROM orders;
    
SELECT ProductID, ProductName
	FROM products
    ORDER BY ProductID
    LIMIT 10;
    
SELECT ProductID, ProductName, UnitPrice
	FROM products
    ORDER BY ProductID
    LIMIT 10;
    
SELECT ProductID, ProductName, UnitPrice
	FROM products
    ORDER BY ProductID DESC
    LIMIT 10;
    
SELECT DISTINCT OrderID
	FROM orderdetails
	ORDER BY OrderID;
    
