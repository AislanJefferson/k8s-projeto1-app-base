CREATE DATABASE IF NOT EXISTS meubanco;
USE meubanco;
CREATE TABLE IF NOT EXISTS mensagens (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    comentario VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO mensagens (nome, email, comentario) VALUES ('João', 'joao@email.com', 'Primeiro cadastrado');
INSERT INTO mensagens (nome, email, comentario) VALUES ('Maria', 'maria@email.com', 'Esposa do João');