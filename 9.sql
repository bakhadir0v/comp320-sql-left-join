SELECT track.name
FROM track
WHERE track.trackid NOT IN (
    SELECT playlisttrack.trackid
    FROM playlisttrack
); 