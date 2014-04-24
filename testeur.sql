go
use Northwind
go
select * from Customers
where CompanyName like 'r%'

DELETE FROM Customers WHERE [CustomerID] = 'pabl3'

INSERT INTO Customers ([CustomerID], CompanyName, ContactName, ContactTitle, [Address])
VALUES ('pabl3', 'Pablo Chr', 'Pablo Aguilar-Lliguin', 'Chef', '123 rue sans fin')
GO