DROP TABLE IF EXISTS Fields;
DROP TABLE IF EXISTS Players;

CREATE TABLE Players
(
    id            INTEGER      primary key autoincrement,
    name          varchar(20)  not null,
    balance       INTEGER      default 0,
    position      INTEGER      default 1,
    currentPlayer boolean      default 0
);

CREATE TABLE Fields (
  id integer PRIMARY KEY,
  field_type varchar(20),
  label varchar(40),
  cost integer DEFAULT NULL,
  income integer DEFAULT NULL,
  seriesID integer DEFAULT NULL,
  owner_id integer,
   FOREIGN KEY (owner_id) REFERENCES Players(id)
);


