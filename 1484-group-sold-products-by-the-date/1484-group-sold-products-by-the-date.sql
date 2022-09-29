# Write your MySQL query statement below
SELECT sell_date, 
        COUNT(DISTINCT(product)) AS num_sold,
        GROUP_CONCAT(DISTINCT product ORDER BY product ASC SEPARATOR ',') AS products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date ASC

#GROUP_CONCAT IS TO : returns a string with concatenated non-NULL value from a group.
#SYNTAX : 
#SELECT col1, col2, ..., colN
#GROUP_CONCAT ( [DISTINCT] col_name1 
#[ORDER BY clause]  [SEPARATOR str_val] ) 
#FROM table_name GROUP BY col_name2