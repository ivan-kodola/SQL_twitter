USE twitter;

SELECT t.id, t.message, 
COUNT(c.twitt_id) AS comments
FROM twitts t
LEFT JOIN comments c ON (c.twitt_id = t.id)
GROUP BY t.id;