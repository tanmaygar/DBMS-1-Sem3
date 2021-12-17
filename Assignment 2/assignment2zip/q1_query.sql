/*
	Open assignment2.db to have access to the TABLES
	Output is in q1_op.csv (open as text)
*/

SELECT SUBSTR(list_art.Name,1,1) AS alphabet, COUNT(*) AS count_times
FROM (
		SELECT artists.Name FROM artists EXCEPT SELECT artists.Name FROM albums JOIN artists WHERE albums.ArtistId = artists.ArtistId
		UNION ALL
		SELECT artists.Name FROM albums JOIN artists WHERE albums.ArtistId = artists.ArtistId ORDER BY artists.Name ASC
		) AS list_art
GROUP BY alphabet;
