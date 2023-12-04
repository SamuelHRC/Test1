/*
# DEFINITION
Usada para agrupar linhas com base nos valores de uma ou mais colunas, permitindo que 
você realize operações agregadas em grupos de linhas

# SINTAXE BÁSICA
SELECT coluna1, coluna2, AGGREGATE_FUNÇÃO(coluna)
FROM nome_da_tabela
GROUP BY coluna1, coluna2


# É fundamental para ser usada junto com as funções de agregação. Devemos utilizá-la quando precisamos obter informação que nasce do agrupamento de registros.
Portanto, será o aliado ideal para ser usado junto com COUNT(), SUM() e AVG().

Ex.:
select userID, count(*) as Total
	from pedido
	group by userID
	order by total desc;


*/
select * from system_user;
select id_system user as user,
count/