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
  nation_id INT4 references nations(id) ON DELETE CASCADE,
  medals TEXT[]
);

CREATE TABLE events (
  id SERIAL4 primary key,
  type VARCHAR(255)
);

CREATE TABLE athletes_events (
  id SERIAL4 primary key,
  athlete_id INT4 references athletes(id) ON DELETE CASCADE,
  event_id INT4 references events(id) ON DELETE CASCADE,
  athlete_finishing_position INT4
);

