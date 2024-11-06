CREATE DATABASE countries;
USE countries;


CREATE TABLE country(
   postal_code int,
   name_of_country VARCHAR(100) NOT NULL
);


insert into country(postal_code, name_of_country)
values
	(10115, 'Germany'),
	(75001,'France'),
	(00144,'Italy'),
	(28001,'Spain'),
	(2000,'Australia')