/* Exercise #1 */
SELECT CategoryName, Description From Categories

/* Exercise #2 */

SELECT ContactName, CustomerID, CompanyName
FROM Customers
WHERE City = 'London'

/*Exercise #3 */

SELECT *
FROM Suppliers
WHERE ContactTitle IN ('Marketing Manager', 'Sales Representative') AND Fax is not null

/*Exercise #4 */

SELECT CustomerID, Freight
FROM Orders
WHERE RequiredDate BETWEEN  '01/01/1997' AND '01/01/1998' AND Freight < 100

/*Exercise #5 */

SELECT CompanyName, ContactName, Country
FROM  Customers
WHERE Country IN ('Mexico', 'Sweden', 'Germany')

/*Exercise #6 */

SELECT count(*)
FROM Products
WHERE Discontinued = 'true'

/*Exercise #7 */

SELECT CategoryName, Description
FROM Categories
WHERE CategoryName LIKE 'Co%'

/*Exercise #8 */

SELECT CompanyName,City, Country, PostalCode
FROM Suppliers
WHERE Address LIKE '%rue%'
ORDER BY CompanyName ASC

/* Exercise #9 */

SELECT ProductID, Quantity
FROM "Order Details"

/* Exercise #10 */

SELECT o.OrderID, c.CompanyName, c.Address
FROM Orders o, Customers c
WHERE o.ShipVia = 1
AND o.CustomerID = c.CustomerID
ORDER BY o.OrderID

/* Exercise #11 */

SELECT CompanyName, ContactName, ContactTitle, Region
FROM Suppliers

/* Exercise #12 */

SELECT p.ProductName, c.CategoryName 
FROM Products p, Categories c
WHERE p.CategoryID = c.CategoryID AND c.CategoryName = 'Condiments'

/* Exercise #13 */

SELECT c.CompanyName
FROM Customers c
WHERE NOT EXISTS (SELECT 1 FROM Orders o WHERE o.CustomerID = c.CustomerID)

/* Exercise #14 */

INSERT INTO Shippers(CompanyName)
VALUES('Amazon')

/* Exercise #15 */

UPDATE Shippers
SET CompanyName = 'Amazon Prime Shipping'
WHERE ShipperID = 4

/* Exercise #16 */
SELECT s.CompanyName, ROUND(SUM(o.Freight),0) AS 'Total Freight'
FROM Shippers s, Orders o
WHERE s.ShipperID = o.ShipVia
GROUP BY s.CompanyName

/* Exercise #17 */
SELECT CONCAT(LastName,+', '+ FirstName) AS 'DisplayName' FROM Employees

/* Exercise #18 */

INSERT INTO Customers(CustomerID, CompanyName, ContactName)
VALUES('Blaba','ACME','Bahman')
Select CustomerID, CompanyName, ContactName from Customers where CustomerID='Blaba'


/* Exercise #19 */
DELETE FROM Customers where CustomerID='Blaba'
Select CustomerID, CompanyName, ContactName from Customers where CustomerID='Blaba'

/* Exercise #20 */
Select ProductName, UnitsInStock, SUM(UnitPrice) As TotalUnits  FROM Products where  TotalUnits>100
