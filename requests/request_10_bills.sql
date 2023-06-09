SELECT * FROM Bill JOIN (
 SELECT Client_base_ID, Arrival_date
 FROM Client_base
 JOIN Room R ON R.Room_ID = Client_base.Room_ID
 WHERE R.Room_ID = ?1
 AND Departature_date > SYSDATE
) This_visitor ON Bill.Client_base_ID = This_visitor.Client_base_ID
WHERE Bill_Date > Arrival_date