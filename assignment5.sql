CREATE TABLE Country (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(50),
    Population INT,
    Area DECIMAL(10, 2)
);

CREATE TABLE Persons (
    Id INT PRIMARY KEY,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Population INT,
    Rating DECIMAL(3, 2),
    Country_Id INT,
    Country_name VARCHAR(50)
);


INSERT INTO Country (Id, Country_name, Population, Area) VALUES
(1, 'USA', 331000000, 9834000),
(2, 'Canada', 38000000, 9985000),
(3, 'UK', 67000000, 243610),
(4, 'Australia', 25600000, 7692000),
(5, 'India', 1380000000, 3287000),
(6, 'China', 1440000000, 9597000),
(7, 'Japan', 125800000, 377975),
(8, 'Brazil', 212600000, 8516000),
(9, 'Germany', 83020000, 357386),
(10, 'France', 67000000, 551695);

INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'John', 'Doe', 50000, 4.5, 1, 'USA'),
(2, 'Jane', 'Smith', 150000, 4.8, 2, 'Canada'),
(3, 'Mike', 'Brown', 20000, 4.0, 3, 'UK'),
(4, 'Emma', 'Wilson', 60000, 4.2, 4, 'Australia'),
(5, 'Liam', 'Taylor', 80000, 3.9, 5, 'India'),
(6, 'Olivia', 'White', 50000, 4.1, 6, 'China'),
(7, 'Ava', 'Thomas', 30000, 4.3, 7, 'Japan'),
(8, 'William', 'Lee', 40000, 4.9, 8, 'Brazil'),
(9, 'Sophia', 'Green', 20000, 3.7, 9, 'Germany'),
(10, 'James', 'Clark', 100000, 3.6, 10, 'France'),
(13, 'Carol', 'Smith', 25000, 4.5, 1, 'USA'),
(14, 'David', 'Johnson', 40000, 4.0, 2, 'Canada'),
(15, 'Eve', 'Taylor', 20000, 4.2, 2, 'Canada'),
(16, 'Frank', 'Williams', 35000, 3.8, 3, 'UK'),
(17, 'Grace', 'Brown', 27000, 4.3, 3, 'UK'),
(18, 'Hannah', 'Clark', 45000, 4.1, 1, 'USA'),
(19, 'Ian', 'Lewis', 42000, 4.4, 2, 'Canada'),
(20, 'Jack', 'Walker', 38000, 3.7, 3, 'UK');

-- Q1
SELECT left(Country_name,3) AS Country FROM Country;

-- Q2
SELECT concat(Fname,' ',Lname) As Name From persons;

-- Q3
SELECT count(Distinct country_name) As Count From persons;

-- Q4

SELECT country_name, population FROM Country WHERE population=(SELECT max(population) FROM country) ;
SELECT * FROM Persons;
-- Q5
SELECT concat(Fname,' ',Lname) AS NAME,population FROM persons WHERE population = (SELECT min(population) FROM persons);

-- Q6
INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) 
VALUES 
(11, 'Chris', NULL, 70000, 4.3, 5, 'India'),
(12, 'Taylor', NULL, 50000, 3.8, 6, 'China');

SELECT count(Lname) FROM Persons;

-- Q7
SELECT count(id) FROM Persons;

-- Q8
SELECT * FROM country LIMIT 3;

-- Q9
SELECT * FROM country order by rand() LIMIT 3;

-- Q10
SELECT * FROM persons order by rating desc;

-- Q11
SELECT country_name, sum(population) AS population FROM persons GROUP BY country_name;

-- Q12
SELECT country_name, sum(population) AS population FROM persons GROUP BY Country_name HAVING population > 50000;

-- Q13
SELECT country_name, count(*) AS name, avg(rating) AS aveg FROM persons  GROUP BY country_name HAVING name > 2 ORDER BY aveg;

SELECT * FROM persons;
 