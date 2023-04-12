SELECT count(*) AS clients_number
FROM Client_base
 JOIN Room R ON R.Room_ID = Client_base.Room_ID
WHERE Arrival_date >= ?1
 AND Departature_date <= ?2
 AND Floor = ?3
 AND Capacity = ?4