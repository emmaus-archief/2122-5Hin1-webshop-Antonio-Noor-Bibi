--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(7),
  brand VARCHAR(255),
  color VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  );

  CREATE TABLE brand (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255)
  );

  CREATE TABLE color (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255)
  );

  CREATE TABLE categorie (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255)
  );
--
  
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, code, color, brand, price) values ('kylie', '0000001', 'pink', 'kylie cosmetics',  10.5);
insert into products (name, code, color, brand, price) values ('chanel', '0000002', 'pink', 'chanel',  12.5);
insert into products (name, code, color, brand, price) values ('fenty', '0000003', 'pink', 'fenty cosmetics',  12.5);
insert into products (name, code, color, brand, price) values ('huda beauty', '0000004', 'beige', 'huda', 13.5);
insert into products (name, code, color, brand, price) values ('too faced', '0000005', 'brown', 'too faced', 14);
insert into products (name, code, color, brand, price) values ('anasatasia beverly hills', '0000006', 'blue', 'anastasia', 15);
insert into products (name, code, color, brand, price) values ('kkw', '0000007', 'yellow', 'kim', 16);
insert into products (name, code, color, brand, price) values ('idk', '0000008', 'idc', 'boeie', 18);


