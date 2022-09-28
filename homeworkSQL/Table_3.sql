USE homework;
CREATE TABLE pupils(
pupils_ID INT AUTO_INCREMENT PRIMARY KEY,
last_name VARCHAR(20) NOT NULL,
first_name VARCHAR(15) NOT NULL,
birth_date DATE,
phone_number VARCHAR(15),
class CHAR(3),
av_grade DEC(2,1),
UNIQUE(first_name, last_name, phone_number));

INSERT INTO pupils(last_name, first_name, birth_date, phone_number, 
class, av_grade) VALUES
('Anisimovich', 'Hanna', '2014-01-15', '8(025)1237528', '3A', 7.3),
('Batuk', 'Aleksey', '2013-10-28', '+375(29)4562583', '3A', 6.8),
('Gurish', 'Ivan', '2013-09-30', '375(29)5871541', '3B', 8.1),
('Delendic', 'Mark', '2014-05-12', NULL, '3G', 7.5),
('Dudko', 'Alisa', '2014-05-14', '8(029)6355512','3G',7.5),
('Korzun', 'Zahar', '2013-10-20', '+375335681750', '3B', 7.2),
('Mitsyra', 'Anastasia', '2013-07-25', '8029-6654852', NULL, NULL),
('Saakyan', 'Arsen', NULL, '(033)4213524)', '3A', 9.1),
('Tereshkov', 'Lev', '2014-02-13', '(033)5554411', '3B', 8.7);
 
Select * From pupils;
DESCRIBE pupils;

