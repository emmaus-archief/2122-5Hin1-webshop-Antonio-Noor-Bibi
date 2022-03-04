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
--
  
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

  -- kylie/gezicht --
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Blush', 'INSTANT FLUSH ON CHEEKS', 'CLOSE TO PERFECT PRESSED', '1930001', 21.99, 1, 1, 1);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Bronzers', 'WARM IT UP', 'KHAKI PRESSED', '1930001', 21.99, 3, 1, 1);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Kylighter Illuminating Powder', 'ALL-OVER INSTANT GLOW', 'CLOSE TO PERFECT PRESSED', '1930001', 28.99, 1, 1, 1);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Setting Powder', 'MATTIFY + LOCK IN', 'BEIGE', '1930001', 28.99, 1, 1, 1);

	
	-- kylie/lippen --
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Lip-kit', 'COMFORTABLE ON LIPS. 8-HOUR WEAR.', 'Candy K', '1930001', 29.99, 1, 1, 1);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Liquid Lipstick', '8-HOUR LONGWEAR. TRUE-MATTE FINISH', 'Dirty Peach', '1930002', 19.99, 1, 2, 1);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Lip Gloss', 'ULTRA SHINE & COMFORT', 'KOKO K', '1930003', 16.99, 1, 2, 1);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Lip Liners', 'ULTRA-CREAMY, LONG-WEARING COLOR', 'Coconut', '1930004', 12.99, 1, 3, 1);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Lip Blush', 'FLUSHING, VELVETY MATTE COLOR', 'Bikini Bold', '1930005', 19.99, 1, 3, 1);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Lip Shine Lacquer', 'HIGHLY PIGMENTED + LIGHTWEIGHT', 'It`s The Gloss For Me', '1930006', 18, 1, 2, 1);


	-- kylie/wenkbrauwen --
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Kybrow Kit', 'READY-TO-GO KIT', 'COOL BROWN', '1930001', 39.99, 1, 1, 4);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Kybrow Pomade', 'COLOR & SCULPT', 'DEEP BROWN', '1930001', 22.99, 1, 3, 4);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Kybrow Pencil', 'FILL & SHAPE', 'EBONY', '1930001', 19.99, 1, 3, 4);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Kybrow Highlighter', 'BRIGHTEN & REDEFINE', 'MEDIUM SHIMMER', '1930001', 19.99, 1, 2, 4);


	-- kylie/extra's --
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Kybrow Brush', 'The Kybrow Brush lets you precisely apply any brow pomade. The dual-ended design features an angled brush to fill in and define, and a spoolie to blend and distribute the color evenly. Works perfectly with the Kybrow Pomade!', 'Kylie Pink', '1930001', 17.99, 1, 2, 6); 
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Hair Pins', 'The limited-edition Holiday Collection Hair Pins are the perfect statement piece to any hairstyle. These stackable pins come in a set of 6, and each feature one of the fun names and colors from the Kylie Cosmetics lipsticks.', 'Multiple colors!', '1930001', 14.99, 1, 3, 6); 
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Makeup Sponge', 'The limited-edition Holiday Collection Makeup Sponge lets you flawlessly apply makeup for a skin-like finish. This soft and gentle sponge features a teardrop shape making it easy to apply product around the eyes, nose, and lip area. It’s a must-have for your beauty routine.', 'Kylie Pink', '1930001', 15.99, 1, 2, 6);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Pencil Sharpener', 'The Pencil Sharpener features a universal design that suits three sizes of pencils from standard to jumbo. With its two blades and two different-sized holes, it lets you sharpen your lip and eye pencils with precision and ease.', 'Kylie Pink', '1930001', 6.99, 1, 1, 6);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Hand Mirror', 'The Hand Mirror is the perfect handheld mirror for tending to your makeup and skincare needs. This lightweight yet durable mirror is designed in our signature pink and a large viewing surface. The perfect addition to your dressing table!', 'Kylie Pink', '1930001', 17.99, 1, 3, 6);
	

	





	


