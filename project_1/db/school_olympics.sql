DROP TABLE athletes_events;
DROP TABLE events;
DROP TABLE athletes;
DROP TABLE nations;

CREATE TABLE nations (
  id SERIAL4 primary key,
  name VARCHAR(255) not null
);

CREATE TABLE athletes (
  id SERIAL4 primary key,
  name VARCHAR(255) not null,
  nation_id INT4 references nations(id),
  medals TEXT[]
);

CREATE TABLE events (
  id SERIAL4 primary key,
  type CARCHAR(255)
);

CREATE TABLE athletes_events (
  id SERIAL4 primary key,
  athletes_id INT4 references athletes(id),
  events_id INT4 references events(id),
  athlete_finishing_position INT4
);

