/*
1.Boleanos 
2. Caractere 
3. Números 
4. Temporais 

1.Boleanos 
Por padrão ele é inicializado como nulo, e pode receber tanto 1 ou 0 
BIT 

2.Caracteres
Tamanho fixo - char // permite inserir até uma qunatidade fixa de caracteres e sempre ocupa todo o espaço reservado 10/50
Tamanho variáveis - varchar ou nvarchar // permite inserir até uma quantidade que for definida, porém só usa o espaço que for preenchido 10/50

3.Numeros 
Valores exatos

1.TINYINT - não tem parte valor fracionados (ex.: 1.43, 24.23) somente 1,123123 
2.SMALLINT - mesma coisa porem limite maior
3.INT - mesma coisa porem limite maior
4.BIGINT - mesma coisa porem limite maior 
5.NUMERICA ou DECIMAL - valores exatos, porem permite ter parte fracionados, que támbem podem ser especificado a precisão e 
escala (escala é o número de digitos na parte fracional) -ex: NUMERIC (5,2) 113,24

Valores Aproximados 
1.REAL - Tem precisao aproximada de até 15 digitos 
2.FLOAT - mesmo conceito de real 

4.Temporais 
DATE - armazena data no formao aaaa/mm/dd
DATETIME - armazena data e horas no formato aaaa/mm/dd:hh:mm:ss
DATETIME2 - armazena data e horas no formato aaaa/mm/dd:hh:mm:ss.sssss
SMALLDATETIME - data e hora nos respeitando o limite entre '1900-01-01:00:00:00.000000' até '2079-06-06:23:59:59'
TIME - horas, minutos, segundos e milisegundos respeitnado o limite de '00:00:00.00000' até '23:59:59.99999'