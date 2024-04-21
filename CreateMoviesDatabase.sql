-- Create Movies database
CREATE DATABASE IF NOT EXISTS Movies;
USE Movies;

-- Create Films table
CREATE TABLE IF NOT EXISTS Films (
    FilmId INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Year INT,
    Duration INT
);

-- Create Actors table
CREATE TABLE IF NOT EXISTS Actors (
    ActorId INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Gender ENUM('M', 'F')
);

-- Create Genres table
CREATE TABLE IF NOT EXISTS Genres (
    GenreId INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50)
);

-- Create CastFilm table
CREATE TABLE IF NOT EXISTS CastFilm (
    FilmId INT,
    ActorId INT,
    Role VARCHAR(50),
    PRIMARY KEY (FilmId, ActorId),
    FOREIGN KEY (FilmId) REFERENCES Films(FilmId),
    FOREIGN KEY (ActorId) REFERENCES Actors(ActorId)
);

-- Create FilmsGenre table
CREATE TABLE IF NOT EXISTS FilmsGenre (
    FilmId INT,
    GenreId INT,
    PRIMARY KEY (FilmId, GenreId),
    FOREIGN KEY (FilmId) REFERENCES Films(FilmId),
    FOREIGN KEY (GenreId) REFERENCES Genres(GenreId)
);
