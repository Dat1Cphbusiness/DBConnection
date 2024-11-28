

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

INSERT INTO Fields (field_type, label, income) VALUES ('Start','Start',4000);
INSERT INTO Fields (field_type, label, cost, income, seriesID) VALUES ('Plot', 'Rødovrevej', 1200, 100, 1);
INSERT INTO Fields (field_type, label) VALUES ('Chance', 'Prøv Lykken');
INSERT INTO Fields (field_type, label, cost, income, seriesID) VALUES ('Plot', 'Hvidovrevej', 1200, 100, 1);
INSERT INTO Fields (field_type, label, cost) VALUES ('Tax', 'Skat', 4000);
INSERT INTO Fields (field_type, label, cost, income, seriesID) VALUES ('Shippingline', 'Limfjorden A/S', 4000, 1000, 9);
INSERT INTO Fields (field_type, label, cost, income, seriesID) VALUES ('Plot', 'Roskildevej', 2000, 200, 2);
INSERT INTO Fields (field_type, label) VALUES ('Chance', 'Prøv Lykken');
INSERT INTO Fields (field_type, label, cost, income, seriesID) VALUES ('Plot', 'Valby Langgade', 2000, 200, 2);
INSERT INTO Fields (field_type, label, cost, income, seriesID) VALUES ('Plot', 'Allergade', 2400, 250, 2);
INSERT INTO Fields (field_type, label) VALUES ('Visit', 'Fængsel');
INSERT INTO Fields (field_type, label, cost, income, seriesID) VALUES ('Plot', 'Frederiksberg Alle', 2800, 250, 3);
INSERT INTO Fields (field_type, label, cost, income, seriesID) VALUES ('Brewery', 'Coca Cola', 3000, 250, 10);
INSERT INTO Fields (field_type, label, cost, income, seriesID) VALUES ('Plot', 'Burlowsvej', 2800, 250, 3);
INSERT INTO Fields (field_type, label, cost, income, seriesID) VALUES ('Plot', 'Gl.Kongevej', 3200, 250, 3);
INSERT INTO Fields (field_type, label, cost, income, seriesID) VALUES ('Shippingline', 'Danmark', 4000, 1000, 9);
INSERT INTO Fields (field_type, label, cost, income, seriesID) VALUES ('Plot', 'Børnestoffsvej', 3600, 250, 4);
INSERT INTO Fields (field_type, label) VALUES ('Chance', 'Prøv Lykken');
INSERT INTO Fields (field_type, label, cost, income, seriesID) VALUES ('Plot', 'Hellerupvej', 3600, 250, 4);
INSERT INTO Fields (field_type, label, cost, income, seriesID) VALUES ('Plot', 'Strandvejen', 4000, 250, 4);
INSERT INTO Fields (field_type, label, cost) VALUES ('Bonus', 'Parkering', 3600);
INSERT INTO Fields (field_type, label, cost, income, seriesID) VALUES ('Plot', 'Trianglen', 4400, 250, 5);
INSERT INTO Fields (field_type, label) VALUES ('Chance', 'Prøv Lykken');
INSERT INTO Fields (field_type, label, cost, income, seriesID) VALUES ('Plot', 'Østerbrogade', 4400, 250, 5);
INSERT INTO Fields (field_type, label, cost, income, seriesID) VALUES ('Plot', 'Grønningen', 4800, 250, 5);
INSERT INTO Fields (field_type, label, cost, income, seriesID) VALUES ('Shippingline', 'Mols-Linien', 4000, 250, 9);
INSERT INTO Fields (field_type, label, cost, income, seriesID) VALUES ('Plot', 'Bredgade', 5200, 250, 6);
INSERT INTO Fields (field_type, label, cost, income, seriesID) VALUES ('Plot', 'Kgs.Nytorv', 5200, 250, 6);
INSERT INTO Fields (field_type, label, cost, income, seriesID) VALUES ('Brewery', 'Carlsberg', 3000, 250, 10);
INSERT INTO Fields (field_type, label, cost, income, seriesID) VALUES ('Plot', 'Østergade', 5600, 250, 6);
INSERT INTO Fields (field_type, label, cost) VALUES ('Prison', 'Fængsel', 1000);
INSERT INTO Fields (field_type, label, cost, income, seriesID) VALUES ('Plot', 'Amagertorv', 6000, 250, 7);
INSERT INTO Fields (field_type, label, cost, income, seriesID) VALUES ('Plot', 'Vimmelskattet', 6000, 250, 7);
INSERT INTO Fields (field_type, label) VALUES ('Chance', 'Prøv Lykken');
INSERT INTO Fields (field_type, label, cost, income, seriesID) VALUES ('Plot', 'Nybrogade', 6400, 100, 7);
INSERT INTO Fields (field_type, label, cost, income, seriesID) VALUES ('Shippingline', 'Skandinavisk Linietrafik', 4000, 100, 9);
INSERT INTO Fields (field_type, label) VALUES ('Chance', 'Prøv Lykken');
INSERT INTO Fields (field_type, label, cost, income, seriesID) VALUES ('Plot', 'Frederiksberggade' , 7000, 100, 8);
INSERT INTO Fields (field_type, label, cost) VALUES ('Tax', 'Skat', 2000);
INSERT INTO Fields (field_type, label, cost, income, seriesID) VALUES ('Plot', 'Råhuspladsen', 8000, 100, 8);




INSERT INTO Players(name, balance, position, currentPlayer)
VAlUES ('Egon', 2000, 30, false);
INSERT INTO Players(name, balance, position, currentPlayer)
VAlUES ('Kjeld', 4000,20, true);
INSERT INTO Players(name, balance, position, currentPlayer)
VAlUES ('Benny', 6000, 10, false);



