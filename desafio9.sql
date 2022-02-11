SELECT COUNT(h.cancoes_id) as 'quantidade_musicas_no_historico'
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historicos AS h
ON u.usuario_id = h.usuario_id
WHERE nome = 'Bill'
GROUP BY u.usuario_id