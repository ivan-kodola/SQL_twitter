USE twitter;

SELECT * FROM twitts  
WHERE user_id = 1
OR user_id IN
(
	SELECT followed_id
	FROM followers
	WHERE follower_id = 1 
)
ORDER BY upload DESC; 