select count(cancoes) AS cancoes,
(select count(artista) from SpotifyClone.artistas) as artistas,
(select count(albuns) from SpotifyClone.albuns ) as albuns
from SpotifyClone.musicas;

-- utilizei o repositorio do Rafael FRASSON pois estava com dificultade de como colocar os selects juntos
-- https://github.com/tryber/sd-015-b-mysql-one-for-all/pull/120/commits/a6826846fa543b5d079268af9e9e34b242410f58
