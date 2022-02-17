--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2)
);

CREATE TABLE info (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  naam TEXT,
  merk TEXT,
  kleur TEXT,
  prijs NUMERIC(10, 2)
);

--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price) values ('kylie', 'a', '0000001', 10.5);
insert into products (name, description, code, price) values ('chanel', 'b', '0000002', 11);
insert into products (name, description, code, price) values ('fenty', 'c', '0000003', 13.5);
insert into products (name, description, code, price) values ('huda beauty', 'd', '0000004', 13.5);
insert into products (name, description, code, price) values ('too faced', 'e', '0000005', 14);
insert into products (name, description, code, price) values ('anasatasia beverly hills', 'f', '0000006', 14);

