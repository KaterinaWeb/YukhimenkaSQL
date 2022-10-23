CREATE DATABASE pets_and_vets;
USE pets_and_vets;

CREATE TABLE pet (
  pet_id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  species ENUM('dog', 'cat', 'horse') NOT NULL,
  breed varchar(30) NOT NULL,
  name varchar(45) DEFAULT NULL,
  pet_owner varchar(45) DEFAULT NULL,
  weight FLOAT DEFAULT NULL);

CREATE TABLE vet (
  vet_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  vet_name VARCHAR(30) NOT NULL,
  vet_surname VARCHAR(30));
  
  CREATE TABLE pet_has_vet(
  phv_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  id_pet INT NOT NULL,
  id_vet INT NOT NULL,
  FOREIGN KEY (id_pet) REFERENCES pet(pet_id),
  FOREIGN KEY(id_vet) REFERENCES vet(vet_id));

  INSERT INTO pet (species,breed,name,pet_owner,weight) VALUES
	 ('cat','American Bobtail','Bubbles','Roy Keane',6.0),
	 ('cat','American Bobtail','Cheddar','Adam Nevell',6.5),
	 ('cat','American Curl','Fishbait','Joe Ginness',7.1),
	 ('cat','American Curl','Jiggles','Patty O''Furniture',6.4),
	 ('cat','Birman Cat','Katy Purry','Paddy O''Furniture',5.4),
	 ('cat','Chartreux Cat','Kit-Kat','Joe Ginness',5.3),
	 ('cat','Chartreux Cat','Meowise','Paddy O''Furniture',6.3),
	 ('cat','Chartreux Cat','Puddy Tat','Joe Ginness',5.9),
	 ('cat','Chartreux Cat','Skimbleshanks','Allie Grater',4.99),
	 ('cat','Chartreux Cat','Sushi','Paddy O''Furniture',5.1);
INSERT INTO pet (species,breed,name,pet_owner,weight) VALUES
	 ('dog','Akita','Brutus','Allie Grater',40.1),
	 ('dog','Akita','Bear','Frank N. Stein',42.0),
	 ('dog','American Foxhound','Boomer','Allie Grater',15.1),
	 ('dog','Jack Russell','Diesel','Karen Onnabit',15.2),
	 ('dog','Akita','Bandit','Hank R. Cheef',38.0),
	 ('dog','Jackshund','Champ','Allie Grater',28.0),
	 ('dog','American Foxhound','Gunner','Paddy O''Furniture',20.1),
	 ('dog','Jack Russell','Spike','Ray O’Sun',18.9),
	 ('dog','Jackshund','Harley','Joe Ginness',17.2),
	 ('dog','English Foxhound','Thor','Glad I. Oli',16.3);
INSERT INTO pet (species,breed,name,pet_owner,weight) VALUES
	 ('dog','English Foxhound','An','Frank N. Stein',17.0),
	 ('horse','Aegidienberger','Bella','Glad I. Oli',300.0),
	 ('horse','Baluchi horse','Lilly','Eileen Dover',280.0),
	 ('horse','Campeiro','Alexia','Eileen Dover',390.2),
	 ('horse','Baluchi horse','Fancy','Reeve Ewer',280.0),
	 ('horse','Curly Horse','Sugar','Mary Krismass',381.99),
	 ('horse','Aegidienberger','Lady','Emma Grate',400.0),
	 ('horse','Castillonnais','Tucker','Anne T. Dote',315.0),
	 ('horse','Campeiro','Chukie','Ivan Itchinos',300.8),
	 ('horse','Campeiro','Luke','Manny Jah',311.2);
INSERT INTO pet (species,breed,name,pet_owner,weight) VALUES
	 ('dog','Labrador Retriever','Panda','Roman Cheese',33.0),
	 ('dog','mongrel dog','Tatoshka','Roman Cheese',9.0),
	 ('dog','mongrel dog','Lisichka','Roman Cheese',9.0),
	 ('cat','alley cat','Iriska','Roman Cheese',5.0),
	 ('cat','British Shorthair','Daniel','Mary Key',7.1);

INSERT INTO vet(vet_name, vet_surname)VALUES
  ('Paul', 'McKartney'), ('Rick', 'Steevenson'), ('Mat', 'Daymen'), 
  ('Paul', 'Reechy'), ('Samanta', 'Stone'), ('Bill', 'Rlinton'), 
  ('Gleb', 'Gorogov');

INSERT INTO pet_has_vet (id_vet, id_pet) VALUES
  (1, 2), (1, 3), (1, 10), (1, 15), (1, 35), (1, 25),
  (2, 2), (2, 5), (2, 7), (2, 8), (2, 10),
  (3, 15), (3, 20), (3, 18), (3, 28), (3, 32),
  (4, 6), (4, 11), (4, 17), (4, 22), (4, 26), (4, 29), (4, 33),
  (5, 12), (5, 14), (5, 15), (5, 17), (5, 19), (5, 20),
  (6, 31), (6, 27), (6, 28), (6, 9),
  (7, 13), (7, 34), (7, 24);

  /* Домашнее задание: выбрать ветеринаров (только имя), которые 
  обслуживают собак, которые тяжелее 30 кг, а также ветеринаров, 
  которые обслуживают котов легче 7 кг.*/

  with t1 as
  (select  vet_name from vet
  join pet_has_vet on vet.vet_id=pet_has_vet.id_vet
  join pet on pet.pet_id=pet_has_vet.id_pet
  where species='dog' and weight>30),
  t2 as
  (select  vet_name from vet
  join pet_has_vet on vet.vet_id=pet_has_vet.id_vet
  join pet on pet.pet_id=pet_has_vet.id_pet
  where species='cat' and weight<7)

  select * from t1
  union 
  select * from t2;