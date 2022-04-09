SELECT coluna1, coluna2
FROM tabela 
ORDER BY coluna1 asc/desc   --ORDENAR UMA COLUNA EM ORDEM CRESCENTE OU DECRESCENTE

/* 
ATIVIDADE 1 - Obter o ProductId dos 10 produtso mais caros cadastrados no sistema, listando 
do mais caro para o mais barato.
*/

SELECT TOP 10 ProductID, ListPrice
FROM Production.Product
ORDER BY ListPrice desc

/*
ATIVIDADE 2 - Obter o nome e numeros dos produtos que tem o ProdutctID entre 1~4
*/

SELECT TOP 4 Name, ProductNumber
FROM Production.Product
ORDER BY ProductID asc

