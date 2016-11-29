DROP TABLE IF EXISTS albums;
DROP TABLE IF EXISTS genres;
DROP TABLE IF EXISTS artists;


CREATE TABLE artists (
  id SERIAL8 primary key,
  name VARCHAR(255) NOT NULL
  );

CREATE TABLE genres (
  id SERIAL8 primary key,
  type VARCHAR(255) NOT NULL
);

CREATE TABLE albums (
  id SERIAL8 primary key,
  title VARCHAR(255) NOT NULL,
  genre_id INT8 references genres(id),
  artist_id INT8 references artists(id),
  price SERIAL8,
  quantity SERIAL8,
  quantity_sold SERIAL8
);
