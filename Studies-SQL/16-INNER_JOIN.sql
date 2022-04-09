/*
Serve para juntar a informação de duas tabelas distintas.
*/

SELECT C.ClienteId, C.Nome, E.Rua, E.Cidade
FROM Cliente C
INNER JOIN Endereco E ON E.EnderecoID = C.EnderecoId

/*
Exemplo
*/

SELECT p.BusinessEntityID, p.FirstName, p.LastName, pe.EmailAddress
From Person.Person as P
Inner Join Person.EmailAddress PE on p.BusinessEntityID = pe.BusinessEntityID
order by BusinessEntityID asc

SELECT a.Name, a.ListPrice, b.ProductSubcategoryID
FROM Production.Product as A
Inner Join Production.ProductSubcategory as b on a.ProductSubcategoryID = b.ProductSubcategoryID

/*
Desafio

Incluir BusinessENtityID, Name,PhoneNumberTypeID,PhoneNumber
*/

Select Ppp.BusinessEntityID, Ppt.Name, Ppt.PhoneNumberTypeID, Ppp.PhoneNumber
From Person.PhoneNumberType as Ppt
Inner Join Person.PersonPhone Ppp on Ppp.PhoneNumberTypeID = Ppt.PhoneNumberTypeID
order by BusinessEntityID asc

/*
Incluir AddressID, City, StateProvinceID, StateProvinceCode
*/

select Pa.AddressID, Pa.City, Ps.StateProvinceID, Ps.Name
From person.StateProvince Ps
inner join Person.Address Pa on Ps.StateProvinceID = Pa.StateProvinceID
order by AddressID asc