SELECT ar.artista as 'artista', al.albuns as 'album', COUNT(u.usuario_id) as 'seguidores'
FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albuns AS al
ON ar.artista_id = al.artista_id
INNER JOIN SpotifyClone.artistas_seguidos AS u
ON al.artista_id = u.artista_id
GROUP BY ar.artista_id, al.albuns
ORDER BY seguidores DESC, artista, album
