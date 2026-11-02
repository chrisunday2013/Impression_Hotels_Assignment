-- Portfolio 3: Session 2 concurrency test

BEGIN;

INSERT INTO guests (full_name, email, phone)
VALUES (
    'Concurrency Test Guest',
    'concurrency.test@example.com',
    '08060000002'
);

SELECT COUNT(*) AS guest_count_in_session2
FROM guests;

COMMIT;