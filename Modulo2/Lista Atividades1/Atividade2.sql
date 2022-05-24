CREATE DATABASE db_atividade2;

USE db_atividade2;

CREATE TABLE tb_produtos (

id_produto INT AUTO_INCREMENT,
nome VARCHAR(50),
cor VARCHAR(20),
marca VARCHAR (25),
preco DOUBLE,
tamanho CHAR,
PRIMARY KEY(id_produto)

);

INSERT INTO tb_produtos (nome, cor, marca, preco, tamanho) 
VALUES ("Camisa","Rosa","SDK",20.50,"P"), ("Calça","Preto","Versat",159.50,"M"),
("Moletom","Cinza","Reset",89.99,"G"), ("Camisa","Branca","VR",29.69,"G"),
("Short","Azul","Polene",69.55,"P"), ("Short","Verde","SDK",25.54,"M"),
("Camisa","Preto","SDK",20.50,"G"), ("Calça","Jeans","Volere",120.50,"M");

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco > 500.00;
SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET preco = 550.00 WHERE id_produto = 3;