USE twitter;

SELECT users.id, firstname, surname,
COUNT(followers.follower_id) AS followers
FROM users
JOIN followers ON (users.id = followers.followed_id)
GROUP BY users.id;