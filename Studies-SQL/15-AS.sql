/* AS serve para renomear uma coluna, como utilizado anteriormente. */

/* 
Encontrar o FirstName e LastName person.person e colocar em português 
*/

SELECT FirstName as "Primeiro Nome", LastName as "Ultimo Nome"
FROM Person.Person

/*
ProductNumber da tabela production.product "Numero do Produto"
*/

SELECT ProductNumber as "Numero do Produto"
FROM Production.Product

/*
Sales.salesorderdetail unitprice "Preço Unitario"
*/

SELECT UnitPrice AS "Preço Unitario"
FROM SALES.SalesOrderDetail