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
insert into brand (name) values ('Huda Beauty');

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
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Blush Powder', 'INSTANT FLUSH ON CHEEKS', 'CLOSE TO PERFECT PRESSED', '1930001', 21.99, 1, 1, 1);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Bronzing Powder', 'WARM IT UP', 'KHAKI PRESSED', '1930002', 21.99, 1, 2, 1);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Kylighter Illuminating Powder', 'ALL-OVER INSTANT GLOW', 'PRINCESS PLEASE', '1930003', 28.99, 1, 3, 1);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Setting Powder', 'MATTIFY + LOCK IN', 'BEIGE', '1930004', 28.99, 1, 1, 1);

	
	-- kylie/lippen --
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Matte Lip Kit', 'COMFORTABLE ON LIPS. 8-HOUR WEAR.', 'Candy K', '1930005', 29.99, 1, 1, 2);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Liquid Lipstick', '8-HOUR LONGWEAR. TRUE-MATTE FINISH', 'Dirty Peach', '1930006', 19.99, 1, 2, 2);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('High Gloss', 'ULTRA SHINE & COMFORT', 'KOKO K', '1930007', 16.99, 1, 2, 2);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Lip Liners', 'ULTRA-CREAMY, LONG-WEARING COLOR', 'Coconut', '1930008', 12.99, 1, 3, 2);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Lip Blush', 'FLUSHING, VELVETY MATTE COLOR', 'Bikini Bod', '1930009', 19.99, 1, 3, 2);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Lip Shine Lacquer', 'HIGHLY PIGMENTED + LIGHTWEIGHT', 'It`s The Gloss For Me', '1930010', 18, 1, 2, 2);


	-- kylie/wenkbrauwen --
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Kybrow Kit', 'READY-TO-GO KIT', 'COOL BROWN', '1930011', 39.99, 1, 1, 4);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Kybrow Pomade', 'COLOR & SCULPT', 'DEEP BROWN', '1930012', 22.99, 1, 3, 4);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Kybrow Pencil', 'FILL & SHAPE', 'EBONY', '1930013', 19.99, 1, 3, 4);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Kybrow Highlighter', 'BRIGHTEN & REDEFINE', 'MEDIUM SHIMMER', '1930014', 19.99, 1, 2, 4);


	-- kylie/extra's --
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Kybrow Brush', 'OUTLINE & REDEFINE', 'Kylie Pink', '1930015', 17.99, 1, 2, 6); 
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Hair Pins', 'Hold + Accessorize', 'Multiple colors!', '1930016', 14.99, 1, 3, 6); 
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Makeup Sponge', 'Build + Blend', 'Kylie Pink', '1930017', 15.99, 1, 2, 6);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Pencil Sharpener', 'Universal Sharpener For Lip & Eye Pencils', 'Kylie Pink', '1930018', 6.99, 1, 1, 6);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Hand Mirror', 'Lightweight + Durable', 'Kylie Pink', '1930019', 17.99, 1, 3, 6);


-- fenty --
	
  -- fenty/gezicht --
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Pro Filt’r Soft Matte Longwear Foundation', 'MEDIUM TO FULL COVERAGE FOR ALL. LONGWEAR, LIGHT AS AIR.', '#470 - deep with warm golden undertones', '1930020', 45.00, 2, 2, 1);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Pro Filt’r Soft Matte Powder Foundation', 'BUILDABLE LIGHT TO FULL COVERAGE FOR ALL. LONGWEAR, LIGHT AS AIR, CREASE-RESISTANT.', '#270 - medium with cool peach undertones', '1930021', 45.00, 2, 3, 1); 
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Pro Filt’r Hydrating Longwear Foundation', 'MEDIUM TO FULL COVERAGE FOR ALL SKIN TONES. SKIN-SMOOTHING, LIGHT AS AIR, LONGWEAR', '#498 - deep with neutral undertones', '1930022', 26.00, 2, 1, 1);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Pro Filt’r Instant Retouch Concealer', 'INSTANT PHOTO-SOFT COVERAGE FOR ALL. LONGWEAR, LIGHT AS AIR, CREASEPROOF.', '#498 - deep with neutral undertones', '1930023', 34.00, 2, 1, 1);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Match Stix Contour Skinstick', 'MATTE CONTOUR. CREAM-TO-POWDER FORMULA. LONGWEAR, LIGHT-AS-AIR LAYERING.', 'Truffle - contour for medium skin tones, neutral undertone', '1930025', 34.00, 2, 3, 1); 
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Pro Filt’r Mattifying Primer', 'OIL-FREE FORMULA, SHINE-STOPPING, PORE-DIFFUSING FINISH. EXTENDED MAKEUP WEAR.', 'transparent', '1930026', 41.00, 2, 3, 1); 

  -- fenty/lippen --
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Fenty Beauty Gloss Bomb Universal Lip Luminizer', 'ADDICTIVE SHINE, NOURISHING WEAR. UNIVERSAL FINISHING TOUCH.', 'Fenty Glow - shimmering rose nude', '1930027', 24.00, 2, 1, 2);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Stunna Lip Paint', 'ONE-STROKE INTENSITY. LONGWEAR MATTE FINISH. UNRIVALED PRECISION WAND. ', 'Uncuffed - rosy mauve nude', '1930028', 31.00, 2, 1, 2);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Gloss Bomb Dip', 'IRRESISTIBLE SHINE, NOURISHING WEAR.
 UNIVERSAL FINISHING TOUCH, PORTABLE CLIP-ON.', 'Fu$$y - shimmering pink', '1930029', 23.00, 2, 2, 2);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Fenty Icon Semi-Matte Refillable Lipstick', 'THE BEST-CASE SCENARIO FOR AN ICON.', 'Metallic Nude - metallic finish', '1930030', 15.00, 2, 1, 2);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Pro Kiss’r Luscious Lip Balm', 'THE BEST-CASE SCENARIO FOR AN ICON.', 'Latte Lips - sheer neutral pink', '1930031', 24.00, 2, 3, 2);

  -- fenty/ogen --
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Full Frontal Volume, Lift & Curl Mascara', 'ALL-OUT VOLUME. EYE-OPENING LIFT & CURL. ULTIMATE LONGWEAR. EXCLUSIVE FLAT-TO-FAT BRUSH.', 'Cuz I’m Black' , '1930032', 29.00, 2, 3, 3);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Flyliner Longwear Liquid Eyeliner', 'SUPER-FLEX TIP, HYPER-SATURATED COLOR. FADEPROOF, WATER-RESISTANT LONGWEAR.', 'Cuz I’m Black' , '1930033', 29.00, 2, 1, 3);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Bomb Posse Mega Mix + Match Eyeshadow Palette', 'GIVE IT TO ME QUICK', 'Vanilla Cake, Balla’Rina Fu$$y, La’Bronze, Fenty Glow, Beverly Chillz, and Hot Chocoli' , '1930034', 57.00, 2, 1, 3);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Bright Fix Eye Brightener', 'INSTANTLY HYDRATES, BRIGHTENS, AND BLURS. LIGHT-AS-AIR, SHEER TO BUILDABLE COVERAGE THAT LASTS.', 'Peach - peach to brighten and color correct light medium to medium-deep skin tones' , '1930035', 31.00, 2, 1, 3);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Pro Filt’r Amplifying Eye Primer', 'BOOSTS COLOR, EXTENDS WEAR. WEIGHTLESS, SMOOTHING, CREASEPROOF.', 'nude' , '1930036', 26.00, 2, 1, 3);

  -- fenty/ogen --
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Cheeks Out Freestyle Cream Blush', 'FRESH WASH OF COLOR, EFFORTLESS BLENDING. LIGHT AS AIR, SWEAT RESISTANT.', 'Petal Poppin - soft baby pink' , '1930037', 26.00, 2, 1, 6);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Killawatt Foil Freestyle Highlighters', 'HYPER-METALLIC FINISH. ENDLESS WAYS TO GLOW.', 'Ruby Richez - metallic brick red' , '1930038', 45.00, 2, 1, 5);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Match Stix SHIMMER Skinsticks', 'HIGHLIGHT, BLUSH, ENHANCE.LONGWEAR, LIGHT-AS-AIR LAYERING.', 'Pink Lemonade - glimmering pink' , '1930039', 34.00, 2, 3, 5);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Cheeks Out Freestyle Cream Bronzer', 'FRESH BRONZED GLOW, EASY TO BLEND. LIGHT AS AIR, SWEAT RESISTANT.', 'Butta Biscuit - light with neutral undertone' , '1930040', 41.00, 2, 2, 5);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Diamond Bomb All-Over Diamond Veil', 'SUPERFINE 3D SPARKLE FOR FACE & BODY.
 INSANE DIAMOND-DUSTED EFFECT.', 'How Many Carats?! - pure platinum sparkle' , '1930041', 48.00, 3, 2, 5);

  -- fenty/extra's --

insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Dry Brush-Cleaning Sponge', 'INSTANTLY SWITCH BETWEEN SHADES. FAST, EASY, PORTABLE PIGMENT ERASER.', 'Pink' , '1930042', 22.00, 2, 1, 6);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('3-sided Precision Makeup Sponge 100', 'PRECISE, VERSATILE. EXPERT BLENDING FOR ALL FORMULAS.', 'Beige' , '1930043', 19.00, 2, 1, 6);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Artistry Pro Complexion Essentials', 'GIVE IT TO ME QUICK', 'Pink' , '1930044', 150.00, 2, 3, 6);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('The Portable Contour & Concealer Brush', 'PRECISE, EFFORTLESS SCULPTING. ALWAYS ON STANDBY.', 'White' , '1930045', 29.00, 2, 2, 6);


  -- huda/gezicht --
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('#FauxFilter Luminous Matte Foundation', 'New & Improved', 'Chai 210B' , '1930046', 40.00, 3, 1, 1);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('#FauxFilter Skin Finish Buildable Coverage Foundation Stick', 'A Flawless, Filtered Finish', 'Macchiato 400G' , '1930047', 40.00, 3, 2, 1);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('GloWish Luminous Pressed Powder', 'A smoothing, breathable luminous pressed powder to give you coverage without the cake!', '04 LIGHT MEDIUM' , '1930048', 33.00, 3, 1, 1);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Easy Bake Loose Baking & Setting Powder', 'Bake Without the Cake! 'Sugar Cookie' , '1930049', 34.95, 3, 3, 1);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Rose Quartz Face Gloss Highlighting Dew', 'BE YOU, DO YOU, FOR YOU' 'Rose Quartz' , '1930050', 39.00, 3, 2, 1);

	
  -- huda/lippen --
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Liquid Matte Ultra-Comfort Transfer-Proof Lipstick', 'Our OG, But BETTER!' 'Miss America' , '1930051', 22.00, 3, 2, 2);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('OG Liquid Matte Lipstick', 'Simply The Best' 'Her Majesty' , '1930052', 21.95, 3, 2, 2); 
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Lip Strobe Metallic Lip Gloss', 'Ultimate Add-on To Your Lip Game' 'Moody' , '1930053', 19.95, 3, 1, 2); 
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Diamond Hydrating Lip Balm', 'Huda’s favourite shade' 'Negligee' , '1930054', 23.95, 3, 3, 2); 
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Perfect Pair Lip Set', 'For a juicy, fuller-looking pout', 'Sandy Beige' , '1930055', 43.00, 3, 1, 2); 


  -- huda/extra's --
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('WISHFUL Tote Bag', 'On-the-Go Essential', 'Rose Jelly' , '1930056', 29.00, 3, 1, 6);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('N.Y.M.P.H. Beach Bag', 'Limited Edition', 'Transparent ' ,'1930057', 29.00, 3, 2, 6);
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Clean Genie Cleansing Wand', 'Cleansing Made Easy', 'Turquoise' , '1930058', 17.00, 3, 1, 6); 
insert into products (name, description, color, code, price, brand_id, voorraad_id, categorie_id) values ('Jumbo Heart Powder Puff', 'Ultra-Fluffy. Mega Comfy. SO Extra.', 'Pink' , '1930059', 25.00, 3, 1, 6); 








	