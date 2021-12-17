/*
	Open assignment2.db to have access to the TABLES
	Output is in q3_op.csv (open as text)
*/

SELECT songs_list.song_length, COUNT(*) AS number
FROM(
	SELECT CASE
	WHEN tracks.Milliseconds BETWEEN 0 AND 60000 THEN 'small'
	WHEN tracks.Milliseconds BETWEEN 60000 AND 300000 THEN 'medium'
	ELSE 'large' END 
	AS song_length 
	FROM tracks
	) AS songs_list
GROUP BY songs_list.song_length;