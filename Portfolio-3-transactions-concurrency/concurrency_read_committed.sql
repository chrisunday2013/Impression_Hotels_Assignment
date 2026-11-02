
-- Portfolio 3: Concurrency and READ COMMITTED isolation
-- Database: Impression_Hotel

-- SESSION 1: Run in the first Query Tool
BEGIN;
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

SELECT COUNT(*) AS guest_count_before
FROM guests;

-- Keep Session 1 open while Session 2 inserts and commits.

-- After Session 2 commits, run this query in Session 1:
SELECT COUNT(*) AS guest_count_after
FROM guests;

COMMIT;
