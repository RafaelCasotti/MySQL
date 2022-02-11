CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_fun (
id int(5) not null auto_increment,
nome varchar(20) not null,
ativo boolean,
cargo varchar(50) not null,
salario decimal,
primary key(id)
);

INSERT INTO tb_fun (nome, ativo, cargo, salario) VALUES 
("Rafael",true, "Desenvolvedor Web Jr", 5000.00),
("Maira",false, "Analista de Financeiro", 2500.00),
("Lucas",true, "Auxiliar Administrativo", 1500.00),
("Alice",true, "Auxiliar Geral", 1325.00),
("Marta",false,"Auxiliar Financeiro",1325.00);

SELECT * from tb_fun WHERE salario < 2000.00;
SELECT * from tb_fun WHERE salario > 2000.00;
UPDATE tb_fun set cargo="Desenvolvedor Web Senior" WHERE id=1;



