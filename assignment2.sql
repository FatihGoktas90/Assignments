<<<<<<< HEAD
/* =======================
How many tracks does each album have? Your solution should 
include Album id and its number of tracks sorted from highest to lowest.

======================*/


SELECT albums.AlbumId,COUNT(tracks.TrackId) AS parca_sayisi
FROM albums
JOIN tracks
ON albums.AlbumId=tracks.AlbumId
GROUP BY albums.AlbumId
ORDER BY parca_sayisi DESC;

/* =======================
Find the album title of the tracks.
Your solution should include track name and its album title

======================*/
SELECT albums.Title,tracks.Name
FROM albums
JOIN tracks
ON albums.AlbumId=tracks.AlbumId;

/* =======================
Find the minimum duration of the track in each album. Your solution should include album id,
 album title and duration of the track sorted from highest to lowest.

======================*/

SELECT albums.AlbumId,albums.Title, ROUND(AVG(tracks.Milliseconds),2) AS parca_uzunlugu
FROM albums
JOIN tracks
ON albums.AlbumId=tracks.AlbumId
GROUP BY albums.AlbumId 
ORDER BY parca_uzunlugu DESC;

/* =======================
Find the total duration of each album. Your solution should include album id,
 album title and its total duration sorted from highest to lowest.

======================*/
 
SELECT albums.Title, SUM(tracks.Milliseconds) AS total_duration
FROM albums
JOIN tracks
ON albums.AlbumId=tracks.AlbumId
GROUP BY albums.AlbumId 
ORDER BY total_duration DESC;

/* =======================
Based on the previous question, find the albums whose total duration is higher than 70 minutes.
 Your solution should include album title and total duration.

======================*/

SELECT albums.Title, SUM(tracks.Milliseconds) AS total_duration
FROM albums
JOIN tracks
ON albums.AlbumId=tracks.AlbumId AND total_duration>4200000
GROUP BY albums.AlbumId 
=======
/* =======================
How many tracks does each album have? Your solution should 
include Album id and its number of tracks sorted from highest to lowest.

======================*/


SELECT albums.AlbumId,COUNT(tracks.TrackId) AS parca_sayisi
FROM albums
JOIN tracks
ON albums.AlbumId=tracks.AlbumId
GROUP BY albums.AlbumId
ORDER BY parca_sayisi DESC;

/* =======================
Find the album title of the tracks.
Your solution should include track name and its album title

======================*/
SELECT albums.Title,tracks.Name
FROM albums
JOIN tracks
ON albums.AlbumId=tracks.AlbumId;

/* =======================
Find the minimum duration of the track in each album. Your solution should include album id,
 album title and duration of the track sorted from highest to lowest.

======================*/

SELECT albums.AlbumId,albums.Title, ROUND(AVG(tracks.Milliseconds),2) AS parca_uzunlugu
FROM albums
JOIN tracks
ON albums.AlbumId=tracks.AlbumId
GROUP BY albums.AlbumId 
ORDER BY parca_uzunlugu DESC;

/* =======================
Find the total duration of each album. Your solution should include album id,
 album title and its total duration sorted from highest to lowest.

======================*/
 
SELECT albums.Title, SUM(tracks.Milliseconds) AS total_duration
FROM albums
JOIN tracks
ON albums.AlbumId=tracks.AlbumId
GROUP BY albums.AlbumId 
ORDER BY total_duration DESC;

/* =======================
Based on the previous question, find the albums whose total duration is higher than 70 minutes.
 Your solution should include album title and total duration.

======================*/

SELECT albums.Title, SUM(tracks.Milliseconds) AS total_duration
FROM albums
JOIN tracks
ON albums.AlbumId=tracks.AlbumId AND total_duration>4200000
GROUP BY albums.AlbumId 
>>>>>>> 8c9181ba8a791c5ab7bee1881c4cc6cae688abca
ORDER BY total_duration DESC;