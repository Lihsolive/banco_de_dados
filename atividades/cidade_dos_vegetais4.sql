CREATE DATABASE cidade_dos_vegetais;

USE cidade_dos_vegetais;

CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    qualidade VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO tb_categorias (tipo, qualidade)
VALUES("Verduras", "Orgânico");
INSERT INTO tb_categorias (tipo, qualidade)
VALUES("Frutos", "Nacional");
INSERT INTO tb_categorias (tipo, qualidade)
VALUES("Legumes", "Importado");
INSERT INTO tb_categorias (tipo, qualidade)
VALUES("Frutas", "Importado");
INSERT INTO tb_categorias (tipo, qualidade)
VALUES("Verduras", "Inorgânicos");

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    quantidade INT,
    preco DECIMAL(3,2) NOT NULL,
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES("Batata Inglesa", 5, 1.12, 3);
INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES("Chuchu Branco Unidade", 2, 2.47, 2);
INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES("Alface Crespa Unidade", 1, 3.99, 1);
INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES("Pera Portuguesa Unidade", 1, 2.99, 4);
INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES("Couve Manteiga Maço", 1, 2.99, 5);
INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES("Manga Palmer Unidade", 1, 3.99, 4);
INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES("Abobrinha Italiana Unidade", 1, 1.80, 2);
INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES("Cenoura Unidade", 1, 1.11, 3);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 2;
SELECT * FROM tb_produtos WHERE preco BETWEEN 2 AND 3; 

SELECT * FROM tb_produtos WHERE nome LIKE "%B%"; 

SELECT * FROM tb_produtos
INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id; 

SELECT * FROM tb_produtos
INNER JOIN tb_categorias 
ON tb_categorias.id = tb_produtos.categoria_id
WHERE tb_categorias.qualidade = "Importado";  