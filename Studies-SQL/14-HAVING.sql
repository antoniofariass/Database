/*
O having é basicamente muito usado em junção com o group by para filtrar
resultados de um agrupamento.

De uma forma mais simples eu gosto de entender ele como basicamente um where para dados agrupados.

*/

SELECT coluna1, funcaoAgregacao(coluna2)
FROM nomeTabela
GROUP BY coluna1
HAVING condicao

/*
A grande diferença entre HAVING e WHERE.
é queo group by é aplicado depois que os dados ja foram agrupados, enquanto o 
WHERE é aplicado antes dos dados serem agrupados. 


Exemplo 

Quais nomes no sistema tem uma ocorrencia maior que 10 vezes
*/

select FirstName, count(FirstName) as "quantidade"
from Person.person
group by FirstName
having count(firstname) > 10

/*
Quais os produtos que no total de vendas estão entre 162k a 500k
*/

SELECT PRODUCTID, SUM(LINETOTAL) AS 'TOTAL'
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LINETOTAL) BETWEEN 162000 AND 500000

/*
Quais nomes no sistemaa tem uma ocorrencia maior que 10 vezes, porem somente onde o titulo é 'Mr'
*/

SELECT FirstName, count(FirstName) as "Quantidade"
from Person.Person 
where title = 'Mr.'
GROUP by FirstName
having count(firstname) > 10

/*
Identificar as provincias(stateProvinceId) com o maior numero de cadastros no nosso sistema,
então é preciso encontrar quais provincias (StateProvinceID) estão registradas no banco de dados mais
que 1000 vezes.
*/

SELECT StateProvinceID as 'ID', count(stateprovinceid) as 'Quantidade'
FROM Person.Address
group by StateProvinceID
having count(stateprovinceid) > 1000

/*
Quais produtos (productID) não estão trazendo em média no mínimo 1 milhao em total de vendas(linetotal
*/

SELECT ProductID AS 'Produto', sum(linetotal) as 'Média de vendas'
FROM Sales.SalesOrderDetail
GROUP BY ProductID
having sum(linetotal) < 1000000
order by ProductID asc