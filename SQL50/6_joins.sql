-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | id            | int     |
-- | name          | varchar |
-- +---------------+---------+
-- In SQL, id is the primary key for this table.
-- Each row of this table contains the id and the name of an employee in a company.

-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | id            | int     |
-- | unique_id     | int     |
-- +---------------+---------+
-- In SQL, (id, unique_id) is the primary key for this table.
-- Each row of this table contains the id and the corresponding unique id of an employee in the company.

-- Show the unique ID of each user, If a user does not have a unique ID replace just show null.

-- Return the result table in any order.

SELECT E2.UNIQUE_ID,E1.NAME FROM EMPLOYEES E1
  LEFT JOIN EMPLOYEEUNI E2
  ON E1.ID = E2.ID
