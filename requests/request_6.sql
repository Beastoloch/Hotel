SELECT *
FROM Room
WHERE Room_ID IN (SELECT Room_ID
 FROM (SELECT C2.Room_ID,
 Departature_date
 FROM Room
 JOIN Client_base C2 ON Room.Room_ID = C2.Room_ID)
 WHERE Departature_date > SYSDATE
 AND Departature_date <= ?)