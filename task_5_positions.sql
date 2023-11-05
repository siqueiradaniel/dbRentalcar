-- SQLite
CREATE TABLE IF NOT EXISTS POSITIONS(
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    DESCRIPTION VARCHAR(120) NOT NULL 
);

INSERT INTO POSITIONS (DESCRIPTION)
    VALUES  ('Gerente de vendas'),
            ('Gerente de compras'),
            ('Vendedor'),
            ('Mecânico'),
            ('Assistente Administrativo');