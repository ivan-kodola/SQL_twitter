USE twitter;

SELECT u.id, u.firstname, u.surname,
COUNT(f.follower_id) AS followers
FROM users u
JOIN followers f ON (f.followed_id = u.id)
GROUP BY u.id;