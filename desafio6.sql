select MIN(e.valor_do_plano) AS "faturamento_minimo", 
MAX(e.valor_do_plano)  AS "faturamento_maximo",
ROUND(AVG(e.valor_do_plano), 2) AS "faturamento_medio",
SUM(e.valor_do_plano) AS "faturamento_total"

FROM SpotifyClone.economia AS e
INNER JOIN SpotifyClone.usuarios AS u
ON u.plano_id = e.plano_id;