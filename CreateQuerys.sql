-- 1 - Retrieve the name and year of the movies
SELECT Nome AS MovieName, Ano AS Year
FROM Filmes;

-- 2 - Retrieve the name and year of the movies, ordered by year in ascending order
SELECT Nome AS MovieName, Ano AS Year
FROM Filmes
ORDER BY Ano ASC;

-- 3 - Retrieve the movie "Back to the Future", bringing the name, year, and duration
SELECT Nome AS MovieName, Ano AS Year, Duracao AS Duration
FROM Filmes
WHERE Nome = 'Back to the Future';

-- 4 - Retrieve the movies released in 1997
SELECT Nome AS MovieName, Ano AS Year
FROM Filmes
WHERE Ano = 1997;

-- 5 - Retrieve the movies released AFTER the year 2000
SELECT Nome AS MovieName, Ano AS Year
FROM Filmes
WHERE Ano > 2000;

-- 6 - Retrieve the movies with duration greater than 100 and less than 150, ordering by duration in ascending order
SELECT Nome AS MovieName, Duracao AS Duration
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

-- 7 - Retrieve the count of movies released each year, grouped by year, ordering by year in descending order
SELECT Ano AS Year, COUNT(*) AS MovieCount
FROM Filmes
GROUP BY Ano
ORDER BY Ano DESC;

-- 8 - Retrieve male actors, returning their FirstName, LastName
SELECT PrimeiroNome AS FirstName, UltimoNome AS LastName
FROM Atores
WHERE Genero = 'M';

-- 9 - Retrieve female actors, returning their FirstName, LastName, and ordering by FirstName
SELECT PrimeiroNome AS FirstName, UltimoNome AS LastName
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

-- 10 - Retrieve the name of the movie and its genre
SELECT f.Nome AS MovieName, g.Nome AS Genre
FROM Filmes AS f
JOIN FilmesGenero AS fg ON f.IdFilme = fg.IdFilme
JOIN Generos AS g ON fg.IdGenero = g.IdGenero;

-- 11 - Retrieve the name of the movie and the genre of type "Mystery"
SELECT f.Nome AS MovieName, g.Nome AS Genre
FROM Filmes AS f
JOIN FilmesGenero AS fg ON f.IdFilme = fg.IdFilme
JOIN Generos AS g ON fg.IdGenero = g.IdGenero
WHERE g.Nome = 'Mystery';

-- 12 - Retrieve the name of the movie and the actors, bringing their FirstName, LastName, and Role
SELECT f.Nome AS MovieName, a.PrimeiroNome AS FirstName, a.UltimoNome AS LastName, ef.Papel AS Role
FROM Filmes AS f
JOIN ElencoFilme AS ef ON f.IdFilme = ef.IdFilme
JOIN Atores AS a ON ef.IdAtor = a.IdAtor;
