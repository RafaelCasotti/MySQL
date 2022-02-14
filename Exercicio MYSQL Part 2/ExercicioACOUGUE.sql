CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categoria(
id_categoria int not null auto_increment,
tipo varchar(20),
funcionario varchar(20),
primary key (id_categoria)
);

CREATE TABLE tb_produto(
id_produto int not null auto_increment,
nome varchar(20),
preco double,
quantidade double not null,
fk_categoria int,
primary key (id_produto),
foreign key (fk_categoria) references tb_categoria(id_categoria)
);

INSERT INTO tb_categoria (tipo, funcionario)
VALUES
("Ave", "João"),
("Linguica", "Marcio"),
("Suina", "Marcos"),
("Bovina", "Helder"),
("Peixe" , "Fernando");

INSERT INTO tb_produto (nome, preco, quantidade, fk_categoria)
VALUES
("Maminha", 56.00, 2.5, 4),
("Ling Porco", 40.00, 3.0, 2),
("Pernil", 30.00, 2, 3),
("Traira", 25.00, 3, 5),
("Panceta", 30.00, 2, 3),
("Picanha", 100.00, 1.8, 4),
("Assa Frango", 25.00, 4, 1),
("Coxa Frango", 25.00, 2, 1);


SELECT * FROM tb_produto WHERE preco > 50.00;

SELECT * FROM tb_produto WHERE preco > 3.00 and preco < 60.00;

SELECT * FROM tb_produto WHERE nome LIKE 'C%';

SELECT tipo, nome, preco 
FROM tb_categoria 
INNER JOIN tb_produto ON tb_categoria.id_categoria = tb_produto.fk_categoria;

SELECT tipo, nome
FROM tb_categoria 
INNER JOIN tb_produto ON tb_categoria.id_categoria = tb_produto.fk_categoria
WHERE tb_categoria.tipo = 'Ave';
