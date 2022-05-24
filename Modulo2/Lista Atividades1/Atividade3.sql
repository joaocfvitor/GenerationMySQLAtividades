CREATE DATABASE db_atividade3;

USE db_atividade3;

CREATE TABLE tb_alunes (

id_matricula INT AUTO_INCREMENT,
nome VARCHAR (255),
idade INT,
genero VARCHAR (20),
serie VARCHAR(10),
nota_media DECIMAL(3,1),
PRIMARY KEY(id_matricula)
);

INSERT INTO tb_alunes (nome, idade, genero, serie, nota_media) 
VALUES ("Patrik",17,"Masculino","1º ano",9.8),("Felipe",18,"Masculino","2º ano",6.9),
("Jessica",19,"Feminino","3º ano",7.6),("Fernando",18,"Masculino","2º ano",8.8),
("Julia",17,"Feminino","1º ano",10.0),("Sabrina",17,"Feminino","1º ano",9.2),
("Eduardo",19,"Masculino","3º ano",8.5),("Kely",18,"Feminino","2º ano",7.8);

SELECT * FROM tb_alunes;
SELECT * FROM tb_alunes WHERE nota_media > 7;
SELECT * FROM tb_alunes WHERE nota_media < 7;

UPDATE tb_alunes SET nota_media = 6.5 WHERE id_matricula = 1;