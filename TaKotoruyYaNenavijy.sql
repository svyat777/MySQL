CREATE DATABASE svyatlox;
USE svyatlox;

CREATE TABLE Bebe(
    id_crianca INT AUTO_INCREMENT PRIMARY KEY,
    id_medico INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    peso DECIMAL(5, 2),
    altura DECIMAL(5, 2),
    nome_mae VARCHAR(100) NOT NULL
);

CREATE TABLE mae(
    id_mae INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    morada VARCHAR(100) NOT NULL,
    contacto  INT,
    data_nascimento DATE NOT NULL
);

CREATE TABLE medico(
    id_medico INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    contacto INT,
    especialidade VARCHAR(100) NOT NULL
);

CREATE TABLE nascimento(
   id_crianca INT AUTO_INCREMENT PRIMARY KEY,
   id_mae INT AUTO_INCREMENT,
   id_medico INT AUTO_INCREMENT 
);






CREATE DATABASE countries;
USE countries;


CREATE TABLE country(
   name_of_country VARCHAR(100) NOT NULL,
   postal_code int,
   name_of_city VARCHAR(100)
);

