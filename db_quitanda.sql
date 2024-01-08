CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE table tb_produtos(
id BIGINT auto_increment,
nome VARCHAR(255) NOT NULL,
quantidade INT,
datavalidade date,
preco DECIMAL NOT NULL,
PRIMARY KEY (id)

);