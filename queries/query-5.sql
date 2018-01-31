USE twitter;

SELECT users.id, firstname, surname
FROM users
LEFT JOIN twitts ON (users.id = twitts.user_id)
WHERE twitts.id IS NULL
GROUP BY users.id;