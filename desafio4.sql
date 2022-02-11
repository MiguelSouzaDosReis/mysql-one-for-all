 select u.nome as usuario,
 IF (YEAR(MAX(h.data_reproducao)) >= 2021, 'Usuária ativo', 'Usuária inativo') AS condicao_usuaria
 FROM SpotifyClone.usuarios AS u
 INNER JOIN SpotifyClone.historicos AS h
 ON u.usuario_id = h.usuario_id
 GROUP BY u.usuario_id
 ORDER BY u.nome 
 
