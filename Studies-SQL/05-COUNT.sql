SELECT COUNT(*)   --CONTAGEM DE COLUNAS
FROM TABELA

/* ATIVIDADE

1- Quantos produtos temos cadastrados em nossa tabela de produtos? */

SELECT count(distinct Name)
FROM Production.Product

--R: 504

/* 2- Quantos tamanhos de produtos  temos cadastrados em nossa tabela? */

SELECT count(size) 
FROM Production.Product

--R:211

/* 3- Quantos tamanhos de produtos diferentes temos cadastrados em nossa tabela? */

SELECT count(distinct size) 
FROM Production.Product

--R: 18
