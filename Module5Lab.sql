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