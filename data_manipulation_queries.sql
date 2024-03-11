
--------------------------------- MOVIES -----------

-- SELECT for populate table with all values:
SELECT movies.primaryTitle, movies.startYear, genres.genreName
FROM   movies
JOIN   genres ON movies.genreID = genres.genreID;

-- SELECT for primaryTitle specified:
SELECT movies.primaryTitle, movies.startYear, genres.genreName
FROM   movies
JOIN   genres ON movies.genreID = genres.genreID
WHERE movies.primaryTitle = :user_specified_primaryTitle;

-- SELECT for startYear specified:
SELECT movies.primaryTitle, movies.startYear, genres.genreName
FROM   movies
JOIN   genres ON movies.genreID = genres.genreID
WHERE movies.startYear = :user_specified_startYear;

-- SELECT with dropdown genre specified and title specified
SELECT movies.primaryTitle, movies.startYear, genres.genreName
FROM   movies
JOIN   genres ON movies.genreID = genres.genreID
WHERE movies.genreName = :user_specified_genreName
    AND movies.primaryTitle = :user_specified_primaryTitle;
    
-- SELECT with dropdown genre specified and year specified
SELECT movies.primaryTitle, movies.startYear, genres.genreName
FROM   movies
JOIN   genres ON movies.genreID = genres.genreID
WHERE movies.genreName = :user_specified_genreName
    AND movies.startYear = :user_specified_startYear;

-- UPDATE Movie table with user_specified values:
UPDATE movies
SET movies.primaryTitle = 
    movies.startYear = :user_specified_startYear
    movies.genreID = (SELECT genres.genreID FROM Genre WHERE Genre.genreName = :user_specified_genreName)
WHERE
    movies.primaryTitle = :user_specified_primaryTitle
AND movies.startYear = :user_specified_startYear;

-- INSERT into movies table based on user input:
INSERT INTO movies 
VALUES      
    (:user_specified_primaryTitle, :user_specified_startYear,
    (SELECT genres.genreID FROM Genre WHERE Genre.genreName = :user_specified_genreName);
    

-- DELETE an entry from movies
DELETE FROM movies
WHERE movies.primaryTitle = :user_specified_primaryTitle
AND   movies.startYear = :user_specified_primaryTitle;

--------------------------------- GENRES -----------

-- populate genre options dropdowns
SELECT genres.genreName FROM genres
ORDER BY genres.genreName;

-- populate initial genres table load in webpage
SELECT genres.genreName, movies.primaryTitle 
FROM movies INNER JOIN genres on movies.genreID = genres.genreID
ORDER BY genres.genreName ASC;

-- search movies by genre (fuzzy search)
SELECT genres.genreName, movies.primaryTitle 
FROM movies INNER JOIN genres on movies.genreID = genres.genreID 
    AND genres.genreName LIKE (:genreNameInput+%);

-- add new genre
INSERT INTO genres (genreName) 
VALUES (:genreNameInput);

--------------------------------- ACTORS -----------

-- populate initial actors_movies table load in webpage
SELECT actors.primaryName from actors
ORDER BY actors.actorID ASC;

-- search actors
SELECT actors.primaryName from actors
WHERE actors.primaryName LIKE (:actorNameInput+%);

-- add new actor
INSERT INTO actors (primaryName) 
VALUES (:actorNameInput);

--------------------------------- ACTORS_MOVIES -----------

-- populate initial actors_movies table load in webpage
SELECT actors.primaryName, movies.primaryTitle 
FROM movies 
INNER JOIN actors_movies on movies.movieID = actors_movies.movieID
INNER JOIN actors on actors_movies.actorID = actors.actorID
ORDER BY actors.primaryName ASC;

-- populate actors drop-down list
SELECT actors.primaryName 
FROM actors 
ORDER BY actors.primaryName ASC;

-- populate movies drop-down list
SELECT movies.primaryTitle 
FROM movies 
ORDER BY movies.primaryTitle ASC;

-- search movies by actor (fuzzy search)
SELECT actors.primaryName, movies.primaryTitle 
FROM movies 
INNER JOIN actors_movies on movies.movieID = actors_movies.movieID
INNER JOIN actors on actors_movies.actorID = actors.actorID
    AND actors.primaryName LIKE (:primaryNameInput+%);

-- add new actor_movie relationship
INSERT INTO actors_movies (actorID, movieID) 
VALUES (actorID, movieID) (:actorIDInput_from_dropdown, :movieIDInput_from_dropdown);

-- delete actor_movie relationship:
DELETE FROM actors_movies
WHERE actors_movies.actorID = :user_specified_actorID_dropdown
    AND actors_movies.movieID = :user_specified_movieID_dropdown;

--------------------------------- CHARACTERS -----------

-- populate initial characters table load in webpage
SELECT characters.characterName 
FROM characters 
ORDER BY characters.characterID;

-- populate actors drop-down list
SELECT actors.primaryName 
FROM actors 
ORDER BY actors.primaryName ASC;

-- populate movies drop-down list
SELECT movies.primaryTitle 
FROM movies 
ORDER BY movies.primaryTitle ASC;

-- populate initial characters by Movie table load in webpage
SELECT characters.characterName, movies.primaryTitle FROM movies INNER JOIN characters on movies.movieID = characters.movieID
ORDER BY characters.characterName ASC;

-- search movies by character (fuzzy search)
SELECT characters.characterName, movies.primaryTitle FROM movies INNER JOIN characters on movies.movieID = characters.movieID
    AND characters.characterName LIKE (:characterNameInput+%);

-- add new character
INSERT INTO characters (characterName, actorID, movieID) 
VALUES (:characterNameInput, :actorIDInput, :movieIDInput);


