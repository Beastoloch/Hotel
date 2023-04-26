SELECT Name, Privileges
FROM Booking
 JOIN Organizations O ON O.Organization_ID = Booking.Organization_ID
WHERE Booking_start_date >= ?1
 AND Booking_end_date <= ?2