CREATE DATABASE db_escolaJardimEsperanca;

USE db_escolaJardimEsperanca;

CREATE TABLE tb_setimoAno (
		id bigint auto_increment,
        nome VARCHAR(255) not null,
        turma VARCHAR(5) not null,
        media decimal not null,
        desempenho VARCHAR(50) not null,
        PRIMARY KEY (id)
);

INSERT INTO tb_setimoAno (nome, turma, media, desempenho)
VALUES("Alice Fernandes", "B", 8.00, "BOM");

INSERT INTO tb_setimoAno (nome, turma, media, desempenho)
VALUES("Pedro Gomes", "E", 7.00, "REGULAR");

INSERT INTO tb_setimoAno (nome, turma, media, desempenho)
VALUES("Bruna Maria", "A", 9.00, "BOM");

INSERT INTO tb_setimoAno (nome, turma, media, desempenho)
VALUES("Caio Domingues", "C", 5.00, "REGULAR");

INSERT INTO tb_setimoAno (nome, turma, media, desempenho)
VALUES("Carina Amanda", "D", 4.00, "RUIM");

INSERT INTO tb_setimoAno (nome, turma, media, desempenho)
VALUES("Lucas Prado", "A", 6.00, "REGULAR");

INSERT INTO tb_setimoAno (nome, turma, media, desempenho)
VALUES("Sofia Melina", "B", 8.00, "BOM");

INSERT INTO tb_setimoAno (nome, turma, media, desempenho)
VALUES("Rodrigo Marques", "C", 7.00, "REGULAR");

INSERT INTO tb_setimoAno (nome, turma, media, desempenho)
VALUES("André Gabriel", "B", 9.00, "BOM");

SELECT * FROM tb_setimoAno;

SELECT * FROM tb_setimoAno WHERE media > 7;
SELECT * FROM tb_setimoAno WHERE media < 7;

UPDATE tb_setimoAno SET MEDIA = 8, desempenho = "BOM" WHERE id = 4;

