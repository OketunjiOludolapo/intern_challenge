SELECT p.ProductName, count(*) AS "Number of Orders"
FROM OrderDetails AS ord
JOIN Orders AS o
USING (OrderID)
JOIN  Products AS p
USING (productid)
WHERE CustomerID IN (
                        SELECT CustomerID
                        FROM Customers
                        WHERE Country="Germany"
                    )
GROUP BY ProductName
ORDER BY COUNT(*) DESC
LIMIT 1
