--Pergunta numero 1: o time de CRM da empresa precisa saber quais os clientes não fizeram compra alguma(inativos), para enviar email a eles. Quais são os clientes que não fizeram compras?

-- Esta consulta retorna os usuários que não têm compras na tabela Vendas.
SELECT id_cliente, nome, sobrenome, email 
FROM testevendas.dbo.Usuarios 
WHERE id_cliente NOT IN (SELECT cliente_id FROM testevendas.dbo.Vendas);


--Pergunta numero 2: o time de Marketing e comercial precisa de dados para analise e criação de campanhas dos produtos sobre os lugares onde os produtos venderam melhor. Quais os endereços que mais se repetem ?
SELECT U.endereço, COUNT(*) AS quantidade
FROM [testevendas].dbo.Usuarios U
INNER JOIN [testevendas].dbo.Vendas V 
	ON U.id_cliente = V.cliente_id
GROUP BY U.endereço
HAVING COUNT(*) > 2
ORDER BY quantidade DESC;