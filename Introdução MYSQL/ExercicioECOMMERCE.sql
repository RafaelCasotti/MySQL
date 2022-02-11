CREATE DATABASE db_loja;

USE db_loja;

CREATE TABLE tb_loja (
id int not null auto_increment,
produto varchar (30),
tamanho int not null,
cor varchar (20),
preco float,
primary key(id)
);

INSERT INTO tb_loja (produto, tamanho, cor, preco) VALUES 
("Tenis",42, "Branco", 550.00),
("Sandalia",36, "Vermelha", 80.00),
("Sapatenis",40, "Cinza", 175.00),
("Chinelo",38, "Amarelo", 30.00),
("Tenis",35,"Preto",200.00),
("Bota",41,"Preto",875.00),
("Chinelo",41,"Rosa",75.00),
("Bota Xips",39,"Cinza",550.00);

SELECT * from tb_loja WHERE preco > 500.00;
SELECT * from tb_loja WHERE preco < 500.00;
UPDATE tb_loja set preco=200.00 WHERE id=3;
UPDATE tb_loja set produto="Bota Transversal" WHERE id=8;
UPDATE tb_loja set preco=40.00 WHERE id=4;



