-- practice

SELECT artist_name , SUM(streams) AS total_streams
FROM spotify
JOIN artists
ON spotify.artist_id = artists.artist_id
GROUP BY artist_name
ORDER BY total_streams DESC
LIMIT 2;

SELECT country, AVG(streams) AS avg_streams
FROM spotify
JOIN artists
ON spotify.artist_id = artists.artist_id
GROUP BY country
ORDER BY avg_streams DESC
LIMIT 1;

SELECT artist_name, SUM(streams) AS total_streams 
FROM spotify
JOIN artists
ON spotify.artist_id = artists.artist_id
GROUP BY artist_name
HAVING total_streams BETWEEN 2000 AND 5000;

SELECT country, COUNT(*) AS num_songs
FROM spotify
JOIN artists
ON spotify.artist_id = artists.artist_id
GROUP BY country 
ORDER BY num_songs > 1;

SELECT artist_name, country
FROM artists
WHERE country = 'A'
GROUP BY artist_name, country
ORDER BY artist_name DESC
LIMIT 1;

SELECT *
FROM spotify
LEFT JOIN artists
ON spotify.artist_id = artists.artist_id;

SELECT song
FROM spotify
LEFT JOIN artists
ON spotify.artist_id = artists.artist_id
WHERE artist_name IS NULL;


-- Left Join 

SELECT song, artist_name
FROM spotify
LEFT JOIN artists
ON spotify.artist_id = artists.artist_id;


SELECT  song
FROM spotify
LEFT JOIN artists
ON spotify.artist_id = artists.artist_id
WHERE artist_name IS NULL;

SELECT artist_name
FROM artists
LEFT JOIN spotify
ON artists.artist_id  = spotify.artist_id
WHERE song IS NULL;

--

SELECT artist_name, COUNT(*) AS num_song
FROM spotify
LEFT JOIN artists
ON spotify.artist_id = artists.artist_id
GROUP BY artist_name
HAVING num_song != 0;

SELECT artist_name
FROM spotify
LEFT JOIN artists
ON spotify.artist_id  = artists.artist_id
WHERE song IS NULL;

SELECT artist_name, song
FROM spotify
LEFT JOIN artists
ON spotify.artist_id  = artists.artist_id;

SELECT country, SUM(streams) AS total_streams
FROM spotify
LEFT JOIN artists
ON spotify.artist_id = artists.artist_id
GROUP BY country;

SELECT artist_name, SUM(streams) AS total_streams
FROM spotify
LEFT JOIN artists
ON spotify.artist_id = artists.artist_id
GROUP BY artist_name;


