SELECT Name, review
FROM REVIEW
 JOIN Client_base C2 ON C2.Client_base_ID = REVIEW.Client_base_ID
WHERE RATING <= 3