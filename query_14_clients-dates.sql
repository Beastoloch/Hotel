SELECT H.Name, R.Room_number, Arrival_date, Departature_date
FROM Client_base JOIN Room R ON R.Room_ID = Client_base.Room_ID JOIN Hotel H ON 
R.Hotel_ID = H.Hotel_ID
WHERE Client_base_ID = ?1