--OPERADORES DO SQL 

/*
+ SOMA
- SUBTRAÇÃO 
* MULTIPLICAÇÃO 
/ DIVISÃO 
*/

SELECT UnitPrice 'operador' LineTotal
FROM Sales.SalesOrderDetail

--ARREDONDAR VALORES 
SELECT ROUND(LineTotal,2)
FROM Sales.SalesOrderDetail

--RAIZ QUADRADA
SELECT SQRT(LineTotal)
FROM Sales.SalesOrderDetail
