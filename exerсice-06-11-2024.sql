CREATE DATABASE school;
USE school;

CREATE TABLE Estudantes(
   id INT AUTO_INCREMENT PRIMARY KEY,
   name_of_student VARCHAR(100) NOT NULL,
   age INT,
   data_nascimento DATE
);

insert into Estudantes(id, name_of_student, age, data_nascimento)
values
	(1, 'Stas Boretsky', 52, "1972-3-8"),
	(2,'Tyler Dyrden', 61, "1963-12-18"),
	(3,'Gustav Ahr', 21, "1996-11-1"),
	(4,'Fisenko Maxim', 25, "1998-12-14"),
	(5,'Zane Steckler', 23, "2000-12-2");
    


SELECT * FROM Estudantes
WHERE age > 18
ORDER BY age DESC
LIMIT 3;

    
