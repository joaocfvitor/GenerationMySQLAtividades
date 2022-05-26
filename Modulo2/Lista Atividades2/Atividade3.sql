CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categoria (
id BIGINT AUTO_INCREMENT,
receita VARCHAR(255),
tipo VARCHAR(255),
PRIMARY KEY(id)
);

INSERT INTO tb_categoria (receita,tipo)
VALUES ("Não","Charope"),("Sim","Comprimido"),("Não","Gotas"),("Sim","Pomada"),("Não","Comprimido");

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
validade DATE,
quantidade DOUBLE,
un VARCHAR (3),
preco DECIMAL(6,2),
PRIMARY KEY(id),
categoria_id BIGINT,
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_produtos (nome, validade, quantidade, un, preco, categoria_id) VALUES ("Dipirona","2022-06-28",10.00,"UN",15.99,5);
INSERT INTO tb_produtos (nome, validade, quantidade, un, preco, categoria_id) VALUES ("Ferid","2023-12-15",10.00,"G",28.45,4);
INSERT INTO tb_produtos (nome, validade, quantidade, un, preco, categoria_id) VALUES ("Brometo de Ipratrópio","2024-02-02",20.00,"ML",55.00,3);
INSERT INTO tb_produtos (nome, validade, quantidade, un, preco, categoria_id) VALUES ("Omeprazol","2027-03-26",28.00,"UN",36.79,5);
INSERT INTO tb_produtos (nome, validade, quantidade, un, preco, categoria_id) VALUES ("Verrux","2022-08-07",120.00,"ML",68.69,1);
INSERT INTO tb_produtos (nome, validade, quantidade, un, preco, categoria_id) VALUES ("Fortmax","2025-07-16",35.00,"UN",105.16,2);
INSERT INTO tb_produtos (nome, validade, quantidade, un, preco, categoria_id) VALUES ("Vitaxon","2023-01-18",20.00,"UN",22.50,5);
INSERT INTO tb_produtos (nome, validade, quantidade, un, preco, categoria_id) VALUES ("Ginkomed","2028-09-30",150.00,"ML",250.30,1);

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 50;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";
SELECT * FROM tb_produtos INNER JOIN tb_categoria ON tb_produtos.categoria_id = tb_categoria.id;
SELECT * FROM tb_produtos INNER JOIN tb_categoria ON tb_produtos.categoria_id = tb_categoria.id WHERE tipo LIKE "%Pomada%";