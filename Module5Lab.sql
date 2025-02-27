-- This command adds a new supplier
sqlq "INSERT INTO Customers (CustomerID, CompanyName, ContactName, Country) 
VALUES ('STUDE', 'Student Company', 'Cristal', 'Your Country');"
sqlq "SELECT CustomerID, CompanyName FROM Customers WHERE CustomerID = 'STUDE';"
sqlq "INSERT INTO Orders (CustomerID, EmployeeID, OrderDate, ShipCountry) 
VALUES ('STUDE', 1, GETDATE(), 'Your Country');"
sqlq "SELECT TOP 1 OrderID FROM Orders WHERE CustomerID = 'STUDE' ORDER BY OrderID DESC;"
sqlq "UPDATE Customers SET ContactName = 'New Contact Name' WHERE CustomerID = 'STUDE';"
sqlq "SELECT ContactName FROM Customers WHERE CustomerID = 'STUDE';"
sqlq "UPDATE Orders SET ShipCountry = 'New Country' WHERE CustomerID = 'STUDE';"
sqlq "DELETE FROM Orders WHERE CustomerID = 'STUDE';"
sqlq "SELECT OrderID, CustomerID FROM Orders WHERE CustomerID = 'STUDE';"
sqlq "DELETE FROM Customers WHERE CustomerID = 'STUDE';"
sqlq "SELECT CustomerID, CompanyName FROM Customers WHERE CustomerID = 'STUDE';"
sqlq "INSERT INTO Suppliers (CompanyName, ContactName, ContactTitle, Country)
VALUES ('Pop-up Foods', 'Cristal', 'Owner', 'United States');"
sqlq "SELECT * FROM Suppliers WHERE CompanyName = 'Pop-up Foods';"
sqlq "INSERT INTO Products (ProductName, SupplierID, CategoryID, UnitPrice, UnitsInStock)
VALUES ('House Special Pizza', '32', '2', '15.99', '50');"
sqlq "SELECT * FROM Products WHERE SupplierID = '32';"
sqlq "UPDATE Products SET UnitPrice = 6.99 WHERE ProductName = 'House Special Pizza';"
sqlq "UPDATE Products SET UnitsInStock = '25', UnitPrice = '17.99' WHERE ProductName = 'House Special Pizza';"
sqlq "DELETE FROM Suppliers WHERE SupplierID IN (30,31);"
sqlq "SELECT * FROM Suppliers WHERE SupplierID IN (30,31);"
-- I had multiple entries of the pop-up foods and I deleted the first two I had made
-- but I realized I should've just deleted SupplierID 31 and 32 and checked that the information of 30 was correct
sqlq "INSERT INTO Products(Product
Name, SupplierID) VALUES ('Cheesecake', '32');"
sqlq "SELECT * FROM Products;"
sqlq "UPDATE Products SET UnitPrice = 9.99, UnitsInStock = 30 WHERE ProductName = 'Cheesecake';"
sqlq "DELETE FROM Products WHERE ProductName = 'Cheesecake';"
-- I noticed I used quotes for integers a couple of times but now I know that it is best I don't
-- I also learned that I need to pay very close attention when adding data and updating