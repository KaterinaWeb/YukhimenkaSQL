USE homework;
CREATE TABLE writers(
writers_ID INT AUTO_INCREMENT PRIMARY KEY, 
first_name VARCHAR(20) NOT NULL, 
last_name VARCHAR(30), 
nationality VARCHAR(20), 
birth_year INT, 
dead_year INT, 
work VARCHAR(50) NOT NULL UNIQUE);

INSERT INTO writers (first_name, last_name, nationality, birth_year,
dead_year, work) VALUES
('Homer', NULL, 'Greek', NULL, NULL, 'Odyssey'),
('Sun', 'Tzu', 'Chinese', NULL, NULL, 'The Art of War'),
('Dante', 'Alighieri', 'Italian', 1265, 1321,'Divine Comedy'), 
('William', 'Shakespeare', 'English', 1564, 1616,'Romeo and Juliet'),
('Jane', 'Austen', 'English', 1775, 1817, 'Pride and Prejudice'),
('Alexandre', 'Dumas', 'French', 1802, 1870, 'The Three Musketeers'),
('Charles', 'Dickens', 'English', 1812, 1870, 'Oliver Twist'),
('Jules', 'Verne', 'French', 1828, 1905,'Journey to the Center of the Earth'),
('Mark', 'Twain', 'American', 1835, 1910, 'The Adventures of Tom Sawyer'),
('Jack', 'London', 'American', 1876, 1916, 'The Call of the Wild');

Select * From writers;
DESCRIBE writers;




