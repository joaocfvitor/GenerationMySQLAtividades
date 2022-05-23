CREATE DATABASE db_atividade1

USE db_atividade1;

CREATE TABLE db_atividade1(

	id BIGINT AUTO_INCREMENT,
    nome_colaborador VARCHAR(255) NOT NULL,
    idade INT NOT NULL,
    genero VARCHAR(255) NOT NULL,
    data_efetivacao DATE NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO db_atividade1 (nome_colaborador, idade, genero, data_efetivacao) 
VALUES ("Amanda",20,"Feminino","2020-05-06");

INSERT INTO db_atividade1 (nome_colaborador, idade, genero, data_efetivacao) 
VALUES ("Ronaldo",32,"Masculino","2018-02-28");

INSERT INTO db_atividade1 (nome_colaborador, idade, genero, data_efetivacao) 
VALUES ("Fernanda",26,"Feminino","2021-03-08");

INSERT INTO db_atividade1 (nome_colaborador, idade, genero, data_efetivacao) 
VALUES ("Pedro",55,"Masculino","2001-12-01");

INSERT INTO db_atividade1 (nome_colaborador, idade, genero, data_efetivacao) 
VALUES ("Patricia",44,"Feminino","2005-08-09");

ALTER TABLE db_atividade1 ADD salario DECIMAL(7,2); -- 00000,00
ALTER TABLE db_atividade1 ADD cargo VARCHAR(255);

UPDATE db_atividade1 SET salario = 4800.00 WHERE id = 5;
UPDATE db_atividade1 SET cargo = "Analista de compras" WHERE id = 5;

SELECT * FROM db_atividade1;
SELECT * FROM db_atividade1 WHERE salario > 2000;
SELECT * FROM db_atividade1 WHERE salario < 2000;

UPDATE db_atividade1 SET salario = 1800.50 WHERE id = 3;

