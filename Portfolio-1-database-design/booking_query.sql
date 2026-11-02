
SELECT
    b.booking_id,
    g.full_name AS guest_name,
    r.room_number,
    rt.type_name AS room_type,
    rt.nightly_rate,
    b.check_in,
    b.check_out,
    b.booking_status,
    p.amount AS payment_amount,
    p.payment_status
FROM bookings b
JOIN guests g
    ON b.guest_id = g.guest_id
JOIN rooms r
    ON b.room_id = r.room_id
JOIN room_types rt
    ON r.room_type_id = rt.room_type_id
LEFT JOIN payments p
    ON b.booking_id = p.booking_id
ORDER BY b.booking_id;
