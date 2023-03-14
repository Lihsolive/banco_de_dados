CREATE DATABASE db_airalojas;

USE db_airalojas;

CREATE TABLE tb_produtos (
		id bigint auto_increment,
        produto VARCHAR(50) not null,
        categoria VARCHAR(50) not null,
        tamanho VARCHAR(10) not null,
        quantidade int not null,
        preco decimal not null,
        PRIMARY KEY (id)
);

INSERT INTO tb_produtos(produto, categoria, tamanho, quantidade, preco)
VALUES("blusa", "feminino","XS(PP)", 1, 49.00);
INSERT INTO tb_produtos(produto, categoria, tamanho, quantidade, preco)
VALUES("T-shirt", "masculino", "M(M)", 3, 160.00);
INSERT INTO tb_produtos(produto, categoria, tamanho, quantidade, preco)
VALUES("Conjunto(camiseta&shorts)", "infantil", "7Y(122CM)", 1, 50.90);
INSERT INTO tb_produtos(produto, categoria, tamanho, quantidade, preco)
VALUES("Top", "plus size", "G2", 1, 34.90);
INSERT INTO tb_produtos(produto, categoria, tamanho, quantidade, preco)
VALUES("Calça jeans", "feminino", "L(M)", 1, 133.90);
INSERT INTO tb_produtos(produto, categoria, tamanho, quantidade, preco)
VALUES("Vestido", "feminino", "M(M)", 2, 140.00);
INSERT INTO tb_produtos(produto, categoria, tamanho, quantidade, preco)
VALUES("Casaco", "masculino", "XL(GG)", 1, 158.95);
INSERT INTO tb_produtos(produto, categoria, tamanho, quantidade, preco)
VALUES("Saia", "feminino", "S(P)", 1, 82.90);

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco < 100;
SELECT * FROM tb_produtos WHERE preco > 100;

UPDATE tb_produtos SET preco = 130 WHERE id = 6;