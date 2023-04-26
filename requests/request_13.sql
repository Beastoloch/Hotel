SELECT Name, Room_number, Arrival_date, Departature_date
FROM Client_base
 JOIN Room R ON R.Room_ID = Client_base.Room_ID
WHERE Arrival_date >= ?
 AND Departature_date <= ?