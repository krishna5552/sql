-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | id            | int     |
-- | recordDate    | date    |
-- | temperature   | int     |
-- +---------------+---------+
-- id is the primary key for this table.
-- This table contains information about the temperature on a certain day.

-- Write an SQL query to find all dates Id with higher temperatures compared to its previous dates (yesterday).

-- Return the result table in any order.




SELECT W1.ID FROM WEATHER W1
 JOIN WEATHER W2 
ON 
  W1.TEMPERATURE > W2.TEMPERATURE
  AND DATEDIFF(W1.RECORDDATE,W2.RECORDDATE) = 1

