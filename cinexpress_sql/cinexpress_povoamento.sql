
INSERT INTO USUARIOS (CPF, NOME, SEXO, DATA_NASCIMENTO, QTD_INDICACOES, CPF_PADRINHO) VALUES(32374108376, 'Harry Potter', 'M', TIMESTAMP '1983-06-12 02:24:46.000000', 0, NULL);
INSERT INTO USUARIOS (CPF, NOME, SEXO, DATA_NASCIMENTO, QTD_INDICACOES, CPF_PADRINHO) VALUES(31165255448, 'Draco Malfoy', 'M', TIMESTAMP '1982-10-03 01:48:13.000000', 0, NULL);
INSERT INTO USUARIOS (CPF, NOME, SEXO, DATA_NASCIMENTO, QTD_INDICACOES, CPF_PADRINHO) VALUES(28439660510, 'Hermione Granger', 'F', TIMESTAMP '1991-11-16 09:57:29.000000', 0, NULL);
INSERT INTO USUARIOS (CPF, NOME, SEXO, DATA_NASCIMENTO, QTD_INDICACOES, CPF_PADRINHO) VALUES(81885242042, 'Luna Lovegood', 'F', TIMESTAMP '1990-12-06 11:37:31.000000', 0, NULL);
INSERT INTO USUARIOS (CPF, NOME, SEXO, DATA_NASCIMENTO, QTD_INDICACOES, CPF_PADRINHO) VALUES(55161574550, 'Minerva McGonagall', 'F', TIMESTAMP '1995-08-20 11:17:58.000000', 0, NULL);
INSERT INTO USUARIOS (CPF, NOME, SEXO, DATA_NASCIMENTO, QTD_INDICACOES, CPF_PADRINHO) VALUES(32869004001, 'Dobby', 'M', TIMESTAMP '1992-02-20 11:17:58.000000', 0, NULL);
INSERT INTO USUARIOS (CPF, NOME, SEXO, DATA_NASCIMENTO, QTD_INDICACOES, CPF_PADRINHO) VALUES(01772129003, 'Neville Longbotton', 'M', TIMESTAMP '1989-02-20 14:21:12.000000', 0, NULL);
INSERT INTO USUARIOS (CPF, NOME, SEXO, DATA_NASCIMENTO, QTD_INDICACOES, CPF_PADRINHO) VALUES(79024732000, 'Sorting Hat', 'M', TIMESTAMP '1909-12-12 14:21:12.000000', 0, NULL);
INSERT INTO USUARIOS (CPF, NOME, SEXO, DATA_NASCIMENTO, QTD_INDICACOES, CPF_PADRINHO) VALUES(58944107033, 'Cho Chang', 'F', TIMESTAMP '1999-09-09 14:21:12.000000', 0, NULL);
INSERT INTO USUARIOS (CPF, NOME, SEXO, DATA_NASCIMENTO, QTD_INDICACOES, CPF_PADRINHO) VALUES(26920231026, 'Hedwig', 'F', TIMESTAMP '2002-02-02 14:21:12.000000', 0, NULL);

INSERT INTO ENDERECO (CPF, RUA, BAIRRO, CEP) VALUES(32869004001,'Rua Luiz Moraes de Souza', 'Cabuçu', 24851-516);
INSERT INTO ENDERECO (CPF, RUA, BAIRRO, CEP) VALUES(01772129003,'Avenida do Açai', 'Infraero', 68908-795);
INSERT INTO ENDERECO (CPF, RUA, BAIRRO, CEP) VALUES(79024732000,'Travessa São Gabriel', 'Aviário', 69900-833);
INSERT INTO ENDERECO (CPF, RUA, BAIRRO, CEP) VALUES(58944107033,'Rua General Ubaldo Figueira', 'Nova Brasília', 68927-239);
INSERT INTO ENDERECO (CPF, RUA, BAIRRO, CEP) VALUES(26920231026,'Rua Trapiá', 'Vasco da Gama', 52280-502);
INSERT INTO ENDERECO (CPF, RUA, BAIRRO, CEP) VALUES(32374108376,'Rua Marechal Hermes', 'Brasília Teimosa', 51010-240);
INSERT INTO ENDERECO (CPF, RUA, BAIRRO, CEP) VALUES(31165255448,'Rua Califórnia', 'Brejo de Beberibe', 52191-075);
INSERT INTO ENDERECO (CPF, RUA, BAIRRO, CEP) VALUES(28439660510,'Rua Jornalista Cleofas de Oliveira', 'Imbiribeira', 51200-140);
INSERT INTO ENDERECO (CPF, RUA, BAIRRO, CEP) VALUES(81885242042,'Rua Florentino Olímpio dos Santos', 'Afogados', 50830-470);
INSERT INTO ENDERECO (CPF, RUA, BAIRRO, CEP) VALUES(55161574550,'Rua Trapiá', 'Vasco da Gama', 52280-502);

INSERT INTO EMAIL (CPF, EMAIL) VALUES(32374108376, 'harry_potter@gmail.com');
INSERT INTO EMAIL (CPF, EMAIL) VALUES(31165255448, 'draco_malfoy@gmail.com');
INSERT INTO EMAIL (CPF, EMAIL) VALUES(28439660510, 'hermione_granger@gmail.com');
INSERT INTO EMAIL (CPF, EMAIL) VALUES(81885242042, 'luna_lovegood@gmail.com');
INSERT INTO EMAIL (CPF, EMAIL) VALUES(55161574550, 'minerva_mcgonagall@gmail.com');

INSERT INTO COMPRADOR (CPF_USUARIO, INTERESSES, QTD_COMPRAS) VALUES(31165255448, 'Quidditch', 1);
INSERT INTO COMPRADOR (CPF_USUARIO, INTERESSES, QTD_COMPRAS) VALUES(32374108376, 'Quidditch', 1);
INSERT INTO COMPRADOR (CPF_USUARIO, INTERESSES, QTD_COMPRAS) VALUES(32869004001, 'Bombs', 1);
INSERT INTO COMPRADOR (CPF_USUARIO, INTERESSES, QTD_COMPRAS) VALUES(01772129003, 'Blood Magic', 1);
INSERT INTO COMPRADOR (CPF_USUARIO, INTERESSES, QTD_COMPRAS) VALUES(79024732000, 'Voodoo', 1);
INSERT INTO COMPRADOR (CPF_USUARIO, INTERESSES, QTD_COMPRAS) VALUES(58944107033, 'Botanic', 1);
INSERT INTO COMPRADOR (CPF_USUARIO, INTERESSES, QTD_COMPRAS) VALUES(26920231026, 'Alchemy', 1);

INSERT INTO VENDEDOR (CPF_USUARIO, DATA_ENTRADA, QTD_VENDAS) VALUES(81885242042, TIMESTAMP '2021-05-21 02:24:46.000000', 0);
INSERT INTO VENDEDOR (CPF_USUARIO, DATA_ENTRADA, QTD_VENDAS) VALUES(32374108376, TIMESTAMP '2021-04-21 02:24:46.000000', 1);
INSERT INTO VENDEDOR (CPF_USUARIO, DATA_ENTRADA, QTD_VENDAS) VALUES(31165255448, TIMESTAMP '2021-04-21 02:24:46.000000', 1);

INSERT INTO LOJA (CPF_VENDEDOR, NOME) VALUES(32374108376, 'Quality Quidditch Supplies');
INSERT INTO LOJA (CPF_VENDEDOR, NOME) VALUES(81885242042, 'Weasleys Wizard Wheezes');
INSERT INTO LOJA (CPF_VENDEDOR, NOME) VALUES(31165255448, 'Dark Arts establishments');

INSERT INTO TECNICO (NOME, CPF, IDADE, ESPECIALIDADE) VALUES('Rubeus Hagrid', 28831632515, 35, 'Magical Creatures');
INSERT INTO TECNICO (NOME, CPF, IDADE, ESPECIALIDADE) VALUES('Severus Snape', 69554143133, 30, 'Potions');
INSERT INTO TECNICO (NOME, CPF, IDADE, ESPECIALIDADE) VALUES('Dobi', 08182259921, 19, 'Transmutation');

INSERT INTO PRODUTO (QUANTIDADE, PRECO, NOME, ID_LOJA) VALUES(700, 2.99, 'Dungbomb', 2);
INSERT INTO PRODUTO (QUANTIDADE, PRECO, NOME, ID_LOJA) VALUES(100, 49.9, 'Jinx-Off', 2);
INSERT INTO PRODUTO (QUANTIDADE, PRECO, NOME, ID_LOJA) VALUES(500, 20.5, 'Demon Dung', 2);
INSERT INTO PRODUTO (QUANTIDADE, PRECO, NOME, ID_LOJA) VALUES(10, 290.9, 'Nimbus 2001', 1);
INSERT INTO PRODUTO (QUANTIDADE, PRECO, NOME, ID_LOJA) VALUES(5, 500.9, 'Firebolt', 1);
INSERT INTO PRODUTO (QUANTIDADE, PRECO, NOME, ID_LOJA) VALUES(100, 10.4, 'Quaffles', 1);
INSERT INTO PRODUTO (QUANTIDADE, PRECO, NOME, ID_LOJA) VALUES(50, 100.0, 'Quidditch Starter Kits', 1);
INSERT INTO PRODUTO (QUANTIDADE, PRECO, NOME, ID_LOJA) VALUES(1, 300.58, 'Hand of Glory', 3);
INSERT INTO PRODUTO (QUANTIDADE, PRECO, NOME, ID_LOJA) VALUES(1, 120.6, 'Opal Necklace', 3);
INSERT INTO PRODUTO (QUANTIDADE, PRECO, NOME, ID_LOJA) VALUES(7, 1000.2, 'Horcrux', 3);
INSERT INTO PRODUTO (QUANTIDADE, PRECO, NOME, ID_LOJA) VALUES(200, 5.7, 'Cursed books', 3);

INSERT INTO LISTA_DE_DESEJOS (CPF_COMPRADOR, NOME, QTD_ITENS) VALUES(31165255448, 'Revenge', 2);
INSERT INTO LISTA_DE_DESEJOS (CPF_COMPRADOR, NOME, QTD_ITENS) VALUES(31165255448, 'Study', 10);
INSERT INTO LISTA_DE_DESEJOS (CPF_COMPRADOR, NOME, QTD_ITENS) VALUES(32374108376, 'Quidditch', 2);
INSERT INTO LISTA_DE_DESEJOS (CPF_COMPRADOR, NOME, QTD_ITENS) VALUES(32374108376, 'Fun', 4);

INSERT INTO LISTA_CONTEM_PRODUTOS (CPF_COMPRADOR, ORDEM, ID_PRODUTO) VALUES(31165255448, 1, 11);
INSERT INTO LISTA_CONTEM_PRODUTOS (CPF_COMPRADOR, ORDEM, ID_PRODUTO) VALUES(31165255448, 2, 6);
INSERT INTO LISTA_CONTEM_PRODUTOS (CPF_COMPRADOR, ORDEM, ID_PRODUTO) VALUES(32374108376, 3, 7);
INSERT INTO LISTA_CONTEM_PRODUTOS (CPF_COMPRADOR, ORDEM, ID_PRODUTO) VALUES(32374108376, 4, 10);

INSERT INTO COMPRAS (CPF_COMPRADOR, ID_PRODUTO, HORARIO, ID_TECNICO, QTD_PRODUTOS, QTD_PARCELAS, VALOR_PARCELAS, PRECO, JUROS) 
VALUES(31165255448, 9, TIMESTAMP '1983-06-12 18:13:12.000000', 2, 1, 1, 120.6, 120.6, 0);
INSERT INTO COMPRAS (CPF_COMPRADOR, ID_PRODUTO, HORARIO, ID_TECNICO, QTD_PRODUTOS, QTD_PARCELAS, VALOR_PARCELAS, PRECO, JUROS) 
VALUES(32374108376, 5, TIMESTAMP '1983-06-12 18:13:12.000000', 2, 1, 1, 500.9, 500.9, 0);
INSERT INTO COMPRAS (CPF_COMPRADOR, ID_PRODUTO, HORARIO, ID_TECNICO, QTD_PRODUTOS, QTD_PARCELAS, VALOR_PARCELAS, PRECO, JUROS) 
VALUES(31165255448, 4, TIMESTAMP '1983-08-02 18:15:12.000000', 1, 1, 1, 290.9, 290.9, 0);
INSERT INTO COMPRAS (CPF_COMPRADOR, ID_PRODUTO, HORARIO, ID_TECNICO, QTD_PRODUTOS, QTD_PARCELAS, VALOR_PARCELAS, PRECO, JUROS) 
VALUES(32374108376, 8, TIMESTAMP '1983-08-21 18:16:12.000000', 2, 2, 1, 300.58, 300.58, 0);

