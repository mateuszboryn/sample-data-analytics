-- TODO: add primary keys, foreign keys, indexes, tune data types

--------------------------------------------

CREATE TABLE links (
    movieId INTEGER,
    imdbId VARCHAR,
    tmdbId VARCHAR
);

COPY links(movieId, imdbId, tmdbId)
FROM '/ml-latest-small/links.csv'
DELIMITER ','
CSV HEADER;

--------------------------------------------

CREATE TABLE movies (
    movieId INTEGER,
    title VARCHAR,
    genres VARCHAR
);

COPY movies(movieId,title,genres)
FROM '/ml-latest-small/movies.csv'
DELIMITER ','
CSV HEADER;

--------------------------------------------

CREATE TABLE ratings_import (
    userId INTEGER,
    movieId INTEGER,
    rating NUMERIC(5,1),
    rating_timestamp bigint
);

COPY ratings_import (userId,movieId,rating,rating_timestamp)
FROM '/ml-latest-small/ratings.csv'
DELIMITER ','
CSV HEADER;

CREATE TABLE ratings 
AS SELECT 
    userId,
    movieId,
    rating,
    to_timestamp(rating_timestamp) AS rating_timestamp
FROM ratings_import;

-- DROP TABLE ratings_import;

--------------------------------------------

CREATE TABLE tags_import (
    userId INTEGER,
    movieId INTEGER,
    tag VARCHAR,
    tag_timestamp bigint
);

COPY tags_import (userId,movieId,tag,tag_timestamp)
FROM '/ml-latest-small/tags.csv'
DELIMITER ','
CSV HEADER;

CREATE TABLE tags 
AS SELECT 
    userId,
    movieId,
    tag,
    to_timestamp(tag_timestamp) AS tag_timestamp
FROM tags_import;

-- DROP TABLE ratings_import;

--------------------------------------------

