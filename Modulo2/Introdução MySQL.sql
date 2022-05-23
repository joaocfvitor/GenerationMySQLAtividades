-- Cirando o banco de dados

CREATE DATABASE db_quitanda;

-- Seleciona o banco onde quer criar a tabela 

USE db_quitanda;

-- Criando a tabela 

CREATE TABLE tb_produtos( 
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL, -- not null força o usuario entrar com um dado
	quantidade INT,
	data_validade DATE,
	preco DECIMAL NOT NULL,
	PRIMARY KEY(id)
);

-- inserir dados 

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("Bergamota",20,"2022-05-30", 8.99);
INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("Maça",50,"2022-06-07", 6.55);
INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("Melancia",10,"2022-06-02", 5.39);
INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("Tomate",80,"2022-05-31", 18.69);
-- Listar dados da tabela 

SELECT * FROM tb_produtos;

-- Alterar um dado da tabela que fico incorreto 

ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2); -- 0000,00

-- Incluir uma nova coluna na tabela 

ALTER TABLE tb_produtos ADD descricao VARCHAR(500);

-- Altera o preço (dados expecifico da tabela)

UPDATE tb_produtos SET preco = 8.99 WHERE id = 1;

-- ODENAR POR ORDEM ALFABETICA 

SELECT * FROM tb_produtos ORDER BY nome; -- ordem crescente
SELECT * FROM tb_produtos ORDER BY nome DESC; -- ordem decrescente

-- Deletar uma informação da tabela 

DELETE FROM tb_produtos WHERE id = 3;

