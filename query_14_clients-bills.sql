SELECT Client_base.Name, HS.Name, price, Bill_Date
FROM
 JOIN Bill B ON Client_base.Client_base_ID = B.Client_base_ID
 JOIN Hotel_Service HS ON HS.Service_ID = B.Service_ID
WHERE B.Client_base_ID = ?1


