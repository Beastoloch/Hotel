SELECT Name, Privileges
FROM Organizations
WHERE Organization_ID IN (SELECT Organization_ID
 FROM (SELECT Organizations.Organization_ID, count(Booking_ID)
  FROM Organizations
   JOIN Booking B ON Organizations.Organization_ID = B.Organization_ID
  WHERE B.Booking_start_date >= ?1
  AND B.Booking_end_date <= ?2
  GROUP BY Organizations.Organization_ID
  HAVING COUNT(Booking_ID) >= ?3))
