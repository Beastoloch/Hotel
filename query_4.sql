SELECT count(Room_ID) AS Free_rooms_number_par
FROM Room
 JOIN Hotel H ON H.Hotel_ID = Room.Hotel_ID
WHERE Room_ID NOT IN (SELECT Room.Room_ID
 FROM Room
  JOIN Client_base C2 ON Room.Room_ID = C2.Room_ID
 WHERE Departature_date > SYSDATE)
 AND Room_ID NOT IN (SELECT B.Room_ID
 FROM Room
  JOIN Booking B ON Room.Room_ID = B.Room_ID
 WHERE ((Booking_start_date <= ?1 AND Booking_end_date >= ?2) OR
 (Booking_start_date >= ?1 AND Booking_end_date <= ?2)))
 AND Capacity = ?3
 AND Floor = ?4
 AND Hotel_class = ?5