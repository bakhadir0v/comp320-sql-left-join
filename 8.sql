SELECT playlist.playlistid, playlist.name
FROM playlist
JOIN playlisttrack ON playlist.playlistid=playlisttrack.playlistid
LEFT JOIN track ON playlisttrack.TrackId=track.TrackId
WHERE track.TrackId IS NULL
ORDER BY playlist.playlistid ASC;