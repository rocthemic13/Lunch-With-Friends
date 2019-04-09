CREATE TABLE meals (
  id INT AUTO_INCREMENT,
  chef_id INT,
  price decimal(10,2),
  name varchar(128),
  description text,
  image_url varchar(512),
  PRIMARY KEY (id)
);


CREATE TABLE chefs (
  id INT AUTO_INCREMENT,
  name varchar(128),
  PRIMARY KEY (id)
);


CREATE TABLE patrons (
  id INT AUTO_INCREMENT,
  name varchar(128),
  PRIMARY KEY (id)
);

-- This is a join table joining meals to patrons
-- patrons buy many meals
-- meals can be bought by many patrons
CREATE TABLE purchases (
  id INT AUTO_INCREMENT,
  patron_id INT,
  meal_id INT,
  PRIMARY KEY (id)
);




INSERT INTO meals (chef_id, price, name, description, image_url) VALUES (1, 5, "Meal A", "A great meal for A", "http://localhost:3000/images/food_a.png");

INSERT INTO meals (price, name, description, image_url) VALUES (5, "Meal B", "A great meal for B", "http://localhost:3000/images/food_b.png");

INSERT INTO chefs (id, name) VALUES (1, "Michael Ghen");

INSERT INTO patrons (id, name) VALUES (1, "Michael Vy");

INSERT INTO purchases (patron_id, meal_id) VALUES (1, 1);