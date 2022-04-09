/* 
INNER JOIN 

Serve para retornar apenas os resultados que correspondem tanto na tabela A como tabela B
*/

SELECT * 
FROM TabelaA
Inner Join TabelaB on TabelaA.nome = TabelaB.nome

/*
FULL OUTER JOIN

Retorna um conjunto de todos os registros correspondentes da TabelaA e TabelaB quando sao iguais 
Se nao houver valor correspondente, sera prenchido com com NULL.
*/

SELECT * 
FROM TabelaA
FULL OUTER JOIN TabelaB on TabelaA.nome = TabelaB.nome

/*
LEFT OUTER JOIN 

Retorna um conjunto de todos registros da TabelaA, alem disso, os registros correspondentes(quando
disponives) na TabelaB. Se nao houver registro correspondente sera preenchido com NULL.
*/

SELECT * 
FROM TabelaA
LEFT JOIN TabelaB ON TabelaA.nome = TabelaB.nome