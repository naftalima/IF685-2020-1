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


-- Retorna as compras do produto que é mais caro
-- Subconsulta escalar
SELECT * 
	FROM CIN.COMPRAS c 
	WHERE (c.PRECO/c.QTD_PRODUTOS) = (
		SELECT max(c.PRECO/c.QTD_PRODUTOS)
			FROM CIN.COMPRAS c
	)

-- Retorna os produtos que valem mais de 100 e a média entre eles;
-- Subconsulta do tipo escalar
SELECT ID , NOME, PRECO, (
	SELECT AVG(PRECO) 
		FROM CIN.PRODUTO prod 
		WHERE PRECO > 100
	) AS avg100up 
	FROM CIN.PRODUTO prod 
	WHERE PRECO > 100 
	GROUP BY ID, NOME, PRECO;
	
-- Retorna o cadastro de Harry Poter
-- Subconsulta do tipo linha
SELECT * FROM USUARIOS u WHERE u.NOME LIKE 'Harry Potter';

-- Retorna Tabela com CPF, nome do produto, quantidade comprada e preço somado na compra
-- Subconsulta do tipo tabela
SELECT c.CPF_COMPRADOR, (
	SELECT nome 
		FROM CIN.PRODUTO p 
		WHERE c.ID_PRODUTO = p.ID
	) AS nome, c.QTD_PRODUTOS, c.PRECO 
	FROM CIN.COMPRAS c;


-- Retorna usuário que são só compradores ou só vendedores
-- Outer join
SELECT *
	FROM
		(SELECT c.CPF_USUARIO AS comprador, v.CPF_USUARIO AS vendedor  FROM (COMPRADOR c 
		FULL JOIN VENDEDOR v ON v.CPF_USUARIO = c.CPF_USUARIO)) d
		WHERE d.COMPRADOR IS NULL or d.vendedor IS NULL;

-- Retorna produtos que não foram comprados
-- Left join
SELECT p.NOME 
	FROM PRODUTO p
		LEFT JOIN COMPRAS c ON c.ID_PRODUTO = p.ID 
	WHERE c.ID_PRODUTO IS NULL
	
-- Retorna todos os produtos desejados 
-- Semi junção
SELECT *
	FROM PRODUTO p
	WHERE EXISTS (
		SELECT 1
			FROM LISTA_CONTEM_PRODUTOS lcp 
			WHERE p.ID = lcp.ID_PRODUTO
		)


		
-- consulta que retira todos os dados sensiveis do usuario

-- consulta que retorna todas as compras do usuario

-- TODO: