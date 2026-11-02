-- Portfolio 3: Transaction Rollback
-- Case study: Sunrise Hotel
-- Database: Impression_Hotel

BEGIN;

INSERT INTO guests (full_name, email, phone)
VALUES (
    'Rollback Test Guest',
    'rollback.test@example.com',
    '08060000002'
);

ROLLBACK;

-- Verify that the inserted record was cancelled.
SELECT guest_id, full_name, email
FROM guests
WHERE email = 'rollback.test@example.com';