SELECT Name, Arrival_date, Departature_date
FROM Client_base JOIN Room R ON R.Room_ID = Client_base.Room_ID
WHERE R.Room_ID=?1 AND Arrival_date >= ?2 AND Departature_date <= ?3