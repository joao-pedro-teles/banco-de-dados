 CREATE TABLE hospede (
	nome VARCHAR(25) NOT NULL,
	genero VARCHAR(1),
	biotipo VARCHAR(1),
	altura NUMERIC(5,2),
	PRIMARY KEY(nome)
	)
	 
DROP TABLE hospede;
	 
create table quarto (
	nome VARCHAR (25) NOT NULL,
	quarto INT NOT NULL,
	chegada DATE NOT NULL,
	saída DATE NOT NULL,
	desconto NUMERIC (5,2),
	PRIMARY KEY (nome, quarto)
	)

DROP TABLE quarto;
TRUNCATE TABLE hospede;
SELECT * FROM hospede;

INSERT INTO hospede (nome, genero, biotipo, altura)
VALUES 
('migueL', 'M', 'M', 1.67),
('josiel', 'M', 'M', 1.72),
('raquel', 'F', 'G', 1.65),
('luciana', 'F', 'G', 1.80),
('joana', 'F', 'M', 1.65),
('emanuel', 'M', 'M', 1.78);
