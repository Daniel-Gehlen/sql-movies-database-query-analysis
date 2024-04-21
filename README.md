# Sql Movies Database Query Analysis

# Technical Report: Movies Database Query Analysis

## Introduction:
This report describes the SQL query challenge conducted for a movie website database. The goal was to extract specific information from the database using SQL queries.

## Implementation Details:

### Database Modeling:
Five tables were provided: Movies, Actors, Genres, CastMovies, and MoviesGenres.
The Extended Entity-Relationship (EER) paradigm was used for modeling, allowing many-to-many relationships between Movies and Actors, and Movies and Genres.
Database Creation:
SQL Server was used to create the database named "Movies" as specified in the challenge.
Tables were created using SQL scripts provided in the challenge.
SQL Queries:
Twelve SQL queries were created to extract specific information from the database.
The queries involved selecting data from tables, filtering by specific conditions, sorting, and grouping results.
Markdown Representations:
The database tables and each SQL query were represented in Markdown format to facilitate visualization and understanding.

## Choices and Considerations:

- The EER paradigm was chosen for the database modeling to accurately represent the relationships between entities.
- The queries were designed to meet specific data analysis requirements, such as searching for specific movies, counting movies per year, etc.
- SQL Server was used as the database management system due to its widespread adoption and robust features for SQL queries.

## Conclusion:
The challenge provided an opportunity to practice SQL query skills, from database modeling to extracting relevant information. The queries elaborated demonstrate the ability to work with data efficiently and provide useful insights from a movie database.


## Database

| Table Name   | Fields                                |
|--------------|---------------------------------------|
| Movies       | MovieId, Name, Year, Duration         |
| Actors       | ActorId, FirstName, LastName, Gender  |
| Genres       | GenreId, Name                         |
| MovieCast    | MovieId, ActorId, Role                |
| MovieGenres  | MovieId, GenreId                      |


## Querys

| Table Name   | Fields                           |
|--------------|----------------------------------|
| Movies       | MovieId, Title, Year, Duration   |

**1. Retrieve the name and year of the movies**

```sql
SELECT Name AS MovieName, Ano AS Year
FROM Filmes;
```

| Table Name   | Fields                           |
|--------------|----------------------------------|
| Movies       | MovieId, Title, Year, Duration   |

**2. Retrieve the name and year of the movies, ordered by year in ascending order**

```sql
SELECT Nome AS MovieName, Ano AS Year
FROM Filmes
ORDER BY Ano ASC;
```

| Table Name   | Fields                           |
|--------------|----------------------------------|
| Movies       | MovieId, Title, Year, Duration   |

**3. Retrieve the movie "Back to the Future", bringing the name, year, and duration**

```sql
SELECT Nome AS MovieName, Ano AS Year, Duracao AS Duration
FROM Filmes
WHERE Nome = 'Back to the Future';
```

| Table Name   | Fields                           |
|--------------|----------------------------------|
| Movies       | MovieId, Title, Year, Duration   |

**4. Retrieve the movies released in 1997**

```sql
SELECT Nome AS MovieName, Ano AS Year
FROM Filmes
WHERE Ano = 1997;
```

| Table Name   | Fields                           |
|--------------|----------------------------------|
| Movies       | MovieId, Title, Year, Duration   |

**5. Retrieve the movies released AFTER the year 2000**

```sql
SELECT Nome AS MovieName, Ano AS Year
FROM Filmes
WHERE Ano > 2000;
```

| Table Name   | Fields                           |
|--------------|----------------------------------|
| Movies       | MovieId, Title, Year, Duration   |

**6. Retrieve the movies with duration greater than 100 and less than 150, ordering by duration in ascending order**

```sql
SELECT Nome AS MovieName, Duracao AS Duration
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;
```

| Table Name   | Fields                           |
|--------------|----------------------------------|
| Movies       | MovieId, Title, Year, Duration   |

**7. Retrieve the count of movies released each year, grouped by year, ordering by year in descending order**

```sql
SELECT Ano AS Year, COUNT(*) AS MovieCount
FROM Filmes
GROUP BY Ano
ORDER BY Ano DESC;
```

| Table Name | Fields                              |
|------------|-------------------------------------|
| Actors     | ActorId, FirstName, LastName, Gender|

**8. Retrieve male actors, returning their FirstName, LastName**

```sql
SELECT PrimeiroNome AS FirstName, UltimoNome AS LastName
FROM Atores
WHERE Genero = 'M';
```

| Table Name | Fields                              |
|------------|-------------------------------------|
| Actors     | ActorId, FirstName, LastName, Gender|

**9. Retrieve female actors, returning their FirstName, LastName, and ordering by FirstName**

```sql
SELECT PrimeiroNome AS FirstName, UltimoNome AS LastName
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;
```

| Table Name    | Fields                                |
|---------------|---------------------------------------|
| Movies        | MovieId, Title, Year, Duration       |
| Genres        | GenreId, Name                         |
| MoviesGenres  | MovieId, GenreId                     |

**10. Retrieve the name of the movie and its genre**

```sql
SELECT f.Nome AS MovieName, g.Nome AS Genre
FROM Filmes AS f
JOIN FilmesGenero AS fg ON f.IdFilme = fg.IdFilme
JOIN Generos AS g ON fg.IdGenero = g.IdGenero;
```

| Table Name    | Fields                                |
|---------------|---------------------------------------|
| Movies        | MovieId, Title, Year, Duration       |
| Genres        | GenreId, Name                         |
| MoviesGenres  | MovieId, GenreId                     |

**11. Retrieve the name of the movie and the genre of type "Mystery"**

```sql
SELECT f.Nome AS MovieName, g.Nome AS Genre
FROM Filmes AS f
JOIN FilmesGenero AS fg ON f.IdFilme = fg.IdFilme
JOIN Generos AS g ON fg.IdGenero = g.IdGenero
WHERE g.Nome = 'Mystery';
```

| Table Name    | Fields                           |
|---------------|----------------------------------|
| Movies        | MovieId, Title, Year, Duration  |
| MovieCast     | MovieId, ActorId, Role          |
| Actors        | ActorId, FirstName, LastName    |

**12. Retrieve the name of the movie and the actors, bringing their FirstName, LastName, and Role**

```sql
SELECT f.Nome AS MovieName, a.PrimeiroNome AS FirstName, a.UltimoNome AS LastName, ef.Papel AS Role
FROM Filmes AS f
JOIN ElencoFilme AS ef ON f.IdFilme = ef.IdFilme
JOIN Atores AS a ON ef.IdAtor = a.IdAtor;
```
