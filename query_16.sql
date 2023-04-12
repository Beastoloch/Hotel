SELECT ROUND(100.0 * COUNT(UNIQUE BR.Room_ID) / COUNT(UNIQUE 
Room.Room_ID), 2) AS Percentage_booked_rooms
FROM Room
 LEFT JOIN Booking BR ON Room.Room_ID = BR.Room_ID
 