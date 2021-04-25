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



-- CREATE [OR REPLACE] FUNCTION function_name  
--    [ (parameter [,parameter]) ]  
-- RETURN return_datatype  
-- IS | AS  
--  [declaration_section]  
-- BEGIN  
--    executable_section  
-- [EXCEPTION  
--    exception_section]  
-- END [function_name];  


-- CREATE OR REPLACE FUNCTION get_total_sales(
--     in_year PLS_INTEGER
-- ) 
-- RETURN NUMBER
-- IS
--     l_total_sales NUMBER := 0;
-- BEGIN
--     -- get total sales
--     SELECT SUM(unit_price * quantity)
--     INTO l_total_sales
--     FROM order_items
--     INNER JOIN orders USING (order_id)
--     WHERE status = 'Shipped'
--     GROUP BY EXTRACT(YEAR FROM order_date)
--     HAVING EXTRACT(YEAR FROM order_date) = in_year;
    
--     -- return the total sales
--     RETURN l_total_sales;
-- END;

CREATE OR REPLACE FUNCTION gasto_comprador(CPF IN NUMBER)
-- parametros?? vai receber a key (CPF)
RETURN NUMBER
IS total NUMBER(12) := 0;
BEGIN
    SELECT SUM(PRECO) FROM COMPRAS WHERE CPF_COMPRADOR=CPF;
    -- soma tudo aqui
    -- retorna o valor total

CREATE OR REPLACE TRIGGER atauliaza_qtd_produto
BEFORE INSERT ON COMPRAS
FOR EACH ROW
    UPDATE PRODUTO
    SET QUANTIDADE = QUANTIDADE - 1
    WHERE ID = NEW.ID_PRODUTO && QUANTIDADE > 0

