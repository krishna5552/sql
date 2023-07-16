-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | visit_id    | int     |
-- | customer_id | int     |
-- +-------------+---------+
-- visit_id is the primary key for this table.
-- This table contains information about the customers who visited the mall.

-- +----------------+---------+
-- | Column Name    | Type    |
-- +----------------+---------+
-- | transaction_id | int     |
-- | visit_id       | int     |
-- | amount         | int     |
-- +----------------+---------+
-- transaction_id is the primary key for this table.
-- This table contains information about the transactions made during the visit_id.

-- Write a SQL query to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.

-- Return the result table sorted in any order.


SELECT V.CUSTOMER_ID,COUNT(*) AS COUNT_NO_TRANS FROM VISITS V
 LEFT JOIN TRANSACTIONS T
 ON V.VISIT_ID = T.VISIT_ID
 WHERE T.TRANSACTION_ID IS NULL 
 GROUP BY 1
 