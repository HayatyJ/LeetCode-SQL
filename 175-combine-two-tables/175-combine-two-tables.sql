# Write your MySQL query statement below
SELECT FIRSTNAME, LASTNAME, CITY, STATE FROM Person LEFT JOIN Address
ON Person.PersonId = Address.PersonId