
-- Portfolio 3: Transaction Isolation
-- Case study: Sunrise Hotel
-- Database: Impression_Hotel

BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;

SELECT COUNT(*) AS guest_count_before
FROM guests;

SELECT pg_sleep(5);

SELECT COUNT(*) AS guest_count_after
FROM guests;

COMMIT;
