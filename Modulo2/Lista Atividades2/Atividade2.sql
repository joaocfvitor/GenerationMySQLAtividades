CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria (
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255),
tamanho VARCHAR (255),
PRIMARY KEY(id)
);

INSERT INTO tb_categoria (tipo, tamanho)
VALUES ("Doce","Grande"), ("Salgada","Grande"), ("Doce","Média"), ("Salgada","Média"), ("Salgada","Pequena");

CREATE TABLE tb_pizza (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
sabor VARCHAR(255),
preco DECIMAL(4,2),
borda VARCHAR (30),
PRIMARY KEY(id),
categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_pizza(nome, sabor, preco, borda, categoria_id)
VALUES("Americana","Quatro Queijo",69.90,"Cheddar",2), ("Filipinas","Portuguesa",54.35,"Sem Borda",4),
("Canadense","Chocolate",78.90,"Morango",1), ("Indiana","Rucula",44.90,"Sem Borda",5),
("Zebra","Prestigio",58.50,"Caramelo",3), ("Floresta Negra","Chocolate Amargo",85.90,"Calda de Cereja",1),
("Hawaiana","Banana com Canela",75.90,"Sem Borda",3), ("Paris","Morango com Creme",82.90,"Sem Borda",3);

SELECT * FROM tb_pizza WHERE preco > 45.00;
SELECT * FROM tb_pizza WHERE preco BETWEEN 50 AND 100;
SELECT * FROM tb_pizza WHERE nome LIKE "%M%";

SELECT * FROM tb_pizza INNER JOIN tb_categoria ON tb_pizza.categoria_id = tb_categoria.id;
SELECT * FROM tb_pizza INNER JOIN tb_categoria ON tb_pizza.categoria_id = tb_categoria.id WHERE tipo LIKE "%Salgada%";
