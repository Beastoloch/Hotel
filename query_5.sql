SELECT R.Room_number, R.Floor, R.CAPACITY, Booking_start_date
 Booking JOIN Room R ON R.Room_ID = Booking.Room_ID
WHERE R.Room_ID = ?1
ORDER BY Booking_start_date
FETCH FIRST 1 ROWS ONLY