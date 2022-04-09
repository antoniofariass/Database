SELECT coluna1,coluna2
FROM tabela
WHERE coluna BETWEEN minimo AND maximo

--o BETWEEN é usado para encontrar o valor entre um valor minomo e valor maximo 


--FILTRAR DATAS 

SELECT *
FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01'