USE twitter;

SELECT twitts.id, message, 
COUNT(comments.twitt_id) AS comments
FROM twitts
LEFT JOIN comments ON (comments.twitt_id = twitts.id)
GROUP BY twitts.id;