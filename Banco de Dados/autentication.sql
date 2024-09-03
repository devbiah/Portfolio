CREATE TABLE usuario (
    id_user SERIAL PRIMARY KEY,
    nome_completo VARCHAR(100) NOT NULL,
    login VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    cpf VARCHAR(11) NOT NULL UNIQUE
);

CREATE TABLE senha (
    id_senha SERIAL PRIMARY KEY,
    id_user INT REFERENCES usuario(id_user),
    senha VARCHAR(100) NOT NULL
);
