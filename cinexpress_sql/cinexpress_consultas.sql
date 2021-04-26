-- -Group by/Having

-- o WHERE especifica o SELECT e o HAVING especifica o WHERE (*)

-- Quero listar o valor total das compras que custam mais de 120 do usuario X somente se o valor total passar de 500
SELECT SUM(PRECO), CPF_COMPRADOR FROM COMPRAS c
WHERE c.PRECO > 120.0
GROUP BY c.CPF_COMPRADOR
HAVING SUM(PRECO) > 500
ORDER BY SUM(PRECO);


-- -Junção interna

-- Seleciona o nome do Usuário e dos produtos que o usuario comprou
SELECT u.NOME AS USUARIO, p.NOME AS PRODUTO FROM COMPRAS c
INNER JOIN USUARIOS u ON c.CPF_COMPRADOR = u.CPF
INNER JOIN PRODUTO p ON c.ID_PRODUTO = p.ID
ORDER BY u.NOME;

-- TODO:
-- -Subconsulta do tipo escalar
    -- selecionar a quantidade COMPRAS e seus NOMES dos itens distintos que estao nas listas de desejo, 
    -- e ordernar pela quantidade 


-- SELECT column-names
-- FROM table-name1
-- WHERE value IN (SELECT column-name
--                 FROM table-name2 
--                 WHERE condition)

-- SELECT column1 = (SELECT column-name FROM table-name WHERE condition),
--        column-names
-- FROM table-name
-- WEHRE condition


-- selecionar os vendedores q tem mais de 3 produto
SELECT u.NOME , COUNT(p.ID)
FROM (
	VENDEDOR v
	INNER JOIN LOJA l ON l.CPF_VENDEDOR = v.CPF_USUARIO
	INNER JOIN PRODUTO p ON p.ID_LOJA = l.ID 
	INNER JOIN USUARIOS u ON u.CPF = v.CPF_USUARIO 
)
GROUP BY u.NOME 
HAVING COUNT(p.ID) > 1;

-- consulta que retira todos os dados sensiveis do usuario

-- consulta que retorna todas as compras do usuario

-- TODO: