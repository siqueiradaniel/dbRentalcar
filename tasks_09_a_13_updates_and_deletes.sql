-- SQLite

-- Estou usando ID na comparação do WHERE por ser o mais comum e o que foi
-- apresentado nas aulas, mas se o banco de dados sofresse alterações 
-- esses comandos não estariam servindo ao seu propósito.

-- TASK #09 
UPDATE CUSTOMERS SET EMAIL = 'carolina@campuscode.com.br' WHERE ID = 9;

-- TASK #10
UPDATE CUSTOMERS SET BIRTH_DATE = '1986-06-19' WHERE ID = 4;

-- TASK #11
UPDATE CARS SET YEAR = 2019 WHERE ID = 4;

-- Task #12
DELETE FROM CARS WHERE ID = 2;

-- TASK #13
ALTER TABLE EMPLOYEES RENAME PHONE TO PHONE_NUMBER;

