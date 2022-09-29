# Write your MySQL query statement below
SELECT A.Name AS Customers
FROM Customers A
WHERE NOT EXISTS
(SELECT B.CustomerId FROM Orders B WHERE B.CustomerId = A.Id)