SELECT H.Name, R.Room_number, R.Floor, R.Capacity, 
Booking_start_date, Booking_end_date
FROM Organizations
 JOIN Booking B ON Organizations.Organization_ID = B.Organization_ID
 JOIN Room R ON R.Room_ID = B.Room_ID
 JOIN Hotel H ON H.Hotel_ID = R.Hotel_ID
WHERE Booking_start_date >= ?1
 AND Booking_start_date <= ?2
 AND Organizations.Name = ?3