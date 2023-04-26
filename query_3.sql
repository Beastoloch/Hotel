SELECT count(*) AS Free_rooms_number
FROM (
 SELECT *
 FROM Room
 WHERE Room_ID NOT IN (SELECT Room.Room_ID
  FROM Room
   JOIN Client_base C2 ON Room.Room_ID = C2.Room_ID
  WHERE Departature_date > SYSDATE)
 AND Room_ID NOT IN (SELECT B.Room_ID
  FROM Room
  JOIN Booking B ON Room.Room_ID = B.Room_ID
 WHERE ((Booking_start_date <= ?1 AND Booking_end_date >= ?2) OR
  (Booking_start_date >= ?1 AND Booking_end_date <= ?2))))