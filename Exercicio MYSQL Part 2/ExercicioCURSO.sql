CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria(
id_categoria int not null auto_increment,
tipo varchar(20),
atendente varchar(20),
primary key (id_categoria)
);

CREATE TABLE tb_produto(
id_produto int not null auto_increment,
nome varchar(40),
preco double,
matricula double not null,
fk_categoria int,
primary key (id_produto),
foreign key (fk_categoria) references tb_categoria(id_categoria)
);

INSERT INTO tb_categoria (tipo, atendente)
VALUES
("Tecnologia", "Marlene"),
("Saúde", "Silvia"),
("Engenharia", "Ana"),
("Administrativo", "Maria"),
("Mecanica" , "Flavia");

INSERT INTO tb_produto (nome, preco, matricula, fk_categoria)
VALUES
("Java Desenvolvedor", 150.00, 1, 1),
("Nutrição Esportiva", 300.00, 2, 2),
("Mecanica Industrial", 300.00, 3, 5),
("Segurança do trabalho", 350.00, 4, 3),
("Auxiliar Adminitrativo", 50.00, 5, 4),
("Enfermagem na familia", 40.00, 6, 2),
("Auxiliar Financeiro", 25.00, 7, 4),
("Metodologia SCRUM", 30.00, 8, 1);


SELECT * FROM tb_produto WHERE preco > 50.00;

SELECT * FROM tb_produto WHERE preco > 3.00 and preco < 60.00;

SELECT * FROM tb_produto WHERE nome LIKE 'J%';

SELECT tipo, nome, preco, matricula
FROM tb_categoria 
INNER JOIN tb_produto ON tb_categoria.id_categoria = tb_produto.fk_categoria;

SELECT tipo, nome, preco
FROM tb_categoria 
INNER JOIN tb_produto ON tb_categoria.id_categoria = tb_produto.fk_categoria
WHERE tb_categoria.tipo = 'Tecnologia';

ALTER TABLE tb_produto MODIFY COLUMN nome VARCHAR(50) ;
