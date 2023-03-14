CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

-- TABELA INDEPENDENTE
CREATE TABLE tb_categorias (
	id bigint auto_increment,
    tipo VARCHAR(255),
    tamanho VARCHAR(255),  
    PRIMARY KEY (id)
);

-- REGISTROS DA TABELA tb_categorias
INSERT INTO tb_categorias(tipo, tamanho)
VALUES ("Tradicional", "Grande");
INSERT INTO tb_categorias(tipo, tamanho)
VALUES ("Doce", "Média");
INSERT INTO tb_categorias(tipo, tamanho)
VALUES ("Vegetariana", "Grande");
INSERT INTO tb_categorias(tipo, tamanho)
VALUES ("Novidade", "Média");
INSERT INTO tb_categorias(tipo, tamanho)
VALUES ("Gourmet", "Média");

SELECT * FROM tb_categorias;

-- TABELA DEPENDENTE 
CREATE TABLE tb_pizzas (
	id bigint AUTO_INCREMENT, 
    nome VARCHAR(100),
    quantidade INT,
    categoria_id bigint,
    descricao VARCHAR(255),
	preco DECIMAL (3,2), 
    PRIMARY KEY(id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (nome, quantidade, categoria_id, descricao, preco)
VALUES ("Portuguesa", 1, 1, "Muçarela, presunto, cebola, milho e azeitonas", 52.00);
INSERT INTO tb_pizzas (nome, quantidade, categoria_id, descricao, preco)
VALUES ("Muçarela", 2, 1, "Muçarela e rodelas de tomate", 90.00);
INSERT INTO tb_pizzas (nome, quantidade, categoria_id, descricao, preco)
VALUES ("Francesa", 1, 4, "Cogumelos com queijo cremoso e tomate cereja", 55.00);
INSERT INTO tb_pizzas (nome, quantidade, categoria_id, descricao, preco)
VALUES ("Mexicana", 1, 4, "Carne moída apimentada, queijos cheddar, muçarela e requeijão", 55.00);
INSERT INTO tb_pizzas (nome, quantidade, categoria_id, descricao, preco)
VALUES ("Caprese", 1, 5, "Muçarela de búfala, tomate, folhas de manjericão e azeitonas", 55.00);
INSERT INTO tb_pizzas (nome, quantidade, categoria_id, descricao, preco)
VALUES ("Brigadeiro", 1, 2, "Chocolate cremoso e granulado", 45.00);
INSERT INTO tb_pizzas (nome, quantidade, categoria_id, descricao, preco)
VALUES ("Brócolis", 1, 3, "Brócolis na manteiga e muçarela", 40.00);
INSERT INTO tb_pizzas (nome, quantidade, categoria_id, descricao, preco)
VALUES ("Carícia", 1, 3, "Muçarela de búfala, palmito, tomate seco e rúcula", 40.00);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100; 

SELECT * FROM tb_pizzas WHERE nome LIKE "%M%"; 

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id; 

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias 
ON tb_categorias.id = tb_pizzas.categoria_id
WHERE tb_categorias.id = 2; 