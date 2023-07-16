-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | article_id    | int     |
-- | author_id     | int     |
-- | viewer_id     | int     |
-- | view_date     | date    |
-- +---------------+---------+
-- The table may have duplicate rows (In other words, there is no primary key for this table in SQL).
-- Each row of this table indicates that some viewer viewed an article (written by some author) on some date. 
-- Note that equal author_id and viewer_id indicate the same person.

-- Find all the authors that viewed at least one of their own articles.

-- Return the result table sorted by id in ascending order.

SELECT DISTINCT AUTHOR_ID AS ID FROM VIEWS 
WHERE 
  AUTHOR_ID = VIEWER_ID
ORDER BY 1 ASC

