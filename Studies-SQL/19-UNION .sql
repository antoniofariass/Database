--O operador UNION combina dois ou mais resultados de um select em um resultado apenas.

SELECT coluna1, coluna2
FROM tabela1 
UNION 
SELECT coluna1, coluna2 
FROM tabela2

SELECT [PRODUCTID] , [Name] , [ProductNumber]
FROM Production.Product
WHERE Name like '%Chain%'
UNION
SELECT [ProductID] , [Name], [ProductNumber] 
FROM Production.Product 
WHERE Name like '%Decal%'

