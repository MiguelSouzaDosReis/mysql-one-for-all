DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.artistas(
    artista_id INT PRIMARY KEY AUTO_INCREMENT,
    artista VARCHAR(50) NOT NULL
) engine = InnoDB;
CREATE TABLE SpotifyClone.economia(
    plano_id INT PRIMARY KEY AUTO_INCREMENT,
    plano VARCHAR(20)NOT NULL,
    valor_do_plano DECIMAL(3,2) NOT NULL
) engine = InnoDB;
CREATE TABLE SpotifyClone.usuarios(
    usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    idade INT NOT NULL,
    plano_id INT NOT NULL,
    data_da_assinatura DATE NOT NULL,
    FOREIGN KEY (plano_id) REFERENCES SpotifyClone.economia(plano_id)
) engine = InnoDB;
CREATE TABLE SpotifyClone.albuns(
    albuns_id INT PRIMARY KEY AUTO_INCREMENT,
    albuns VARCHAR(50) NOT NULL,
    artista_id INT NOT NULL,
    ano_de_lancamento year NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artistas(artista_id)
) engine = InnoDB;
CREATE TABLE SpotifyClone.musicas(
    cancoes_id INT PRIMARY KEY AUTO_INCREMENT,
    cancoes VARCHAR(50) NOT NULL,
    albuns_id INT NOT NULL,
    duracao_seguntos time NOT NULL,
    FOREIGN KEY (album_id) REFERENCES SpotifyClone.albuns(albuns_id)
) engine = InnoDB;
CREATE TABLE SpotifyClone.artistas_seguidos(
    usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (usuario_id, artista_id),
    FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuarios(usuario_id),
    FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artista(artista_id)
) engine = InnoDB;
CREATE TABLE SpotifyClone.historicos(
    usuario_id INT NOT NULL,
    cancoes_id INT NOT NULL,
    data_reproducao datetime NOT NULL,
    CONSTRAINT PRIMARY KEY (usuario_id, cancoes_id),
    FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuarios(usuario_id),
    FOREIGN KEY (cancoes_id) REFERENCES SpotifyClone.musicas(cancoes_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.economia (plano, valor_do_plano)
VALUES
  ('gratuito', 0),  -- id 1
  ('familiar', 7.99), -- id 2
  ('universitário', 5.99), -- id 3
  ('pessoal', 6.99); -- id 4
  
INSERT INTO SpotifyClone.usuarios (nome, idade, plano_id, data_da_assinatura)
VALUES
  ('Thati',   23, 1,'2019-10-20'), -- id 1
  ('Cintia',  35, 2,'2017-12-30'), -- id 2
  ('Bill',    20, 3,'2019-06-05'), -- id 3
  ('Roger',   45, 4,'2020-05-13'), -- id 4
  ('Norman',  58, 4,'2017-02-17'), -- id 5
  ('Patrick', 33, 2,'2017-01-06'), -- id 6
  ('Vivivan', 26, 3,'2018-01-05'), -- id 7
  ('Carol',   19, 3,'2018-02-14'), -- id 8
  ('Angelina',42, 2,'2018-04-29'), -- id 9
  ('Paul',    46, 2,'2017-01-17'); -- id 10

INSERT INTO SpotifyClone.artistas (artista)
VALUES
  ('Walter Phoenix'),  -- id 1
  ('Peter Strong'),    -- id 2
  ('Lance Day'),       -- id 3
  ('Freedie Shannon'), -- id 4
  ('Fog'),             -- id 5
  ('Tyler Isle');      -- id 6

INSERT INTO SpotifyClone.albuns (albuns, artista_id,ano_de_lancamento)
VALUES
  ('Envious', 1 ,1990),            -- id 1
  ('Exuberant', 1 ,1993),          -- id 2
  ('Hallowed Steam', 2 ,1995),     -- id 3
  ('Incandescent', 3 ,1998),       -- id 4
  ('Temporary Culture', 4 ,2001),  -- id 5
  ('Library of liberty', 4 ,2003), -- id 6
  ('Chained Down', 6 ,2007),       -- id 7
  ('Cabinet of fools', 6 ,2012),   -- id 8
  ('No guarantees', 6 ,2015),      -- id 9
  ('Apparatus', 5 ,2015);          -- id 10

INSERT INTO SpotifyClone.musicas (cancoes, albuns_id, duracao_seguntos)
VALUES 
  ("Soul For Us", 1 ,200),	                        -- id 1
  ("Reflections Of Magic", 1 ,163),                 -- id 2
  ("Dance With Her Own", 1 ,116),                   -- id 3
  ("Troubles Of My Inner Fire", 2, 203),            -- id 4
  ("Time Fireworks", 2, 152),                       -- id 5
  ("Magic Circus", 3 ,105),                         -- id 6
  ("Honey, So Do I", 3 ,207),                       -- id 7
  ("Sweetie, Let's Go Wild", 3 ,139),               -- id 8
  ("She Knows", 3 ,244),                            -- id 9
  ("Fantasy For Me", 4 ,100),                       -- id 10
  ("Celebration Of More", 4 ,146),                  -- id 11
  ("Rock His Everything", 4 ,223),                  -- id 12
  ("Home Forever", 4 ,231),                         -- id 13
  ("Diamond Power", 4 ,241),                        -- id 14
  ("Let's Be Silly", 4 ,132),                       -- id 15
  ("Thang Of Thunder", 5 ,240),                     -- id 16
  ("Words Of Her Life", 5 ,185),                    -- id 17
  ("Without My Streets", 5 ,176),                   -- id 18
  ("Need Of The Evening", 6 ,190),                  -- id 19
  ("History Of My Roses", 6 ,222),                  -- id 20
  ("Without My Love", 6 ,111),                      -- id 21
  ("Walking And Game", 6 ,123),                     -- id 22
  ("Young And Father", 6 ,197),                     -- id 23
  ("Finding My Traditions", 7 ,179),                -- id 24
  ("Walking And Man", 7 ,229),                      -- id 25
  ("Hard And Time", 7 ,135),                        -- id 26
  ("Honey, I'm A Lone Wolf", 7 ,150),               -- id 27
  ("She Thinks I Won't Stay Tonight", 8 ,166),      -- id 28
  ("He Heard You're Bad For Me", 8 ,154),           -- id 29
  ("He Hopes We Can't Stay", 8 ,210),               -- id 30
  ("I Know I Know", 8 ,117),                        -- id 31
  ("He’s Walking Away", 9 ,159),                    -- id 32
  ("He’s Trouble", 9 ,138),                         -- id 33
  ("I Heard I Want To Bo Alone", 9 ,120),           -- id 34
  ("I Ride Alone", 9 ,151),                         -- id 35
  ("Honey", 10 ,79),                                -- id 36
  ("You Cheated On Me", 10 ,95),                    -- id 37
  ("Wouldn't It Be Nice", 10 ,213),                 -- id 38
  ("Baby", 10 ,136),                                -- id 39
  ("You Make Me Feel So..", 10 ,83);                -- id 40
  
INSERT INTO SpotifyClone.artistas_seguidos (usuario_id, artista_id)
VALUES
  (1,1),
  (1,4),
  (1,3),
  (2,1),
  (2,3),
  (3,2),
  (3,1),
  (4,4),
  (5,6),
  (5,5),
  (6,5),
  (6,3),
  (6,1),
  (7,2),
  (7,6),
  (8,1),
  (8,6),
  (9,5),
  (9,4),
  (9,3),
  (10,2),
  (10,5);

INSERT INTO SpotifyClone.historicos (usuario_id, cancoes_id, data_reproducao)
VALUES
  (1,36 ,'2020-02-28 10:45:55'),
  (1,25 ,'2020-05-02 05:30:35'),
  (1,23 ,'2020-03-06 11:22:33'),
  (1,14 ,'2020-08-05 08:05:17'),
  (1,15 ,'2020-09-14 16:32:22'),
  (2,34 ,'2020-01-02 07:40:33'),
  (2,24 ,'2020-01-02 07:40:33'),
  (2,21 ,'2020-10-09 12:27:48'),
  (2,39 ,'2020-09-21 13:14:46'),
  (3,6 ,'2020-11-13 16:55:13'),
  (3,3 ,'2020-12-05 18:38:30'),
  (3,26 ,'2020-07-30 10:00:00'),
  (4,2 ,'2021-08-15 17:10:10'),
  (4,35 ,'2021-07-10 15:20:30'),
  (4,27 ,'2021-01-09 01:44:33'),
  (5,7 ,'2020-07-03 19:33:28'),
  (5,12 ,'2017-02-24 21:14:22'),
  (5,14 ,'2020-08-06 15:23:43'),
  (5,1 ,'2020-11-10 13:52:27'),
  (6,38 ,'2019-02-07 20:33:48'),
  (6,29 ,'2017-01-24 00:31:17'),
  (6,30 ,'2017-10-12 12:35:20'),
  (6,22 ,'2018-05-29 14:56:41'),
  (7,5 ,'2018-05-09 22:30:49'),
  (7,4 ,'2020-07-27 12:52:58'),
  (7,11 ,'"2018-01-16 18:40:43'),
  (8,39 ,'2018-03-21 16:56:40'),
  (8,40 ,'2020-10-18 13:38:05'),
  (8,32 ,'2019-05-25 08:14:03'),
  (8,33 ,'2021-08-15 21:37:09'),
  (9,16 ,'2021-05-24 17:23:45'),
  (9,17 ,'2018-12-07 22:48:52'),
  (9,8 ,'2021-03-14 06:14:26'),
  (9,9 ,'2020-04-01 03:36:00'),
  (10,20 ,'2017-02-06 08:21:34'),
  (10,21 ,'2017-12-04 05:33:43'),
  (10,12,'2017-07-27 05:24:49'),
  (10,13 ,'2017-12-25 01:03:57');
  
  -- FIQUEI UM POUCO PERDIDO COM A MONTAGEM DE TABELA ENTÃO ME BASEI NA TABELA DO Carlos lima 
  -- https://github.com/tryber/sd-015-b-mysql-one-for-all/pull/111/commits/b75a8554bbf6b0f54c74d5651509f8852a8c7c48
  
  