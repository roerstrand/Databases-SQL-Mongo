CREATE DATABASE Filmer;
USE Filmer;

CREATE TABLE Genre(
    genreId INT PRIMARY KEY IDENTITY(1,1),
    genreNamn VARCHAR(50)
);

INSERT INTO Genre (genreNamn) VALUES
('Drama'),
('Thriller'),
('Fantasy'),
('Science fiction'),
('Deckare'),
('Romance'),
('Biografi'),
('Självbiografi'),
('Historia'),
('Reseskildring'),
('Facklitteratur'),
('Komedi'),
('Action'),
('Musikal'),
('Äventyr'),
('Poesi'),
('Lyrik'),
('Experimentell prosa'),
('Dokumentär'),
('Memoar'),
('Reportage'),
('True Crime'),
('Barnbok'),
('Ungdomsbok'),
('Saga'),
('Skräck'),
('Mystery'),
('Kärleksroman'),
('Feelgood');

CREATE TABLE Regissor(
    regissorId INT PRIMARY KEY IDENTITY(1,1),
    regissorNamn VARCHAR(100),
    regissorFodd DATE,
    regissorNationalitet VARCHAR(50)
);

INSERT INTO Regissor (regissorNamn, regissorFodd, regissorNationalitet) VALUES
('Steven Spielberg', '1946-12-18', 'USA'),
('Greta Gerwig', '1983-08-04', 'USA'),
('Ingmar Bergman', '1918-07-14', 'Sverige'),
('Christopher Nolan', '1970-07-30', 'Storbritannien'),
('Bong Joon-ho', '1969-09-14', 'Sydkorea');

CREATE TABLE Skadespelare(
    skadespelareId INT PRIMARY KEY IDENTITY(1,1),
    skadespelareNamn VARCHAR(100),
    skadespelareFodd DATE,
    skadespelareNationalitet VARCHAR(50)
);

INSERT INTO Skadespelare (skadespelareNamn, skadespelareFodd, skadespelareNationalitet) VALUES
('Leonardo DiCaprio', '1974-11-11', 'USA'),
('Natalie Portman', '1981-06-09', 'Israel/USA'),
('Morgan Freeman', '1937-06-01', 'USA'),
('Alicia Vikander', '1988-10-03', 'Sverige'),
('Song Kang-ho', '1967-01-17', 'Sydkorea');

CREATE TABLE Film(
    filmId INT PRIMARY KEY IDENTITY(1,1),
    filmGenreId INT FOREIGN KEY REFERENCES Genre(genreId),
    filmRegissorId INT FOREIGN KEY REFERENCES Regissor(regissorId),
    filmTitel VARCHAR(100),
    filmAr INT,
    filmBudget DECIMAL(15,2)
);

INSERT INTO Film (filmGenreId, filmRegissorId, filmTitel, filmAr, filmBudget) VALUES
(1, 3, 'Det sjunde inseglet', 1957, 2000000),
(2, 4, 'Inception', 2010, 160000000),
(13, 1, 'Jurassic Park', 1993, 63000000),
(27, 2, 'Barbie', 2023, 145000000),
(26, 5, 'Parasite', 2019, 11000000);

CREATE TABLE filmSkadespelare(
    filmSkadespelareId INT PRIMARY KEY IDENTITY(1,1),
    filmSkadespelareFid INT FOREIGN KEY REFERENCES Film(filmId),
    filmSkadespelareSid INT FOREIGN KEY REFERENCES Skadespelare(skadespelareId)
);

INSERT INTO FilmSkadespelare (filmSkadespelareFid, filmSkadespelareSid) VALUES
(1, 3),
(2, 1), 
(3, 3),  
(4, 2), 
(5, 5);

