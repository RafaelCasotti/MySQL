CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

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
("Hidraulico", "João"),
("Ferragem", "Marcio"),
("Azuleijos", "Marcos"),
("Tintas", "Helder"),
("Parafusos" , "Fernando");

INSERT INTO tb_produto (nome, preco, quantidade, fk_categoria)
VALUES
("Cano V", 30.00, 2, 1),
("Piso Cristal", 40.00, 3, 3),
("Tintas Branca", 120.00, 5, 4),
("Ferro Construção", 25.00, 20, 2),
("Tinta Amarela", 30.00, 5, 4),
("Cano PVC", 100.00, 30, 1),
("Parafuso Ads", 25.00, 4, 5),
("Pastilha HF", 200.00, 10, 3);


SELECT * FROM tb_produto WHERE preco > 50.00;

SELECT * FROM tb_produto WHERE preco > 3.00 and preco < 60.00;

SELECT * FROM tb_produto WHERE nome LIKE 'C%';

SELECT tipo, nome, preco 
FROM tb_categoria 
INNER JOIN tb_produto ON tb_categoria.id_categoria = tb_produto.fk_categoria;

SELECT tipo, nome
FROM tb_categoria 
INNER JOIN tb_produto ON tb_categoria.id_categoria = tb_produto.fk_categoria
WHERE tb_categoria.tipo = 'Hidraulico';
