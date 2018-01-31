USE twitter;

SELECT u.id, u.firstname, u.surname
FROM users u
LEFT JOIN twitts t ON (t.user_id = u.id)
WHERE t.id IS NULL
GROUP BY u.id;