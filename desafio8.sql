SELECT ar.artista as 'artista', al.albuns as 'album'
FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albuns AS al
ON ar.artista_id = al.artista_id
WHERE artista = 'Walter Phoenix'
ORDER BY  album
