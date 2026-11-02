
-- Portfolio 3: Transaction Commit
-- Case study: Sunrise Hotel
-- Database: Impression_Hotel
-- Purpose: Demonstrate a transaction that inserts and commits a guest.

BEGIN;

INSERT INTO guests (full_name, email, phone)
VALUES (
    'Portfolio Test Guest',
    'portfolio.test@example.com',
    '08060000001'
);

COMMIT;

-- Verify that the committed record exists.
SELECT guest_id, full_name, email, phone
FROM guests
WHERE email = 'portfolio.test@example.com';
