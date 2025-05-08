-- =======================
-- LIMPA TABELAS (SE EXISTIREM)
-- =======================
BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE Corrida';
EXCEPTION
  WHEN OTHERS THEN NULL;
END;
/

BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE Taxi';
EXCEPTION
  WHEN OTHERS THEN NULL;
END;
/

BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE Cliente';
EXCEPTION
  WHEN OTHERS THEN NULL;
END;
/

-- =======================
-- CRIA TABELA CLIENTE
-- =======================
CREATE TABLE Cliente (
  CliId VARCHAR(4) NOT NULL,
  Nome VARCHAR(80) NOT NULL,
  CPF VARCHAR(14) NOT NULL,
  PRIMARY KEY(CliId)
);

-- =======================
-- CRIA TABELA TAXI
-- =======================
CREATE TABLE Taxi (
  Placa VARCHAR(7) NOT NULL,
  Marca VARCHAR(30) NOT NULL,
  Modelo VARCHAR(30) NOT NULL,
  AnoFab INTEGER,
  Licenca VARCHAR(9),
  PRIMARY KEY(Placa)
);

-- =======================
-- CRIA TABELA CORRIDA
-- =======================
CREATE TABLE Corrida (
  CliId VARCHAR(4) NOT NULL,
  Placa VARCHAR(7) NOT NULL,
  DataPedido DATE NOT NULL,
  PRIMARY KEY(CliId, Placa, DataPedido),
  FOREIGN KEY(CliId) REFERENCES Cliente(CliId),
  FOREIGN KEY(Placa) REFERENCES Taxi(Placa)
);

-- =======================
-- INSERE CLIENTES
-- =======================
INSERT INTO Cliente VALUES ('1532', 'Asdrúbal', '448.754.253-65');
INSERT INTO Cliente VALUES ('1755', 'Doriana', '567.387.387-44');
INSERT INTO Cliente VALUES ('1780', 'Quincas', '546.373.762-02');
INSERT INTO Cliente VALUES ('1888', 'Melissa', '123.456.789-10');

-- =======================
-- INSERE TAXIS
-- =======================
INSERT INTO Taxi VALUES ('DAE6534', 'Ford', 'Fiesta', 1999, 'MN572345');
INSERT INTO Taxi VALUES ('DKL4598', 'Wolkswagen', 'Gol', 2001, 'AU876543');
INSERT INTO Taxi VALUES ('DKL7878', 'Ford', 'Fiesta', 2001, 'OP102938');
INSERT INTO Taxi VALUES ('JDM8776', 'Wolkswagen', 'Santana', 2002, 'QM365923');
INSERT INTO Taxi VALUES ('JJM3692', 'Chevrolet', 'Corsa', 1999, 'UU335577');

-- =======================
-- INSERE CORRIDAS
-- =======================
INSERT INTO Corrida VALUES ('1755', 'DAE6534', DATE '2003-02-15');
INSERT INTO Corrida VALUES ('1780', 'JDM8776', DATE '2003-02-18');
INSERT INTO Corrida VALUES ('1755', 'DKL7878', DATE '2003-02-16');
INSERT INTO Corrida VALUES ('1780', 'DKL4598', DATE '2003-02-17');
INSERT INTO Corrida VALUES ('1532', 'DKL4598', DATE '2003-02-18');
INSERT INTO Corrida VALUES ('1780', 'DAE6534', DATE '2003-02-16');
INSERT INTO Corrida VALUES ('1755', 'DAE6534', DATE '2003-02-18');
INSERT INTO Corrida VALUES ('1532', 'DKL4598', DATE '2003-02-20');
