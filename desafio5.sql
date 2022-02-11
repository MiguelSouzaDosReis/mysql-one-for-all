SELECT m.cancoes AS cancao, COUNT(h.cancoes_id) as 'reproducoes'
FROM SpotifyClone.musicas AS m
INNER JOIN SpotifyClone.historicos as h
ON m.cancoes_id = h.cancoes_id
GROUP BY m.cancoes_id
ORDER BY reproducoes DESC, m.cancoes
LIMIT 2