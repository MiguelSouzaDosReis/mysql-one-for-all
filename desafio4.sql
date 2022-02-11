 select u.nome as usuario,
 IF (MAX(h.data_reproducao) >= '2021-01-01 00:00:00'
 AND MAX(h.data_reproducao) <= '2021-12-31 23:59:59', 'Usuario ativo', 'Usuario inativo') AS condicao_usuaria
 FROM SpotifyClone.usuarios AS u
 INNER JOIN SpotifyClone.historicos AS h
 ON u.usuario_id = h.usuario_id
 GROUP BY u.usuario_id
 ORDER BY u.nome 
 
