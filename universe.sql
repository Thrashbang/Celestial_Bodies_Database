CREATE TABLE galaxy(
  galaxy_id SERIAL PRIMARY KEY,
  name VARCHAR(30) NOT NULL UNIQUE,
  age NUMERIC(1, 1),
  length integer,
  universe_shape TEXT NOT NULL
);

CREATE TABLE star(
  star_id SERIAL PRIMARY KEY,
  name VARCHAR(30) NOT NULL UNIQUE,
  age NUMERIC(1, 1),
  radius integer,
  inhabitants boolean NOT NULL,
  galaxy TEXT NOT NULL REFERENCE galaxy(name)
);

CREATE TABLE planet(
  planet_id SERIAL PRIMARY KEY,
  name VARCHAR(30) NOT NULL UNIQUE,
  age NUMERIC(1, 1),
  radius integer,
  inhabitants boolean NOT NULL,
  star TEXT NOT NULL REFERENCES star(name)
);

CREATE TABLE moon(
  moon_id SERIAL PRIMARY KEY,
  name VARCHAR(30) NOT NULL UNIQUE,
  age NUMERIC(1, 1),
  radius integer,
  inhabitants boolean NOT NULL,
  planet TEXT NOT NULL REFERENCES planet(name)
);

CREATE TABLE comet(
  comet_id SERIAL PRIMARY KEY,
  name VARCHAR(30) NOT NULL UNIQUE,
  age NUMERIC(1, 1),
  radius integer,
  inhabitants boolean NOT NULL
);

INSERT INTO galaxy(galaxy_id, name, age)
  VALUES('The Milky Way Galaxy', 13.61, 100000, 'Spiral'),
  ('The Cigar Galaxy', 13.3, 37000, 'Ellipse'),
  ('The Black Eye Galaxy', 13.28, 70000, 'Spiral'),
  ('The Sombrero Galaxy', 13.25, 50000, 'Spiral'),
  ('The Sunflower Galaxy', 13.28, 98000, 'Spiral'),
  ('The Cartwheel Galaxy', NULL, 500000000, 'Spiral');

INSERT INTO star(star_id, name, age, radius, inhabitants, galaxy)
  VALUES('The Sun', 4.603, 432690, false, 'The Milky Way Galaxy'),
  ('Arcturus', 7.105, 10980000, false, 'The Milky Way Galaxy'),
  ('Sirius', 230000000, 750000, false, 'The Milky Way Galaxy'),
  ('Betelgeuse', 10010000, 383400000, false, 'The Milky Way Galaxy'),
  ('Aldebaran', 6605000000, 19077000, false, 'The Milky Way Galaxy'),
  ('Acrux', 10800000, NULL, false, 'The Milky Way Galaxy'),
  ('Tau Ceti', 9000000000, 342800, false, 'The Milky Way Galaxy'),
  ('Copernicus', NULL, NULL, false, 'The Milky Way Galaxy'),
  ('14 Herculis', 5600000000, NULL, false, 'The Milky Way Galaxy'),
  ('Gliese 667 C', 2000000000, 6096, false, 'The Milky Way Galaxy'),
  ('42 Draconis', 9490000000, NULL, false, 'The Milky Way Galaxy'),

INSERT INTO planet(planet_id, name, age, radius, inhabitants, star)
  VALUES('Mercury', 4.503, 1516, false, 'The Sun'),
  ('Venus', 4.503, 3759, false, 'The Sun'),
  ('Earth', 4.543, 3958, true, 'The Sun'),
  ('Mars', 4.603, 2106, false, 'The Sun'),
  ('Jupiter', 4.603, 43441, false, 'The Sun'),
  ('Saturn', 4.503, 36184, false, 'The Sun'),
  ('Uranus', 4.503, 15759, false, 'The Sun'),
  ('Neptune', 4.503, 15299, false, 'The Sun'),
  ('Pluto', 4.5, 738, false, 'The Sun'),
  ('Dimidium', 6.1, 84404, false, 'The Sun'),
  ('Tau Ceti e', 10, 342800, false, 'Tau Ceti'),
  ('Eris', 4.503, 722, false, 'The Sun'),
  ('Haumea', 4.503, 507, false, 'The Sun'),
  ('Ceres', 4.573, 293, false, 'The Sun'),
  ('Makemake', 4.5, 444, false, 'The Sun'),
  ('55 Cancri e', 7.4, NULL, false, 'Copernicus'),
  ('14 Herculis b', 5.1, 48653, false, '14 Herculis'),
  ('Gliese 667 Cc', 2, 6096, false, 'Gliese 667 C'),
  ('42 Draconis b', 9.49, 101759, false, '42 Draconis'),
  ('225088 Gonggong', NULL, NULL, false, 'The Sun');

INSERT INTO moon(moon_id, name, age, radius, inhabitants, planet)

  VALUES('The Moon', 4.46, 1079, false, 'Earth'),
  ('Europa', 4.503, 969, false, 'Jupiter'),
  ('Ganymede', 4.5, 1636, false, 'Jupiter'),
  ('Io', 4.5, 1131, false, 'Jupiter'),
  ('Callisto', 4.503, 1497, false, 'Jupiter'),
  ('Adrastea', 4.5, 5, false, 'Jupiter'),
  ('Thebe', 4.5, 30, false, 'Jupiter'),
  ('Amalthea', 4.5, 51, false, 'Jupiter'),
  ('Himalia', 4.5, 52, false, 'Jupiter'),
  ('Callirrhoe', 4.5, 2, false, 'Jupiter'),
  ('Themisto', 4.5, 2, false, 'Jupiter'),
  ('Dia', 4.5, 1, false, 'Jupiter'),
  ('Eirene', 4.5, 1, false, 'Jupiter'),
  ('Iocaste', 4.5, 1, false, 'Jupiter'),
  ('Eupheme', 4.5, 1, false, 'Jupiter'),
  ('Cyllene', 4.5, 0, false, 'Jupiter'),
  ('Eukelade', 4.5, 1, false, 'Jupiter'),
  ('Herse', 4.5, 0, false, 'Jupiter'),
  ('Aoede', 4.5, 1, false, 'Jupiter'),
  ('Philophrosyne', 4.5, 0, false, 'Jupiter');

INSERT INTO comet(comet_id, name, age, radius, inhabitants)
