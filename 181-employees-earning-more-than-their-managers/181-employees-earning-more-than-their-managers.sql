# Write your MySQL query statement below
SELECT A.name AS Employee FROM Employee A, Employee B
WHERE A.managerId = B.id
AND A.salary > B.salary