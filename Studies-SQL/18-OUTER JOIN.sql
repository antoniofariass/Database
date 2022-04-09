/*
Extrair informação da coluna que tem linhas com informação nula
*/

/*
Descobrir quais pessoas tem um cartao de credito registrado
*/

SELECT *
FROM Person.Person PP
INNER JOIN Sales.PersonCreditCard PC
on PP.BusinessEntityID = PC.BusinessEntityID

--INNER JOIN : 19118 linhas
--LEFT JOIN : 19972 linhas 