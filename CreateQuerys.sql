-- 1 - Retrieve the name and year of the movies
SELECT Name AS MovieName, Year
FROM Films;

-- 2 - Retrieve the name and year of the movies, ordered by year in ascending order
SELECT Name AS MovieName, Year
FROM Films
ORDER BY Year ASC;

-- 3 - Retrieve the movie "Back to the Future", bringing the name, year, and duration
SELECT Name AS MovieName, Year, Duration
FROM Films
WHERE Name = 'Back to the Future';

-- 4 - Retrieve the movies released in 1997
SELECT Name AS MovieName, Year
FROM Films
WHERE Year = 1997;

-- 5 - Retrieve the movies released AFTER the year 2000
SELECT Name AS MovieName, Year
FROM Films
WHERE Year > 2000;

-- 6 - Retrieve the movies with duration greater than 100 and less than 150, ordering by duration in ascending order
SELECT Name AS MovieName, Duration
FROM Films
WHERE Duration > 100 AND Duration < 150
ORDER BY Duration ASC;

-- 7 - Retrieve the count of movies released each year, grouped by year, ordering by year in descending order
SELECT Year, COUNT(*) AS MovieCount
FROM Films
GROUP BY Year
ORDER BY Year DESC;

-- 8 - Retrieve male actors, returning their FirstName, LastName
SELECT FirstName, LastName
FROM Actors
WHERE Gender = 'M';

-- 9 - Retrieve female actors, returning their FirstName, LastName, and ordering by FirstName
SELECT FirstName, LastName
FROM Actors
WHERE Gender = 'F'
ORDER BY FirstName;

-- 10 - Retrieve the name of the movie and its genre
SELECT f.Name AS MovieName, g.Name AS Genre
FROM Films AS f
JOIN FilmsGenre AS fg ON f.FilmId = fg.FilmId
JOIN Genres AS g ON fg.GenreId = g.GenreId;

-- 11 - Retrieve the name of the movie and the genre of type "Mystery"
SELECT f.Name AS MovieName, g.Name AS Genre
FROM Films AS f
JOIN FilmsGenre AS fg ON f.FilmId = fg.FilmId
JOIN Genres AS g ON fg.GenreId = g.GenreId
WHERE g.Name = 'Mystery';

-- 12 - Retrieve the name of the movie and the actors, bringing their FirstName, LastName, and Role
SELECT f.Name AS MovieName, a.FirstName, a.LastName, ef.Role
FROM Films AS f
JOIN CastFilm AS ef ON f.FilmId = ef.FilmId
JOIN Actors AS a ON ef.ActorId = a.ActorId;
