CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
id_categoria int not null auto_increment,
tipo varchar(20),
entrega boolean,
primary key (id_categoria)
);

CREATE TABLE tb_pizza(
id_pizza int not null auto_increment,
nome varchar(20),
preco double,
tamanho char,
fk_categoria int,
primary key (id_pizza),
foreign key (fk_categoria) references tb_categoria(id_categoria)
);

INSERT INTO tb_categoria (tipo, entrega)
VALUES
("Salgada", true),
("Salgada", False),
("Doce", true),
("Doce", true),
("Doce" , false);

INSERT INTO tb_pizza (nome, preco, tamanho, fk_categoria)
VALUES
("Magerita", 60.00, "G", 1),
("Bombom", 30.00, "P", 5),
("Palmito", 45.00, "M", 2),
("Nutela Morango", 55.00, "M", 3),
("Portuguesa", 60.00, "G", 1),
("Calabreza Especial", 65.00, "G", 2),
("Banana", 35.00, "P", 5),
("Camarao", 70.00, "M", 2);


SELECT * FROM tb_pizza WHERE preco > 45;

SELECT * FROM tb_pizza WHERE preco > 29.00 and preco < 60.00;

SELECT * FROM tb_pizza WHERE nome LIKE 'C%';

SELECT tipo, nome, preco 
FROM tb_categoria 
INNER JOIN tb_pizza on tb_categoria.id_categoria = tb_pizza.fk_categoria;

SELECT tipo, nome
FROM tb_categoria 
INNER JOIN tb_pizza on tb_categoria.id_categoria = tb_pizza.fk_categoria
WHERE tb_categoria.tipo = 'Doce';