-- SQLite

-- TASK #14
SELECT NAME, LASTNAME, EMAIL FROM CUSTOMERS WHERE STATE = 'SP';

-- TASK #15
SELECT * FROM CARS WHERE STATUS = 'Liberado';

-- TASK #16
SELECT * FROM CARS WHERE YEAR = 2016;

-- TASK #17
SELECT E.NAME AS 'Nome',
       E.PHONE_NUMBER AS 'Número de telefone',
       E.CONTRACT_DATE AS 'Data de contrato',
       P.DESCRIPTION AS 'Cargo' FROM EMPLOYEES AS E

    INNER JOIN POSITIONS AS P ON (E.POSITION_ID = P.ID);

-- TASK #18
SELECT E.ID AS 'Código',
       E.NAME AS 'Nome',
       E.PHONE_NUMBER AS 'Número de telefone',
       E.CONTRACT_DATE AS 'Data de Contrato',
       COUNT(E.ID) AS QTD_LOCACOES FROM EMPLOYEES AS E

    INNER JOIN LOCATIONS AS L ON (L.EMPLOYEE_ID = E.ID)

    GROUP BY E.ID
    HAVING QTD_LOCACOES >= 2;

-- TASK #19
SELECT C.ID AS 'Código',
       C.NAME AS 'Nome',
       C.LASTNAME AS 'Último nome',
       COUNT(C.ID) AS QTD_LOCACOES,
       C.PHONE AS 'Telefone',
       C.EMAIL AS 'Email',
       C.ADDRESS AS 'Endereço',
       C.CITY AS 'Cidade',
       C.STATE AS 'Estado',
       C.BIRTH_DATE AS 'Data de Nascimento' FROM CUSTOMERS AS C 

    INNER JOIN LOCATIONS AS L ON (L.CUSTOMER_ID = C.ID)

    GROUP BY (C.ID)
    HAVING QTD_LOCACOES >= 2;
