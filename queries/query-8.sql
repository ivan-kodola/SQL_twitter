USE twitter;

SELECT * FROM comments WHERE created >= now() - INTERVAL 10 HOUR;
