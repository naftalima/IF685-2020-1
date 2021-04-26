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

-- -Subconsulta do tipo escalar

-- selecionar quantidade de compras de cada usuario





-- consulta que retira todos os dados sensiveis do usuario

