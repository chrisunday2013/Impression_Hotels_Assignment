EXPLAIN (ANALYZE, BUFFERS)
SELECT
    b.booking_id,
    g.full_name AS guest_name,
    r.room_number,
    b.check_in,
    b.check_out,
    b.booking_status
FROM bookings AS b
JOIN guests AS g
    ON b.guest_id = g.guest_id
JOIN rooms AS r
    ON b.room_id = r.room_id
WHERE b.booking_status = 'Confirmed'
ORDER BY b.check_in;


