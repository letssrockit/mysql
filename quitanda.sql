

USE db_quitanda;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade INT,
datavalidade DATE,
preco DECIMAL NOT NULL,
primary key (id)
);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("tomate",100, "2023-12-15", 8.00),
("abacaxi",20, "2023-12-15", 5.00),
("manga",50, "2023-12-15", 10.00),
("morango",200, "2023-12-15", 12.00),
("uva",1200, "2023-12-15", 30.00),
("pêra",500, "2023-12-15", 2.99),
("cereja",500, "2023-12-15", 2.99);

select * from tb_produtos;

select nome from tb_produtos;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade INT,
datavalidade DATE,
preco DECIMAL NOT NULL,
primary key (id)
);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("tomate",100, "2023-12-15", 8.00),
("abacaxi",20, "2023-12-15", 5.00),
("manga",50, "2023-12-15", 10.00),
("morango",200, "2023-12-15", 12.00),
("uva",1200, "2023-12-15", 30.00),
("pêra",500, "2023-12-15", 2.99),
("cereja",500, "2023-12-15", 2.99);

select * from tb_produtos where id = 1;

SELECT * FROM tb_produtos WHERE preco > 5.00 AND quantidade < 100;

ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2);

ALTER TABLE tb_produtos ADD descricao VARCHAR(255);
SET SQL_SAFE_UPDATES = 1;

UPDATE tb_produtos SET preco = 2.99 WHERE Id = 6;
UPDATE tb_produtos SET preco = 2.99 WHERE Id = 7;
SELECT * FROM tb_produtos WHERE Id = 6;

UPDATE tb_produtos SET descricao = "Tomate Italiano" WHERE Id = 1;
UPDATE tb_produtos SET descricao = "Maçã Verde" WHERE Id = 2;
UPDATE tb_produtos SET descricao = "Laranja Lima" WHERE Id = 3;
UPDATE tb_produtos SET descricao = "Banana Prata" WHERE Id = 4;
UPDATE tb_produtos SET descricao = "Uva Italiana" WHERE Id = 5;
UPDATE tb_produtos SET descricao = "Pêra Williams" WHERE Id = 6;
UPDATE tb_produtos SET descricao = "Cereja de bolo" WHERE Id = 7;

UPDATE tb_produtos SET preco = 5.00;
ALTER TABLE tb_produtos CHANGE nome nomeproduto VARCHAR(255); 
SELECT * FROM tb_produtos;