CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe (

id BIGINT AUTO_INCREMENT,
nome_classe VARCHAR (30),
tipo_arma VARCHAR(50),
PRIMARY KEY (id)
);

INSERT INTO tb_classe (nome_classe, tipo_arma) 
VALUES ("Arqueiro","Arco-flecha"), ("Guerreiro","Espada"), ("Mago","Cajado"), ("Ciclope","Martelo"), ("Minotauro","Machado");

SELECT * FROM tb_classe;

CREATE TABLE tb_personagem (

id_personagem BIGINT AUTO_INCREMENT,
nick VARCHAR (15) NOT NULL,
vila VARCHAR (30),
nivel INT,
mascote VARCHAR (30),
ataque INT,
defesa INT,
PRIMARY KEY(id_personagem),
classe_id BIGINT,
FOREIGN KEY (classe_id) REFERENCES tb_classe(id)
);

INSERT INTO tb_personagem (nick, vila, nivel, mascote, ataque, defesa, classe_id)
VALUES ("Rafa_gb","Vila do Gelo",01,"Globim",3000,2000,2), ("Virinha58","Vila do Fogo",01,"Texugo",2000,3000,1),
("Tarinha","Vila do Vento",01,"Thamos",2500,2500,3), ("Veronicacat","Vila do Fogo",01,"Gorgom",2800,2200,4),
("Fernandinho","Vila do Gelo",01,"Passaro de Gelo",1800,3200,5), ("Talarica123","Vila do Pedra",01,"Texugo",3000,2000,2),
("Eduardo_max","Vila do Vento",01,"Tatu Bola",2500,2500,3), ("Julia_ahazo","Vila do Folha",01,"Gorgom",2800,2200,4);

SELECT * FROM tb_personagem;
SELECT * FROM tb_personagem WHERE ataque > 2000;
SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagem WHERE nick LIKE "%c%";
SELECT * FROM tb_personagem INNER JOIN tb_classe ON tb_personagem.classe_id = tb_classe.id;
SELECT * FROM tb_personagem INNER JOIN tb_classe ON tb_personagem.classe_id = tb_classe.id WHERE tb_classe.id = 2;


