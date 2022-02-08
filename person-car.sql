CREATE TABLE car
(
  id BIGSERIAL PRIMARY KEY,
  make VARCHAR(50) NOT NULL,
  model VARCHAR(50) NOT NULL,
  price NUMERIC(8, 2) NOT NULL
);

CREATE TABLE person
(
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  gender VARCHAR(50) NOT NULL CHECK(gender IN('Female', 'Male')),
  date_of_birth DATE NOT NULL,
  country_of_birth VARCHAR(50) NOT NULL,
  email VARCHAR(50) UNIQUE,
  car_id BIGINT REFERENCES car
  (id) UNIQUE,
);

INSERT INTO car
  (id, make, model, price)
VALUES
  (1, 'Mercedes-Benz', 'R-Class', 59202);
INSERT INTO car
  (id, make, model, price)
VALUES
  (2, 'Jeep', 'Cherokee', 16513);

INSERT INTO person
  (id, first_name, last_name, gender, date_of_birth, country_of_birth, email, car_Id)
VALUES
  (1, 'Gearard', 'Barritt', 'Female', '2000-10-10', 'Brazil', 'gbarritt0@businessweek.com', 1);
INSERT INTO person
  (id, first_name, last_name, gender, date_of_birth, country_of_birth, email, car_id)
VALUES
  (2, 'Bernadene', 'Albisser', 'Female', '1995-12-20', 'Brazil', 'balbisser1@feedburner.com', 2);
INSERT INTO person
  (id, first_name, last_name, gender, date_of_birth, country_of_birth, email)
VALUES
  (3, 'Joice', 'Yurivtsev', 'Female', '1997-06-28', 'Russia', 'jyurivtsev2@fda.gov');
