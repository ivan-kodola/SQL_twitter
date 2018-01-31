USE twitter;

SELECT AVG(
		(YEAR(CURRENT_DATE) - YEAR(birthday)) -  
		(DATE_FORMAT(CURRENT_DATE, '%m%d') < DATE_FORMAT(birthday, '%m%d'))
) AS middle_age from users;