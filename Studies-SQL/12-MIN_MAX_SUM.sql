/*
Funçoes de agregação basicamente agregam ou combinam dados de uma tabela em 1 resultado só
*/

SELECT TOP 10 SUM(linetotal) AS 'Soma'   (serve para somar todos os valores das colunas) (AS serve para nomear a coluna do resultado)
FROM Sales.SalesOrderDetail 

SELECT TOP 10 MIN(LineTotal) (valor minimo da coluna)
From Sales.SalesOrderDetail 

SELECT TOP 10 MAX(LineTotal) (valor maximo da coluna)
From Sales.SalesOrderDetail 

SELECT TOP 10 AVG(LineTotal) (media de valores da coluna)
From Sales.SalesOrderDetail 


