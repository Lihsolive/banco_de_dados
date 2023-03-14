CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    fabricante VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO tb_categorias (tipo, fabricante) 
VALUES ("Medicamento", "Advil");
INSERT INTO tb_categorias (tipo, fabricante) 
VALUES ("Genérico", "EMS");
INSERT INTO tb_categorias (tipo, fabricante) 
VALUES ("Medicamento", "Anador");
INSERT INTO tb_categorias (tipo, fabricante) 
VALUES ("Cuidados diários", "3M");
INSERT INTO tb_categorias (tipo, fabricante)
VALUES ("Cuidados diários", "Dove");
INSERT INTO tb_categorias (tipo, fabricante)
VALUES ("Mamãe e Bebê", "Granado");

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    quantidade INT,
    categoria_id BIGINT,
    preco DECIMAL(5,2),
	PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome, quantidade, categoria_id, preco)
VALUES ("Advil Mulher Ibuprofeno 400mg", 1, 1, 5.07);
INSERT INTO tb_produtos (nome, quantidade, categoria_id, preco)
VALUES ("Anador 1g 10 comprimidos", 1, 5, 12.99);
INSERT INTO tb_produtos (nome, quantidade, categoria_id, preco)
VALUES ("Antitranspirante Aerosol 250ml", 1, 5, 19.90);
INSERT INTO tb_produtos (nome, quantidade, categoria_id, preco)
VALUES ("Kit Sabonete em Barra", 6, 5, 23.09);
INSERT INTO tb_produtos (nome, quantidade, categoria_id, preco)
VALUES ("Ácido Acetilsalicílico", 1, 2, 2.40);
INSERT INTO tb_produtos (nome, quantidade, categoria_id, preco)
VALUES ("Aripiprazol 15mg 30 Comprimidos", 1, 2, 188.00);
INSERT INTO tb_produtos (nome, quantidade, categoria_id, preco)
VALUES ("Sabonete Líquido Bebê Tradicional 500ml", 1, 6, 33.59);
INSERT INTO tb_produtos (nome, quantidade, categoria_id, preco)
VALUES ("Lenços Umedecidos Bebê", 1, 6, 15.49);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60; 

SELECT * FROM tb_produtos WHERE nome LIKE "%C%"; 

SELECT * FROM tb_produtos
INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id; 

SELECT * FROM tb_produtos
INNER JOIN tb_categorias 
ON tb_categorias.id = tb_produtos.categoria_id
WHERE tb_categorias.tipo = "Mamãe e Bebê";  