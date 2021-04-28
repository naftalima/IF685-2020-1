-- PRODUTO
DROP SEQUENCE produto_id_seq;
CREATE SEQUENCE produto_id_seq START WITH 1;

CREATE OR REPLACE TRIGGER incrementa_id_produto
BEFORE INSERT ON PRODUTO
FOR EACH ROW
BEGIN
    SELECT produto_id_seq.NEXTVAL
    INTO :NEW.ID
    FROM DUAL;
END;

-- TECNICO
DROP SEQUENCE tecnico_id_seq;
CREATE SEQUENCE tecnico_id_seq START WITH 1;

CREATE OR REPLACE TRIGGER incrementa_id_tecnico
BEFORE INSERT ON TECNICO
FOR EACH ROW
BEGIN
    SELECT tecnico_id_seq.NEXTVAL
    INTO :NEW.ID
    FROM DUAL;
END;

-- LOJA
DROP SEQUENCE loja_id_seq;
CREATE SEQUENCE loja_id_seq START WITH 1;

CREATE OR REPLACE TRIGGER incrementa_id_loja
BEFORE INSERT ON LOJA
FOR EACH ROW
BEGIN
    SELECT loja_id_seq.NEXTVAL
    INTO :NEW.ID
    FROM DUAL;
END;

-- LISTA_DE_DESEJOS
DROP SEQUENCE lista_desejo_seq;
CREATE SEQUENCE lista_desejo_seq START WITH 1;

CREATE OR REPLACE TRIGGER incrementa_desejo_seq
BEFORE INSERT ON LISTA_DE_DESEJOS
FOR EACH ROW
BEGIN
    SELECT lista_desejo_seq.NEXTVAL
    INTO :NEW.ORDEM
    FROM DUAL;
END;

--------------END-SEQUENCES---------------
------------------------------------------

-- TODO:
-- fazer trigger para incrementar a quantidade de itens da lista_de_desejos toda vez que se adicionar uma linha à 
-- lista_contem_produtos

-- TODO
-- fazer uma função de compra (transação) pra povoar correntamente os campos de compra 
-- caso nao tenha como realizar a cmopra, dar um print de erro
-- precisa de commit

CREATE OF REPLACE FUNCTION insert_compra (uCPF, pID) IS
DECLARE 
BEGIN
END

-- TODO // pode ser trigger ou função pra fazer a inserção -- mais clean como trigger
-- quando uma pessoa entra no banco de dados com a indicação de alguém
-- atualiza a quantidade de indicações do que indicou
CREATE OR REPLACE TRIGGER INCREMENTA 
BEFORE INSERT ON USUARIOS
FOR EACH ROW
DECLARE ucpf NUMBER := 0;
BEGIN 
	IF (:NEW.cpf_padrinho IS NOT NULL) THEN 
		UPDATE USUARIOS u
		SET u.QTD_INDICACOES = u.QTD_INDICACOES + 1
		WHERE u.CPF = :NEW.cpf_padrinho;
		SELECT CPF INTO ucpf FROM USUARIOS u2 WHERE u2.CPF = :NEW.cpf_padrinho;
	END IF;
	dbms_output.put_line('CPF padrinho: '||ucpf);
END;
/


-- TODO 
-- uma função/procedimento com query ?
-- query CPF e retorna lista de compras


-- TODO
-- Agrupar compras (?)







---------- TESTANDO --------------
-- \/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

-- Procedimento print formatada
CREATE OR REPLACE PROCEDURE 
print_formatado(cpf NUMBER, id NUMBER, ts TIMESTAMP) IS
BEGIN 
	dbms_output.put_line(cpf);
	dbms_output.put_line('	'||id||' --- '||ts);
END;
/

CREATE OR REPLACE PROCEDURE test_proc IS 
BEGIN 
	dbms_output.put_line('oi');
END;
/

-- fazer uma função de compra (transação) pra povoar correntamente os campos de compra 
-- caso nao tenha como realizar a cmopra, dar um print de erro
-- precisa de commit

--CREATE OF REPLACE FUNCTION insert_compra (uCPF, pID) IS
DECLARE 
	CPF NUMBER := 1234;
	PID NUMBER := 2;
	t TIMESTAMP;
BEGIN
	-- get_time_stamp
	t := CURRENT_TIMESTAMP;
	print_formatado(CPF, PID, t);
	test_proc();
--	COMMIT; 
END;



