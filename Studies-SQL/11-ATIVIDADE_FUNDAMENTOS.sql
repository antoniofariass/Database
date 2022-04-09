/*
1 - Quantos produtos temos cadastrado no sistema que custam mais que 1500 dolares?
*/

SELECT COUNT(ListPrice)
FROM Production.Product
WHERE ListPrice > 1500

/*
2- Quantas pessoas temos com o sobrenome que inicia com a letra P?
*/

SELECT COUNT(LastName)
FROM Person.Person
WHERE MiddleName like 'P%'

/*
3 - Em quantas cidades unicas estao cadastrados nossos clientes? 
*/

SELECT count(distinct City)
FROM Person.Address

/*
4- Quais sao as cidades unicas que temos cadastrados em nosso sistema?
*/

SELECT distinct(City)
FROM Person.Address

/*
5- Quantos produtos vermelhos tem preco entre 500 a 1000 dolares?
*/

SELECT count(listprice)
FROM Production.Product
WHERE Color = 'red' and ListPrice between 500 and 1000

/*
6- Quantos produtos cadastrados tem a palavra 'road' no nome deles?
*/

SELECT count(Name)
FROM Production.Product
WHERE Name like '%road%'
