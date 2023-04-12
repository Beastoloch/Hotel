SELECT Name
FROM (SELECT Hotel_ID, Name, row_number() OVER (PARTITION BY Hotel_ID ORDER BY 
total_visits desc) AS row_number
 FROM (SELECT H.Hotel_ID, Client_base.Name, count(Client_base.Name) AS total_visits
 FROM Client_base
 JOIN Room R ON R.Room_ID = Client_base.Room_ID
 JOIN Hotel H ON H.Hotel_ID = R.Hotel_ID
 GROUP BY H.Hotel_ID, Client_base.Name
 ORDER BY total_visits desc))
WHERE row_number = 1