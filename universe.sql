CREATE TABLE galaxy(
  galaxy_id SERIAL PRIMARY KEY,
  name VARCHAR(30) NOT NULL UNIQUE,
  age_in_billions NUMERIC(4, 2),
  length INT,
  galaxy_shape TEXT NOT NULL
);

CREATE TABLE star(
  star_id SERIAL PRIMARY KEY,
  name VARCHAR(30) NOT NULL UNIQUE,
  age_in_billions NUMERIC(5, 3),
  radius INT,
  inhabitants BOOLEAN NOT NULL,
  galaxy_id INT NOT NULL REFERENCES galaxy(galaxy_id)
);

CREATE TABLE planet(
  planet_id SERIAL PRIMARY KEY,
  name VARCHAR(30) NOT NULL UNIQUE,
  age_in_billions NUMERIC(5, 3),
  radius INT,
  inhabitants BOOLEAN NOT NULL,
  star_id INT NOT NULL REFERENCES star(star_id)
);

CREATE TABLE moon(
  moon_id SERIAL PRIMARY KEY,
  name VARCHAR(30) NOT NULL UNIQUE,
  age_in_billions NUMERIC(4, 3),
  radius INT,
  inhabitants BOOLEAN NOT NULL,
  planet_id INT NOT NULL REFERENCES planet(planet_id)
);

CREATE TABLE comet(
  comet_id SERIAL PRIMARY KEY,
  name VARCHAR(30) NOT NULL UNIQUE,
  age_in_millions NUMERIC(2, 1),
  radius INT,
  inhabitants BOOLEAN NOT NULL
);

INSERT INTO galaxy(name, age_in_billions, length, galaxy_shape)
  VALUES('The Milky Way Galaxy', 13.61, 100000, 'Spiral'),
  ('The Cigar Galaxy', 13.3, 37000, 'Ellipse'),
  ('The Black Eye Galaxy', 13.28, 70000, 'Spiral'),
  ('The Sombrero Galaxy', 13.25, 50000, 'Spiral'),
  ('The Sunflower Galaxy', 13.28, 98000, 'Spiral'),
  ('The Cartwheel Galaxy', NULL, 500000000, 'Spiral');

INSERT INTO star(name, age_in_billions, radius, inhabitants, galaxy_id)
  VALUES('Sol', 4.603, 432690, false, 1),
  ('Arcturus', 7.105, 10980000, false, 1),
  ('Sirius', 0.23, 750000, false, 1),
  ('Betelgeuse', 0.10, 383400000, false, 1),
  ('Aldebaran', 6.605, 19077000, false, 1),
  ('Acrux', 0.108, NULL, false, 1),
  ('Tau Ceti', 9.0, 342800, false, 1),
  ('Copernicus', NULL, NULL, false, 1),
  ('14 Herculis', 56.0, NULL, false, 1),
  ('Gliese 667 C', 2.0, 6096, false, 1),
  ('42 Draconis', 0.949, NULL, false, 1);

INSERT INTO planet(name, age_in_billions, radius, inhabitants, star_id)
  VALUES('Mercury', 4.503, 1516, false, 1),
  ('Venus', 4.503, 3759, false, 1),
  ('Earth', 4.543, 3958, true, 1),
  ('Mars', 4.603, 2106, false, 1),
  ('Jupiter', 4.603, 43441, false, 1),
  ('Saturn', 4.503, 36184, false, 1),
  ('Uranus', 4.503, 15759, false, 1),
  ('Neptune', 4.503, 15299, false, 1),
  ('Pluto', 4.5, 738, false, 1),
  ('Dimidium', 6.1, 84404, false, 1),
  ('Tau Ceti e', 10.0, 342800, false, 7),
  ('Eris', 4.503, 722, false, 1),
  ('Haumea', 4.503, 507, false, 1),
  ('Ceres', 4.573, 293, false, 1),
  ('Makemake', 4.5, 444, false, 1),
  ('55 Cancri e', 7.4, NULL, false, 8),
  ('14 Herculis b', 5.1, 48653, false, 9),
  ('Gliese 667 Cc', 2.0, 6096, false, 10),
  ('42 Draconis b', 9.49, 101759, false, 11),
  ('225088 Gonggong', NULL, NULL, false, 1);

INSERT INTO moon(name, age_in_billions, radius, inhabitants, planet_id)
  VALUES('The Moon', 4.46, 1079, false, 3),
  ('Europa', 4.503, 969, false, 5),
  ('Ganymede', 4.5, 1636, false, 5),
  ('Io', 4.5, 1131, false, 5),
  ('Callisto', 4.503, 1497, false, 5),
  ('Adrastea', 4.5, 5, false, 5),
  ('Thebe', 4.5, 30, false, 5),
  ('Amalthea', 4.5, 51, false, 5),
  ('Himalia', 4.5, 52, false, 5),
  ('Callirrhoe', 4.5, 2, false, 5),
  ('Themisto', 4.5, 2, false, 5),
  ('Dia', 4.5, 1, false, 5),
  ('Eirene', 4.5, 1, false, 5),
  ('Iocaste', 4.5, 1, false, 5),
  ('Eupheme', 4.5, 1, false, 5),
  ('Cyllene', 4.5, 0, false, 5),
  ('Eukelade', 4.5, 1, false, 5),
  ('Herse', 4.5, 0, false, 5),
  ('Aoede', 4.5, 1, false, 5),
  ('Philophrosyne', 4.5, 0, false, 5);

INSERT INTO comet(name, age_in_millions, radius, inhabitants)
  VALUES('Halleys Comet', 0.2, 3, false),
  ('Comet Holmes', NULL, 1, false),
  ('McNaught Comet', 6.0, 15869820, false);
