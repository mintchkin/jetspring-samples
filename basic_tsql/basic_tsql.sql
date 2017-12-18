DROP TABLE Users;
DROP TABLE Posts;
GO

--Begin Code

CREATE TABLE Users(
	Id INT PRIMARY KEY NOT NULL,
	Name VARCHAR(20) NOT NULL,
	Age INT NOT NULL,
	Gender VARCHAR (10) NOT NULL
)

CREATE TABLE Posts(
	Id INT PRIMARY KEY NOT NULL,
	Timestamp DATETIME NOT NULL,
	Content TEXT NOT NULL,
	UserId INT NOT NULL
)

--Add New Users
INSERT INTO Users VALUES (1, 'Billy', 10, 'Male');
INSERT INTO Users VALUES (2, 'Gary', 16, 'Male');
INSERT INTO Users VALUES (3, 'Beatrice', 99, 'Female');
INSERT INTO Users VALUES (4, 'Zoltar 3000', 8888, 'Other');

--Select all adult users
SELECT * FROM Users
	WHERE Age >= 18;

--Update Zoltar's age and gender
UPDATE Users
	SET Age = 8889, Gender = 'Alien'
	WHERE Id = 4;

--Delete all users under 12
DELETE FROM Users
	WHERE Age < 12;

--Add Posts
INSERT INTO Posts VALUES (1, '1776-12-05 15:05:02', 'I made my first post!', 3);
INSERT INTO Posts VALUES (2, '2004-01-30 04:01:01', 'This is a great service', 3);
INSERT INTO Posts VALUES (3, '2004-02-12 05:02:34', 'ZOLTAR DESTROY', 4);

--Get all the posts by Beatrice
SELECT U.Name, P.Timestamp, P.Content
	FROM Users U INNER JOIN Posts P ON U.Id = P.UserId
	WHERE U.Name = 'Beatrice'