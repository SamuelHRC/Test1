--  HAVING

/*
# DEFINITION
A cláusula "HAVING" no MySQL é usada em conjunto com a cláusula "GROUP BY" em consultas SQL para impor condições em grupos de resultados. 
Ela é usada principalmente para filtrar grupos de registros com base em agregações, como "SUM," "COUNT," "AVG," ou "MAX," 
após a aplicação da cláusula "GROUP BY."

A principal diferença entre as cláusulas "WHERE" e "HAVING" é que a "WHERE" filtra as linhas individuais antes da 
agregação, enquanto a "HAVING" filtra os grupos de resultados após a agregação. Isso torna a cláusula "HAVING" útil 
quando você deseja aplicar condições a grupos, como a soma de valores de uma coluna, em vez de condições em registros individuais.

Aqui está um exemplo de uso da cláusula "HAVING" em uma consulta SQL:
Suponha que você tenha uma tabela de pedidos e deseje encontrar os clientes que fizeram mais de dois pedidos:

# SINTAXE EXEMPLO
SELECT customer_id, COUNT(order_id) as num_orders
FROM orders
GROUP BY customer_id
HAVING num_orders > 2;


*/