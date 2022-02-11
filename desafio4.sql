 select u.nome as usuario,
 IF (YEAR(MAX(h.data_reproducao)) >= 2021, 'Usuario ativo', 'Usuario inativo') AS 'condicao usuaria'
 FROM SpotifyClone.usuarios AS u
 INNER JOIN SpotifyClone.historicos AS h
 ON u.usuario_id = h.usuario_id
 GROUP BY u.usuario_id
 ORDER BY u.nome 
 
