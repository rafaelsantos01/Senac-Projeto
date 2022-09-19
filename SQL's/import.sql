CREATE TABLE pessoa(
id INT IDENTITY(1,1),
nome VARCHAR(80),
saldo INT,
email VARCHAR(120),
cpf VARCHAR(14) UNIQUE,
tipo VARCHAR(20),
usuario VARCHAR(60),
senha VARCHAR(60),
PRIMARY KEY(id)
);


CREATE TABLE impressao(
id INT IDENTITY(1,1),
idPessoa INT,
quantidade INT,
data DATE,
impressao bit,
PRIMARY KEY(id),
CONSTRAINT fk_pessoa FOREIGN KEY(idPessoa) REFERENCES pessoa(id)
);


CREATE TABLE compra(
 id INT IDENTITY(1,1),
 pago BIT,
 data DATE,
 idPessoa INT,
 quantidade INT,
 CONSTRAINT fk_compraPessoa FOREIGN KEY(idPessoa) REFERENCES pessoa(id),
)


