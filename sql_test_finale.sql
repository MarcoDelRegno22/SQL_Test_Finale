-- (1). Creo il database ------------------------------------------------------------------------------------------------------

CREATE DATABASE sql_test_finale;

USE sql_test_finale;

CREATE TABLE category(
	category_name VARCHAR (30)
    , category_id INT PRIMARY KEY UNIQUE
    );

CREATE TABLE product(
	product_name VARCHAR (30)
    , list_price DECIMAL (10,2)
    , category_name VARCHAR (30)
    , product_id INT PRIMARY KEY UNIQUE
    , category_id INT
    , FOREIGN KEY (category_id) REFERENCES category(category_id)
    );

CREATE TABLE region(
	region_name VARCHAR (30)
    , city_name VARCHAR (30)
    , region_id INT PRIMARY KEY UNIQUE
    , product_id INT
    , FOREIGN KEY (product_id) REFERENCES product(product_id)
    );

CREATE TABLE sales(
	order_date DATE
    , order_line INT
    , quantity INT
    , sales_id INT PRIMARY KEY UNIQUE
    , product_id INT
    , region_id INT
    , FOREIGN KEY (product_id) REFERENCES product(product_id)
    , FOREIGN KEY (region_id) REFERENCES region(region_id)
    );


-- (2). Inserisco i dati nel database ---------------------------------------------------------------------------------------------------------

INSERT INTO category(
	category_name
	, category_id)
VALUES
('Action Figures', 1),
('Dolls', 2),
('Board Games', 3),
('Puzzles', 4),
('Building Blocks', 5),
('Stuffed Animals', 6),
('Outdoor Toys', 7),
('Educational Toys', 8);


INSERT INTO product(
	product_name
    , list_price
    , category_name
    , product_id
    , category_id
    ) 
VALUES
('Superhero Action Figure', 19.99, 'Action Figures', 1, 1),
('Barbie Doll', 14.99, 'Dolls', 2, 2),
('Monopoly', 25.99, 'Board Games', 3, 3),
('Jigsaw Puzzle', 9.99, 'Puzzles', 4, 4),
('LEGO Set', 39.99, 'Building Blocks', 5, 5),
('Teddy Bear', 15.99, 'Stuffed Animals', 6, 6),
('Frisbee', 8.99, 'Outdoor Toys', 7, 7),
('Science Kit', 29.99, 'Educational Toys', 8, 8),
('Racing Car Set', 22.99, 'Action Figures', 9, 1),
('Dollhouse', 49.99, 'Dolls', 10, 2),
('Clue', 19.99, 'Board Games', 11, 3),
('Memory Match', 7.99, 'Puzzles', 12, 4),
('Robot Kit', 29.99, 'Building Blocks', 13, 5),
('Stuffed Elephant', 18.99, 'Stuffed Animals', 14, 6),
('Basketball Set', 24.99, 'Outdoor Toys', 15, 7),
('Space Explorer Kit', 34.99, 'Educational Toys', 16, 8),
('Transformers Toy', 24.99, 'Action Figures', 17, 1),
('Cabbage Patch Doll', 19.99, 'Dolls', 18, 2),
('Scrabble', 21.99, 'Board Games', 19, 3),
('Puzzle Cube', 11.99, 'Puzzles', 20, 4),
('Train Set', 39.99, 'Building Blocks', 21, 5),
('Plush Lion', 17.99, 'Stuffed Animals', 22, 6),
('Soccer Ball', 13.99, 'Outdoor Toys', 23, 7),
('STEM Learning Kit', 27.99, 'Educational Toys', 24, 8),
('Superhero Toy Set', 29.99, 'Action Figures', 25, 1),
('Baby Doll', 16.99, 'Dolls', 26, 2),
('Ticket to Ride', 42.99, 'Board Games', 27, 3),
('Sudoku Puzzle', 6.99, 'Puzzles', 28, 4),
('Wooden Blocks Set', 32.99, 'Building Blocks', 29, 5),
('Stuffed Dog', 14.99, 'Stuffed Animals', 30, 6),
('Football', 19.99, 'Outdoor Toys', 31, 7),
('Chemistry Kit', 39.99, 'Educational Toys', 32, 8),
('Ninja Action Figure', 21.99, 'Action Figures', 33, 1),
('Frozen Doll Set', 28.99, 'Dolls', 34, 2),
('Monopoly Jr.', 17.99, 'Board Games', 35, 3),
('3D Puzzle', 12.99, 'Puzzles', 36, 4),
('Pirate Ship Toy', 42.99, 'Building Blocks', 37, 5),
('Plush Bear', 16.99, 'Stuffed Animals', 38, 6),
('Outdoor Volleyball Set', 22.99, 'Outdoor Toys', 39, 7),
('Geography Learning Kit', 26.99, 'Educational Toys', 40, 8),
('Pirate Action Figure', 18.99, 'Action Figures', 41, 1),
('Doll Stroller', 24.99, 'Dolls', 42, 2),
('Risk', 34.99, 'Board Games', 43, 3),
('Jigsaw Puzzle 1000 Pieces', 18.99, 'Puzzles', 44, 4),
('City Builder Set', 49.99, 'Building Blocks', 45, 5),
('Stuffed Cat', 13.99, 'Stuffed Animals', 46, 6),
('Beach Ball', 7.99, 'Outdoor Toys', 47, 7),
('Math Puzzle Kit', 25.99, 'Educational Toys', 48, 8),
('Dragon Action Figure', 21.99, 'Action Figures', 49, 1),
('Dollhouse Furniture Set', 19.99, 'Dolls', 50, 2);


INSERT INTO region(
	region_name
    , city_name
    , region_id
    , product_id
    ) 
VALUES
('North America', 'New York', 1, 1),
('North America', 'Los Angeles', 2, 2),
('Europe', 'London', 3, 3),
('Europe', 'Paris', 4, 4),
('Asia', 'Tokyo', 5, 5),
('Asia', 'Seoul', 6, 6),
('South America', 'São Paulo', 7, 7),
('South America', 'Buenos Aires', 8, 8),
('Africa', 'Cairo', 9, 9),
('Australia', 'Sydney', 10, 10);

INSERT INTO sales(
	order_date
    ,order_line
    ,quantity
    ,sales_id
    ,product_id
	,region_id
)
VALUES
('2020-01-15', 1, 2, 1, 1, 1),
('2020-02-10', 1, 3, 2, 2, 2),
('2020-03-25', 1, 1, 3, 3, 3),
('2020-04-12', 1, 5, 4, 4, 4),
('2020-05-18', 1, 4, 5, 5, 5),
('2020-06-20', 1, 6, 6, 6, 6),
('2020-07-14', 1, 8, 7, 7, 7),
('2020-08-01', 1, 10, 8, 8, 8),
('2020-09-10', 1, 3, 9, 9, 9),
('2020-10-22', 1, 2, 10, 10, 10),
('2021-01-11', 1, 1, 11, 1, 1),
('2021-02-15', 1, 7, 12, 2, 2),
('2021-03-05', 1, 3, 13, 3, 3),
('2021-04-25', 1, 6, 14, 4, 4),
('2021-05-19', 1, 4, 15, 5, 5),
('2022-01-11', 1, 5, 16, 6, 6),
('2022-03-12', 1, 2, 17, 7, 7),
('2022-05-08', 1, 8, 18, 8, 8),
('2022-07-16', 1, 3, 19, 9, 9),
('2022-10-22', 1, 7, 20, 10, 10),
('2023-02-15', 1, 6, 21, 1, 1),
('2023-04-05', 1, 4, 22, 2, 2),
('2023-06-25', 1, 9, 23, 3, 3),
('2023-08-19', 1, 3, 24, 4, 4),
('2023-09-30', 1, 6, 25, 5, 5),
('2023-12-15', 1, 7, 26, 6, 6);

-- (3) Interrogo il Database ------------------------------------------------------------------------------------------------------------

-- 1. Verificare che i campi definiti come PK siano univoci.
SELECT
	*
FROM
product;
-- ottengo 50 righe
SELECT 
    product_id AS CodiceProdotto
	, COUNT(*)
FROM 
    product
GROUP BY 
    product_id
HAVING 
    COUNT(*) >= 1;


-- 2. Esporre l’elenco dei soli prodotti venduti e per ognuno di questi il fatturato totale per anno.
select
	p.product_name as NomeProdotto
    , YEAR(s.order_date) as Anno
    , SUM(s.quantity * p.list_price) as FatturatoTotale
FROM
	sales as s
JOIN
	product as p
ON
	s.product_id = p.product_id
GROUP BY
	p.product_name
    , YEAR(s.order_date)
ORDER BY
	p.product_name;


-- 3. Esporre il fatturato totale per stato per anno. Ordina il risultato per data e per fatturato decrescente.
SELECT
	region_name as Continente
    , YEAR(s.order_date) as Anno
    , SUM(s.quantity * p.list_price) as FatturatoTotale
FROM
	region as r
JOIN
	sales as s
ON
	r.region_id = s.region_id
JOIN
	product as p
ON
	s.product_id = p.product_id
GROUP BY
	r.region_name
    , YEAR(s.order_date)
ORDER BY
	r.region_name;

 
-- 4. Rispondere alla seguente domanda: qual è la categoria di articoli maggiormente richiesta dal mercato?
SELECT 
    c.category_name AS CategoriaGiochi
    , SUM(s.quantity) AS QuantitaTotale
FROM 
    sales AS s
JOIN 
    product p
ON
	s.product_id = p.product_id
JOIN 
    category c
ON
	p.category_id = c.category_id
GROUP BY 
    c.category_name
ORDER BY 
    total_quantity DESC
LIMIT 1;


-- 5. Rispondere alla seguente domanda: quali sono, se ci sono, i prodotti invenduti? Proponi due approcci risolutivi differenti.
-- Approccio con LEFT JOIN
SELECT 
    p.product_name as NomeProdotto
    , p.product_id as CodiceProdotto
FROM 
    product AS p
LEFT JOIN 
    sales AS s
ON
	p.product_id = s.product_id
WHERE 
    s.product_id IS NULL;
    
-- Approccio con SUBQUERY
SELECT 
    product_name as NomeProdotto
    , product_id as CodiceProdotto
FROM 
    product
WHERE 
    product_id NOT IN (
        SELECT product_id 
        FROM sales
    );
-- 6. Esporre l’elenco dei prodotti con la rispettiva ultima data di vendita (la data di vendita più recente).
SELECT 
    p.product_name as NomeProdotto
    , MAX(s.order_date) AS UltimaDataVendita
FROM 
    sales AS s
JOIN 
    product AS p
ON 
	s.product_id = p.product_id
GROUP BY 
    p.product_name
ORDER BY 
    UltimaDataVendita DESC;