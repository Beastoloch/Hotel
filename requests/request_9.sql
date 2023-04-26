SELECT sum(paidprice) AS AllEarnedMoney, ROUND(Service_price * (SYSDATE -
TO_Date('2022-05-01', 'YYYY-MM-DD')),0) AS totalServiceCost
FROM (SELECT C2.Room_ID, Room.Service_price, Room.price * 
(Departature_date - Arrival_date) AS paidprice
 FROM Room
 JOIN Client_base C2
 ON Room.Room_ID = C2.Room_ID
 WHERE Capacity = ?
 AND Floor = ?
 )
GROUP BY Room_ID, Service_price