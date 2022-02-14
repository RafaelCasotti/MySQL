CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
id_classe int not null auto_increment,
nome varchar(20),
modalidade varchar(20),
primary key (id_classe)
);

CREATE TABLE tb_personagem(
id_personagem int not null auto_increment,
nome varchar(20),
ataque int,
defesa int,
fk_classe int,
primary key (id_personagem),
foreign key (fk_classe) references tb_classe(id_classe)
);

INSERT INTO tb_classe (nome, modalidade)
VALUES
("Slayer", "Acao"),
("Mog", "Luta"),
("Hunter", "Simulador"),
("Fifa 2022", "Interacao"),
("Divine," , "Estrategia");

INSERT INTO tb_personagem (nome, ataque, defesa, fk_classe)
VALUES
("Demon Slayer", 1500, 2000, 1),
("Cuth Mog", 3000, 2500, 2),
("Cheyios Hunter", 2300, 5000, 3),
("Nymar Jr", 2800, 2800, 4),
("Louther Divine", 2789, 500, 5),
("Ronaldino", 500, 1000, 4),
("System Lout", 200, 3000, 5),
("Peter Shter", 1000, 2500, 2);


SELECT * FROM tb_personagem WHERE ataque > 2000;

SELECT * FROM tb_personagem WHERE defesa > 1000 and defesa < 2000;

SELECT * FROM tb_personagem WHERE nome LIKE 'C%';

SELECT tb_classe.nome, tb_personagem.nome 
FROM tb_classe 
INNER JOIN tb_personagem on tb_classe.id_classe = tb_personagem.fk_classe;

SELECT tb_classe.nome, tb_personagem.nome
FROM tb_classe 
INNER JOIN tb_personagem on tb_classe.id_classe = tb_personagem.fk_classe
WHERE tb_classe.nome = 'Hunter';
