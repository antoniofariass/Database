--FORMA DE AGRUPAR DADOS NA MESMA TABELA 

SELECT NOME_COLUNA
FROM TABELA A, TABELA B 
WHERE CONDICAO 

--CLIENTES QUE MORAM NA MESMA REGIAO 

SELECT A.ContactName , A.Region , B.ContactName , B.Region
FROM CUSTOMERS A, CUSTOMERS B 
WHERE A.Region = B.Region

--Nome e data de contratação de todos os funcionários que foram contratados no mesmo ano 

SELECT A.Firstname , B.HireDate , b.FirstName , B.HireDate
FROM Employees A ,Employees B
WHERE DATEPART(YEAR, a.hiredate) = DATEPART(YEAR,b.hiredate)

--Na tabela [Order Details] quais produtos tem o mesmo percentual de desconto

SELECT A.ProductID , A.Discount,B.ProductID, B.Discount
FROM [Order Details] A , [Order Details] B
WHERE A.Discount = B.Discount 