--MySQL
CREATE DATABASE IF NOT EXISTS pipeline_db;

CREATE TABLE IF NOT EXISTS pipeline_db.artists (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(255),
    second_name VARCHAR(255),
    surname VARCHAR(255),
    artist_id INT,
    link VARCHAR(255),
    extraction_date DATETIME NOT NULL,
    primary key (id)
) ENGINE=INNODB;

--SQL Server
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'pipeline_db') 
CREATE DATABASE pipeline_db; 
GO

USE pipeline_db; 
GO

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'artists') 
CREATE TABLE artists ( 
    id INT IDENTITY(1,1) 
    PRIMARY KEY, 
    first_name VARCHAR(255), 
    second_name VARCHAR(255), 
    surname VARCHAR(255), 
    artist_id INT, 
    link VARCHAR(255), 
    extraction_date DATETIME NOT NULL ); 
    GO




