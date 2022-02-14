CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
id_categoria int not null auto_increment,
tipo varchar(20),
entrega boolean,
primary key (id_categoria)
);

CREATE TABLE tb_produto(
id_produto int not null auto_increment,
nome varchar(20),
preco double,
quantidade int not null,
fk_categoria int,
primary key (id_produto),
foreign key (fk_categoria) references tb_categoria(id_categoria)
);

INSERT INTO tb_categoria (tipo, entrega)
VALUES
("Perfumaria", true),
("Remedios", false),
("Manipulados", true),
("Bêbê", true),
("Cabelo" , false);

INSERT INTO tb_produto (nome, preco, quantidade, fk_categoria)
VALUES
("Dipirona", 12.00, 5, 2),
("Bezetacil", 60.00, 2, 2),
("Xarope", 30.00, 1, 3),
("Tylenol", 25.00, 1, 4),
("Sabonete Infan", 10.00, 10, 4),
("Dorflex", 10.00, 5, 3),
("Shampoo", 15.00, 20, 5),
("Desodorante", 50.00, 1, 1);


SELECT * FROM tb_produto WHERE preco > 50.00;

SELECT * FROM tb_produto WHERE preco > 3.00 and preco < 60.00;

SELECT * FROM tb_produto WHERE nome LIKE 'B%';

SELECT tipo, nome, preco 
FROM tb_categoria 
INNER JOIN tb_produto ON tb_categoria.id_categoria = tb_produto.fk_categoria;

SELECT tipo, nome
FROM tb_categoria 
INNER JOIN tb_produto ON tb_categoria.id_categoria = tb_produto.fk_categoria
WHERE tb_categoria.tipo =  'Perfumaria';
