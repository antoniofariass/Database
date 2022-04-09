/*
O GROUP BY basicamente divide o resultado da sua pesquisa em grupos 

-Para cada grupo você pode aplicar uma função de agregação, por exemplo:
    -calcular a soma de itens
    -contar o numero de itens naquele grupo

*/

SELECT coluna1, funcaoAgregacao(coluna2)
FROM nomeTabela
GROUP BY coluna1;

SELECT SpecialOfferID, count(SpecialOfferID) as 'Quantidade'
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID

/*
Atividades

Qual foi a quantidade de produtos vendido de cada um?
*/

SELECT ProductID as 'Numero do produto', count(ProductID) AS 'Quantidade'
FROM Sales.SalesOrderDetail
GROUP BY ProductID

/*
Quantos nomes de cada nome temos cadastrado em nosso banco de dados?
*/

SELECT FirstName as 'Nome', count(FirstName) as 'Quantidade que aparece'  
FROM Person.Person
GROUP BY FirstName

/*
Na tabela production.product qual a média de preço para os produtos que são pratas(silver)
*/

SELECT Color as 'Cor', AVG(ListPrice) as 'Média de Preço'
FROM Production.Product
WHERE Color = 'Silver'
GROUP BY Color 

/*
Quantas pessoas tem o mesmo MiddleName agrupadas por o MiddleName
*/

SELECT MiddleName, count(FirstName) AS 'Quantidade'
FROM Person.Person
GROUP BY MiddleName

/*
Em média qual é a quantiade que cada produto é vendido na loja
*/

SELECT ProductId as 'N° Produto', AVG(OrderQty) as 'Média de produtos vendidos'
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY [N° Produto] ASC

/*
Qual foram as 10 vendas que no total tiveram os maiores valores de venda
ordenado do maior valor para o menor 
*/

SELECT TOP 10 ProductID, SUM(LineTotal) AS 'Total de Vendas'
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY [Total de Vendas] DESC

/*
Quantos produtos e qual e a quantidade media de produtos 
que tem cadastrado na ordem de serviçp(WorkOrder), agrupados por product id.
*/

SELECT ProductID, COUNT(productid) as 'Contagem', AVG(OrderQty) as 'Media'
FROM Production.WorkOrder
GROUP BY ProductID
ORDER BY ProductID ASC

