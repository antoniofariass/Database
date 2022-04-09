-- Utilizado para filtrar datas 

SELECT *, DATEPART( datepart , date )
FROM tabela

--Filtrando pelo mês a média de due

SELECT AVG(TotalDue) as Media, DATEPART(month, OrderDate) as Mes
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(MONTH,OrderDate)
ORDER BY Mes