-- SQLite

-- TASK #20
SELECT L.ID AS 'Código',
       C.NAME AS 'Nome do cliente',
       CAR.NAME AS 'Nome do carro',
       E.NAME AS 'Nome do funcinário',
       L.START_DATE AS 'Data de início',
       L.END_DATE AS 'Data de fim',
       L.TOTAL AS 'Total' FROM LOCATIONS AS L

    INNER JOIN CUSTOMERS AS C ON (L.CUSTOMER_ID = C.ID)
    INNER JOIN CARS AS CAR ON (L.CAR_ID = CAR.ID)
    INNER JOIN EMPLOYEES AS E ON (L.EMPLOYEE_ID = E.ID);

-- TASK #21
SELECT COUNT(ID) AS 'Quantidade de locações' FROM LOCATIONS;

-- TASK #22
SELECT ID AS 'Código',
       START_DATE AS 'Data de início',
       END_DATE AS 'Data de fim',
       MAX(TOTAL) AS 'Total' FROM LOCATIONS;

-- TASK #23
SELECT * FROM LOCATIONS 
    WHERE START_DATE BETWEEN '2022-05-20' AND '2022-12-25'