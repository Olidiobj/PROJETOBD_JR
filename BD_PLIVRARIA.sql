/*CRIANDO O BANCODE DADOS LIVRARIA */
CREATE DATABASE PLIVRARIA;

/*USANDO O BANCO DE DADOS LIVRARIA */
USE PLIVRARIA;

/*CRIANDO AS TABELAS DO BANCO DE DADOS LIVRARIA */

CREATE TABLE LIVRO(
ID_LIVRO INT,
ID_EDITORA INT,
NOME_LIVRO VARCHAR(50),
PRECO DOUBLE
);

CREATE TABLE EDITORA(
ID_EDITORA INT,
NOME_EDITORA VARCHAR(50)
);

/*INSERINDO AS INFORMAÇÕES NAS TABELAS  */
SELECT * FROM LIVRO;

INSERT INTO LIVRO(ID_LIVRO, ID_EDITORA, NOME_LIVRO,PRECO) VALUES(1,1,'O EXTRAORDINARIO',50.00);
INSERT INTO LIVRO(ID_LIVRO, ID_EDITORA, NOME_LIVRO,PRECO) VALUES(2,2,'A CABANA',69.90);
INSERT INTO LIVRO(ID_LIVRO, ID_EDITORA, NOME_LIVRO,PRECO) VALUES(3,1,'PONTO DE IMPACTO',49.90);
INSERT INTO LIVRO(ID_LIVRO, ID_EDITORA, NOME_LIVRO,PRECO) VALUES(4,2,'O ANDAR DO BEBADO',79.90);
INSERT INTO LIVRO(ID_LIVRO, ID_EDITORA, NOME_LIVRO,PRECO) VALUES(5,1,'JARDIM DA LUA',66.50);

SELECT * FROM EDITORA;

INSERT INTO EDITORA(ID_EDITORA,NOME_EDITORA) VALUES( 1,'SARAIVA');
INSERT INTO EDITORA(ID_EDITORA,NOME_EDITORA) VALUES( 2,'CULTURA');

/*CRIANDO A PROCEDURE QUE CONCATENA O PREÇO DO LIVRO */

DELIMITER $$

CREATE PROCEDURE VERPRECO(vlivro int)
BEGIN

SELECT CONCAT(' O PREÇO DO LIVRO '   , NOME_LIVRO,   ' É '   , PRECO) AS PREÇO
FROM LIVRO
WHERE ID_LIVRO = vlivro;

END $$


CALL VERPRECO(3);