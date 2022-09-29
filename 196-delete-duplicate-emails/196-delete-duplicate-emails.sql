# Please write a DELETE statement and DO NOT write a SELECT statement.
# Write your MySQL query statement below
DELETE FROM Person WHERE id NOT IN 
(SELECT * FROM 
    (SELECT MIN(id) FROM Person GROUP BY email) AS A)
    
#SELECT * FROM (CONDITION) AS A (TEMP) CODE IS BECAUSE WE NEED TO NESTED IT TWICE BCOZ CANNOT MODIFY SAME TABLE WHEN WE USE SELECT PART
#mysql does not allow one to use a subquery with a table that is currently being updated in the outer query so we trick it by using it 
#indirectly like so select * from (some_temp_table) as alias table
