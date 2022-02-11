CREATE DATABASE db_estudante;

USE db_estudante;

CREATE TABLE tb_estudante (
id int not null auto_increment,
aluno varchar(30),
nota float,
sala int not null,
professora varchar(30),
primary key(id)
);

INSERT INTO tb_estudante (aluno, nota, sala, professora) VALUES 
("Fabricio",8, 74, "Fatima"),
("Mateus",5.5, 89, "Ana"),
("Gabriela",7.5, 56, "Cida"),
("Laura",4, 74, "Fatima"),
("Bruno",9,89,"Ana"),
("Bruna",9.5,56,"Cida"),
("Edson",5,56,"Cida"),
("Lucas",8.5,74,"Fatima");

SELECT * from tb_estudante WHERE nota > 7;
SELECT * from tb_estudante WHERE nota < 7;
UPDATE tb_estudante set nota=6 WHERE id=2;
UPDATE tb_estudante set sala=89 WHERE id=8;
UPDATE tb_estudante set aluno="Matheus" WHERE id=2;
