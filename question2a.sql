SELECT COUNT(*) AS [Total Orders Shipped By Speedy Express]
FROM Orders 
INNER JOIN Shippers
ON Orders.ShipperID=Shippers.SHIPPERID
AND Shippers.ShipperName="Speedy Express"
