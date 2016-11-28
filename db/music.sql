DROP TABLE IF EXISTS albums;
DROP TABLE IF EXISTS genre;
DROP TABLE IF EXISTS artists;


CREATE TABLE artists (
  id SERIAL8 primary key,
  name VARCHAR(255) NOT NULL
  );

CREATE TABLE genre (
  id SERIAL8 primary key,
  genre VARCHAR(255) NOT NULL,
);

CREATE TABLE albums (
  id SERIAL8 primary key,
  title VARCHAR(255) NOT NULL,
  genre VARCHAR(255) references genre(genre),
  artist_id INT8 references artists(id),
  price SERIAL8
);

