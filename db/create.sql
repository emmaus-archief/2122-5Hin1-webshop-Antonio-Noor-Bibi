--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(7),
	name VARCHAR(255),
  brand_id VARCHAR(255),
	voorraad_id VARCHAR(255),
  color VARCHAR(255),
	categorie_id VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2)
  );

  CREATE TABLE brand (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255)
  );

  CREATE TABLE voorraad (
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

insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Lip-kit', '-', 'pink', '0000001', 29.99, 1, 1, 2);

	

insert into brand (name) values ('Kylie Cosmetics');
insert into brand (name) values ('Fenty Beauty');
insert into brand (name) values ('Too Faced');
insert into brand (name) values ('Huda Beauty');
insert into brand (name) values ('Anastasia Beverly Hills');

insert into voorraad (name) values ('op voorraad');
insert into voorraad (name) values ('beperkte voorraad');
insert into voorraad (name) values ('uitverkocht');

insert into categorie (name) values ('gezicht');
insert into categorie (name) values ('lippen');
insert into categorie (name) values ('ogen');
insert into categorie (name) values ('wenkbrauwen');
insert into categorie (name) values ('wangen');
insert into categorie (name) values ('extras');


SELECT * FROM products
JOIN brand ON 
brand.name = brand.id;

SELECT * FROM products
JOIN voorraad ON 
voorraad.name = voorraad.id;

SELECT * FROM products
JOIN categorie ON 
categorie.name = categorie.id;

