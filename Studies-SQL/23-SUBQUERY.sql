--SUBQUERY (SUBSELECT) serve para montar algo maior, select dentro de outro select 

--Monte um relário com todos os prod'utos que tem preço acima da média

SELECT *
FROM Production.Product
WHERE ListPrice > (SELECT AVG(ListPrice) from Production.Product)

--O NOME DOS FUNCIONARIO QUE TEM O CARGO DE 'Design Engineer'
SELECT  Name.BusinessEntityID, Name.FirstName, Job.JobTitle
FROM Person.Person as Name
Inner Join HumanResources.Employee Job on Name.BusinessEntityID = Job.BusinessEntityID
WHERE JobTitle = 'Design Engineer'

--ou

SELECT FirstName
FROM Person.Person 
WHERE BusinessEntityID in (SELECT BusinessEntityID FROM HumanResources.Employee WHERE JobTitle = 'Design Engineer')

--Todos os endereços que estão no estado de 'Alberta'
SELECT *
FROM Person.Address
WHERE StateProvinceID in (SELECT StateProvinceID FROM Person.StateProvince WHERE Name = 'Alberta')
