
SELECT indexname, indexdef
FROM pg_indexes
WHERE tablename = 'bookings'
  AND indexname = 'idx_bookings_status';
