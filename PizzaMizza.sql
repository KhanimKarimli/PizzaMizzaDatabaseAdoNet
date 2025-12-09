CREATE DATABASE PizzaMizzaDB;
drop database PizzaMizzaDB
USE PizzaMizzaDB;


CREATE TABLE Ingredients(
Id INT PRIMARY KEY IDENTITY,
Name VARCHAR(30) NOT NULL
)

INSERT INTO Ingredients VALUES
('Pizza sousu'),
('Qauda pendiri'),
('Pomidor'),
('Bolqar biberi'),
('Qara zeytun'),
('Salyami(halal)'),
('Mal etinden vetchina(halal)'),
('Dana basdirmasi'),
('Bolqar biberi'),
('Toyuq filesi'),
('Qirmizi sogan'),
('Ispanaq'),
('Gauda pendiri'),
('Gobelek'),
('Konservlesdirilmis ton baligi'),
('Qargidali'),
('Pepperoni biberi'),
('Barbekyu sousu'),
('Sosiska'),
('Kartof fri'),
('Duzlu xiyar'),
('Pepperoni kolbasa'),
('Sezar sous'),
('Marina edilmish toyuq'),
('Kahi'),
('Parmesan pendiri'),
('Ag pendir'),
('Oreqano'),
('Qaymaqli sous'),
('Mozarella pendiri'),
('Buffalo mozarella pendiri'),
('Riccota pendiri'),
('Halapenyo biberi'),
('Toyuq naggetsleri'),
('Ananas')


SELECT * FROM Ingredients;

CREATE TABLE Pizzas(
Id INT PRIMARY KEY IDENTITY,
Name VARCHAR(30) NOT NULL,
Size NVARCHAR(15) NOT NULL,
Price DECIMAL
)

CREATE TABLE Sizes(
Id INT PRIMARY KEY IDENTITY,
Name VARCHAR(30) NOT NULL
)

CREATE TABLE Prices(
Id INT PRIMARY KEY IDENTITY,
PizzaId INT FOREIGN KEY REFERENCES Pizzas(Id),
SizeId INT FOREIGN KEY REFERENCES Sizes(Id)
)


INSERT INTO Pizzas VALUES
('Marqarita','kicik-25 sm',8.90),
('Marqarita','orta-30 sm',12.90),
('Marqarita','boyuk-35 sm',16.90),
('Vegeterian','kicik-25 sm',8.90),
('Vegeterian','orta-30 sm',12.90),
('Vegeterian','boyuk-35 sm',16.90),
('Fungi Kon Pollo','kicik-25 sm',10.90),
('Fungi Kon Pollo','orta-30 sm',15.90),
('Fungi Kon Pollo','boyuk-35 sm',20.90),
('Havay','kicik-25 sm',10.90),
('Havay','orta-30 sm',15.90),
('Havay','boyuk-35 sm',20.90),
('Texas','kicik-25 sm',10.90),
('Texas','orta-30 sm',15.90),
('Texas','boyuk-35 sm',20.90),
('Klassiko','kicik-25 sm',10.90),
('Klassiko','orta-30 sm',15.90),
('Klassiko','boyuk-35 sm',20.90),
('Salyami','kicik-25 sm',11.90),
('Salyami','orta-30 sm',16.90),
('Salyami','boyuk-35 sm',22.90),
('Mista','kicik-25 sm',11.90),
('Mista','orta-30 sm',16.90),
('Mista','boyuk-35 sm',22.90),
('Chiken Strips','kicik-25 sm',11.90),
('Chiken Strips','orta-30 sm',16.90),
('Chiken Strips','boyuk-35 sm',22.90),
('Meksikana','kicik-25 sm',11.90),
('Meksikana','orta-30 sm',16.90),
('Meksikana','boyuk-35 sm',22.90),
('Volkano','kicik-25 sm',11.90),
('Volkano','orta-30 sm',16.90),
('Volkano','boyuk-35 sm',22.90),
('Besh pendir','kicik-25 sm',11.90),
('Besh pendir','orta-30 sm',16.90),
('Besh pendir','boyuk-35 sm',22.90),
('Dord fesil','orta-30 sm',18.90),
('Sezar','kicik-25 sm',12.90),
('Sezar','orta-30 sm',17.90),
('Sezar','boyuk-35 sm',24.90),
('Pepperoni','kicik-25 sm',12.90),
('Pepperoni','orta-30 sm',17.90),
('Pepperoni','boyuk-35 sm',24.90),
('Amerikana','kicik-25 sm',12.90),
('Amerikana','orta-30 sm',17.90),
('Amerikana','boyuk-35 sm',24.90),
('Delyuks','kicik-25 sm',12.90),
('Delyuks','orta-30 sm',17.90),
('Delyuks','boyuk-35 sm',24.90),
('Tonno','kicik-25 sm',12.90),
('Tonno','orta-30 sm',17.90),
('Tonno','boyuk-35 sm',24.90),
('Mit Lovers','kicik-25 sm',13.90),
('Mit Lovers','orta-30 sm',19.90),
('Mit Lovers','boyuk-35 sm',26.90),
('Meqa Miks','kicik-25 sm',13.90),
('Meqa Miks','orta-30 sm',19.90),
('Meqa Miks','boyuk-35 sm',26.90)

SELECT * FROM Pizzas;

CREATE TABLE PizzaIngredients(
Id INT PRIMARY KEY IDENTITY,
PizzaId INT FOREIGN KEY REFERENCES Pizzalar(Id),
IngredientId INT FOREIGN KEY REFERENCES Ýnqridentler(Id)
)

INSERT INTO PizzaIngredients VALUES
(1,1),
(1,13),
(1,30),
(1,3),
(2,1),
(2,13),
(2,30),
(2,3),
(3,1),
(3,13),
(3,30),
(3,3),
(4,1),
(4,13),
(4,12),
(4,11),
(4,9),
(4,3),
(4,14),
(5,1),
(5,13),
(5,12),
(5,11),
(5,9),
(5,3),
(5,14),
(6,1),
(6,13),
(6,12),
(6,11),
(6,9),
(6,3),
(6,14),
(7,1),
(7,13),
(7,14),
(7,10),
(8,1),
(8,13),
(8,14),
(8,10),
(9,1),
(9,13),
(9,14),
(9,10),
(10,1),
(10,13),
(10,3),
(10,24),
(10,35),
(11,1),
(11,13),
(11,3),
(11,24),
(11,35),
(12,1),
(12,13),
(12,3),
(12,24),
(12,35)


SELECT * FROM PizzaIngredients

SELECT I.Name FROM Pizzas P
JOIN PizzaIngredients PI
ON P.Id=PI.PizzaId
JOIN Ingredients I
ON I.Id=PI.IngredientId
WHERE P.Name='Marqarita' AND Size='kicik-25 sm'



CREATE TABLE Salads(
Id INT PRIMARY KEY IDENTITY,
Name VARCHAR(30) NOT NULL,
Size VARCHAR(20),
Price DECIMAL
)

CREATE TABLE SalatIngredients(
Id INT PRIMARY KEY IDENTITY,
SalatId INT FOREIGN KEY REFERENCES Salads(Id),
IngredientId INT FOREIGN KEY REFERENCES Ingredients(Id)
)

CREATE TABLE Pastas(
Id INT PRIMARY KEY IDENTITY,
Name VARCHAR(30) NOT NULL,
Price DECIMAL
)

CREATE TABLE PastaIngredients(
Id INT PRIMARY KEY IDENTITY,
PastaId INT FOREIGN KEY REFERENCES Pastas(Id),
IngredientId INT FOREIGN KEY REFERENCES Ingredients(Id)
)

CREATE TABLE Soups(
Id INT PRIMARY KEY IDENTITY,
Name VARCHAR(30) NOT NULL,
Size VARCHAR(20),
Price DECIMAL
)

CREATE TABLE SoupIngredient(
Id INT PRIMARY KEY IDENTITY,
ShorbaId INT FOREIGN KEY REFERENCES Soups(Id),
IngredientId INT FOREIGN KEY REFERENCES Ingredients(Id)
)

CREATE TABLE Lunchs(
Id INT PRIMARY KEY IDENTITY,
Name VARCHAR(30) NOT NULL,
Price DECIMAL
)

CREATE TABLE LunchIngredients(
Id INT PRIMARY KEY IDENTITY,
QelyanaltiId INT FOREIGN KEY REFERENCES Lunchs(Id),
IngredientId INT FOREIGN KEY REFERENCES Ingredients(Id)
)

CREATE TABLE Sous(
Id INT PRIMARY KEY IDENTITY,
Name VARCHAR(30) NOT NULL,
Price DECIMAL
)

CREATE TABLE Deserts(
Id INT PRIMARY KEY IDENTITY,
Name VARCHAR(30) NOT NULL,
Price DECIMAL
)

CREATE TABLE Drinks(
Id INT PRIMARY KEY IDENTITY,
Name VARCHAR(30) NOT NULL,
Size VARCHAR(20),
Price DECIMAL
)


CREATE TABLE ComboMenus(
Id INT PRIMARY KEY IDENTITY,
Name VARCHAR(30) NOT NULL,
DrinkId INT FOREIGN KEY REFERENCES Drinks(Id),
PizzaId INT FOREIGN KEY REFERENCES Pizzas(Id),
SoupId INT FOREIGN KEY REFERENCES Soups(Id),
LunchId INT FOREIGN KEY REFERENCES Lunchs(Id),
PastaId INT FOREIGN KEY REFERENCES Pastas(Id),
DesertId INT FOREIGN KEY REFERENCES Deserts(Id),
SousId INT FOREIGN KEY REFERENCES Souslar(Id)
)