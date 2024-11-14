CREATE DATABASE cinematografia;
USE cinematografia;

CREATE TABLE filmes(
   id_filme INT,
   titulo_filme VARCHAR(50),
   id_categoria INT,
   PRIMARY KEY(id_filme),
   FOREIGN KEY(id_categoria) REFERENCES categorias(id_categoria)
);


CREATE TABLE categorias(
   id_categoria INT,
   nome_categoria VARCHAR(50),
   PRIMARY KEY(id_categoria)
);


CREATE TABLE actors(
   id_actor INT,
   nome_actor VARCHAR(50),
   PRIMARY KEY(id_actor)
);


CREATE TABLE film_actor(
   id_filme INT,
   id_actor INT,
   PRIMARY KEY(id_filme, id_actor),
   FOREIGN KEY(id_filme) REFERENCES filmes(id_filme),
   FOREIGN KEY(id_actor) REFERENCES actors(id_actor)
);


INSERT INTO categorias VALUES
(1, "sports"),
(2, "drama");


INSERT INTO filmes VALUES
(1, "a liga dos oltimos", 1),
(2, "celso sem o verao", 2),
(3, "Tomb Raider", 2),
(4, "butterfly effect", 2);


INSERT INTO actors VALUES
(1, "Alicia Vikander"),
(2, "Dominic West"),
(3, "Walton Goggins"),
(4, "Ashton Kutcher"),
(5, "Amy Smart"),
(6, "Melora Walters");


INSERT INTO film_actor VALUES
(3, 1), -- Tomb Raider и Alicia Vikander
(3, 2), -- Tomb Raider и Dominic West
(3, 3), -- Tomb Raider и Walton Goggins
(4, 4), -- Butterfly Effect и Ashton Kutcher
(4, 5), -- Butterfly Effect и Amy Smart
(4, 6); -- Butterfly Effect и Melora Walters

#exer1
SELECT filmes.titulo_filme
FROM filmes
LEFT JOIN categorias 
ON categorias.id_categoria = filmes.id_categoria
WHERE categorias.nome_categoria = "sports"
ORDER BY filmes.titulo_filme;

#exer2
SELECT filmes.titulo_filme, actors.nome_actor
FROM filmes
JOIN film_actor ON filmes.id_filme = film_actor.id_filme
JOIN actors ON film_actor.id_actor = actors.id_actor
ORDER BY filmes.titulo_filme;
