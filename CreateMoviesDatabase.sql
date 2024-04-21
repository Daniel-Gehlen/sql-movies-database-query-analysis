-- Create Movies database
CREATE DATABASE IF NOT EXISTS Movies;
USE Movies;

-- Create Filmes table
CREATE TABLE IF NOT EXISTS Filmes (
    IdFilme INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Ano INT,
    Duracao INT
);

-- Create Atores table
CREATE TABLE IF NOT EXISTS Atores (
    IdAtor INT AUTO_INCREMENT PRIMARY KEY,
    PrimeiroNome VARCHAR(50),
    UltimoNome VARCHAR(50),
    Genero ENUM('M', 'F')
);

-- Create Generos table
CREATE TABLE IF NOT EXISTS Generos (
    IdGenero INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50)
);

-- Create ElencoFilme table
CREATE TABLE IF NOT EXISTS ElencoFilme (
    IdFilme INT,
    IdAtor INT,
    Papel VARCHAR(50),
    PRIMARY KEY (IdFilme, IdAtor),
    FOREIGN KEY (IdFilme) REFERENCES Filmes(IdFilme),
    FOREIGN KEY (IdAtor) REFERENCES Atores(IdAtor)
);

-- Create FilmesGenero table
CREATE TABLE IF NOT EXISTS FilmesGenero (
    IdFilme INT,
    IdGenero INT,
    PRIMARY KEY (IdFilme, IdGenero),
    FOREIGN KEY (IdFilme) REFERENCES Filmes(IdFilme),
    FOREIGN KEY (IdGenero) REFERENCES Generos(IdGenero)
);
