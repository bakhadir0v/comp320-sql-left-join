SELECT playlist.playlistid, playlist.name
FROM playlist
LEFT JOIN playlistTrack ON playlist.playlistid=playlistTrack.playlistid
WHERE playlistTrack.trackid IS NULL;