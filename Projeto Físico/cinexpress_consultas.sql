-- o WHERE especifica o SELECT e o HAVING especifica o WHERE (*)

-- Group by/Having
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

-- Inner Join
-- Selecionar os vendedores q tem mais de 3 produto
SELECT u.NOME , COUNT(p.ID)
FROM (
	VENDEDOR v
	INNER JOIN LOJA l ON l.CPF_VENDEDOR = v.CPF_USUARIO
	INNER JOIN PRODUTO p ON p.ID_LOJA = l.ID 
	INNER JOIN USUARIOS u ON u.CPF = v.CPF_USUARIO 
)
GROUP BY u.NOME 
HAVING COUNT(p.ID) > 3;


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

-- Subconsulta do tipo tabela
-- Retorna Tabela com CPF, nome do produto, quantidade comprada e preço somado na compra
SELECT c.CPF_COMPRADOR, (
	SELECT nome 
		FROM CIN.PRODUTO p 
		WHERE c.ID_PRODUTO = p.ID
	) AS nome, c.QTD_PRODUTOS, c.PRECO 
	FROM CIN.COMPRAS c;

-- pessoas que tiveram compras avaliadas pelo mesmo tecnico da compra X
-- Subconsulta do tipo linha
SELECT * FROM COMPRAS c 
WHERE c.ID_TECNICO =
(
	SELECT c2.ID_TECNICO FROM COMPRAS c2
	WHERE c2.CPF_COMPRADOR = 32374108376 AND c2.ID_PRODUTO =5
	AND c2.HORARIO = TO_TIMESTAMP('1983-06-12 18:13:12', 'yyyy-mm-dd HH24:MI:SS')
);

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

-- Retorna os ids dos produtos que foram vendidos ou estao na LISTA_DE_DESESJOS
-- UNION
SELECT c.ID_PRODUTO 
	FROM COMPRAS c 
UNION
SELECT lcp.ID_PRODUTO
	FROM LISTA_CONTEM_PRODUTOS lcp

-- Popularidade do produto (compras ou lista de desejos)
-- UNION ALL
SELECT  COUNT(ID_PRODUTO) Ocorrência, ID_PRODUTO Produto FROM (
	SELECT c.ID_PRODUTO 
		FROM COMPRAS c 
	UNION ALL 
	SELECT lcp.ID_PRODUTO 
		FROM LISTA_CONTEM_PRODUTOS lcp	
) 
GROUP BY ID_PRODUTO
ORDER BY COUNT(ID_PRODUTO) DESC;

-- contar quantas vezes o produto foi comprado e desejado

-- INTERSECT
-- Retorna os compradores que possuem lista de desejos
SELECT u.NOME FROM (
	SELECT CPF_COMPRADOR FROM COMPRAS c 
	INTERSECT SELECT ldd.CPF_COMPRADOR FROM LISTA_DE_DESEJOS ldd
)
JOIN USUARIOS u ON u.CPF = CPF_COMPRADOR;

-- MINUS
-- Nos dá os técnicos que não participaram de nenhuma compra (tão com preguiça)
SELECT t.ID FROM TECNICO t  
MINUS
SELECT c.ID_TECNICO FROM COMPRAS;
