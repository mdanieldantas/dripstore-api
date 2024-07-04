CREATE DATABASE db_dripstore;

USE dripstore;

CREATE TABLE usuarios (
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(100),
cpf VARCHAR(11),
email VARCHAR(50),
telefone INT,
senha VARCHAR(50),
PRIMARY KEY(id)
);

INSERT INTO usuarios (id,nome,cpf,email,telefone,senha )
VALUES  
(1,'Joao','12345678910','j@j.com',111111111,'123'),
(2,'Maria','12345678910','m@m.com',222222222,'123'),
(3,'Jose','12345678910','j@j.com',333333333,'123'),
(4,'Ana','12345678910','a@a.com',444444444,'123');

CREATE TABLE tb_pedidos (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    user_id INT,
    product_id INT,
    valor FLOAT,
    quantidade_prod INT,
    PRIMARY KEY(id),
)
INSERT INTO pedidos (id,nome,user_id,product_id,valor,quantidade_prod) 
VALUES (1,'bola',1,1,10.00,2);