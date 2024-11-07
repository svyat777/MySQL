CREATE DATABASE company;
USE company;

CREATE TABLE funcionarios(
id_funcionario INT AUTO_INCREMENT,
Nome VARCHAR(20),
Morada VARCHAR(40),
Contacto INT,
PRIMARY KEY(id_funcionario)
);

CREATE TABLE clientes(
id_cliente INT AUTO_INCREMENT,
Nome VARCHAR(20),
Morada VARCHAR(40),
Contacto INT,
id_funcionario INT,
PRIMARY KEY(id_cliente),
FOREIGN KEY(id_funcionario) REFERENCES funcionarios(id_cliente)
);

SELECT * FROM clientes, funcionarios;

INSERT INTO funcionarios VALUES
(1, 'joao 1', 'figueira', 915899989),
(2, 'joao 2', 'lisboa', 272896754),
(3, 'joao 3', 'gaia', 12589647),
(4, 'joao 4', 'lisboa', 272896754),
(5, 'joao 5', 'serta', 915899989);

INSERT INTO clientes VALUES
(1, 'prince 1', 'figueira', 915899989),
(2, 'prince 2', 'lisboa', 272896754),
(3, 'prince 3', 'gaia', 12589647),
(4, 'prince 4', 'lisboa', 272896754),
(5, 'prince 5', 'serta', 915899989);
