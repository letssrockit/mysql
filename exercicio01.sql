create database db_rh;
use db_rh;
create table tb_colaboradores(
id bigint auto_increment,
nome varchar(255) not null,
idade int,
cargo varchar(255) not null,
salario decimal(10,2) not null,
primary key (id)
);

INSERT INTO tb_colaboradores(nome, idade, cargo, salario) 
VALUES ("João", 21,"Customer Support",1800.00),
("Laura", 35,"Analista de Dados Pleno",5000.00),
("Ana", 27,"Desenvolvedora Java Junior",3600.00),
("Maria", 42,"Desenvolvedora Java Sênior",12000.00),
("Gustavo", 22,"Assistente de Marketing Junior",1990.00);

select * from tb_colaboradores where salario > 2000;
select * from tb_colaboradores where salario < 2000;

update tb_colaboradores SET salario = 2200 WHERE Id = 5;

select * from tb_colaboradores;

