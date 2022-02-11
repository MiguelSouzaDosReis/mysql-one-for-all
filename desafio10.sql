SELECT m.cancoes AS nome, COUNT(h.cancoes_id) AS reproducoes
FROM  SpotifyClone.musicas AS m
INNER JOIN SpotifyClone.historicos AS h
ON m.cancoes_id = h.cancoes_id
INNER JOIN SpotifyClone.usuarios AS u
ON h.usuario_id = u.usuario_id
WHERE u.plano_id = 1 OR u.plano_id = 4
GROUP BY m.cancoes
Order BY m.cancoes

