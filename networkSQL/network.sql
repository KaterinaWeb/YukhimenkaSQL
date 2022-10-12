CREATE DATABASE network;
USE network;

CREATE TABLE sex_variaty(
    id_sex INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    definition VARCHAR(30)
);

CREATE TABLE users(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(20) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    birthday DATE,
    sex INT NOT NULL,
    login VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL CHECK(LENGTH(password)>=6),
    FOREIGN KEY (sex) REFERENCES sex_variaty(id_sex)
);

CREATE TABLE contact_info(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    phone_num VARCHAR(20),
    email VARCHAR(50),
    country VARCHAR(15),
    city VARCHAR(30),
    UNIQUE(user_id, phone_num),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE status(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    status VARCHAR(20)
);

CREATE TABLE friends(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    friend_nik VARCHAR(30) UNIQUE
);

CREATE TABLE user_has_friend(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    friend_id INT NOT NULL,
    id_status INT NOT NULL DEFAULT 1,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (friend_id) REFERENCES friends(id),
    FOREIGN KEY (id_status) REFERENCES status(id)
);

CREATE TABLE updates(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    type VARCHAR(15) NOT NULL,
    title VARCHAR(200) NOT NULL,
    updates BLOB NOT NULL,
    created DATE,
    user_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE music(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    m_name VARCHAR(20),
    m_singer VARCHAR(30),
    m_format VARCHAR(20),
    created DATE,
    user_id INT NOT NULL,
    file BLOB,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE comments(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    update_id INT NOT NULL,
    comment TINYTEXT,
    created DATE,
    user_id INT NOT NULL,
    FOREIGN KEY (update_id) REFERENCES updates(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO sex_variaty (definition) 
VALUES ('man'), ('woman'), ('agender'), ('bigender'), 
('intersex'), ('transgender'), ('neither');

INSERT INTO status (status) 
VALUES('follower'), ('friend'), ('relative'), ('hater');


INSERT INTO users 
(firstname, lastname, birthday, sex, login, password)
VALUES ('Elon', 'Musk', '1971-06-28', 1, 'realmusk71', 
'4e521a8dfd32766a4fb9b0272c16cb78'),
('Jeff', 'Bezos', '1964-01-12', 1, 'iambezos', 
'a7d454ccf90bd362ed372f8af225443b'),
('Oprah', 'Winfrey', '1954-01-29', 2, 'queen1954', 
'f8bdf88ddec1cb9a63198fa8653c240a'),
('Vasiliy', 'Pypkin', '1994-01-01', 6, 'slavaukraine', 
'653524e4bda019443abef22e0c5f9a96'),
('Mark', 'Zuckerberg', '1984-05-14', 7, 'facebookmakeryo-ho-ho', 
'1388b2e216f42118cf32f3d61c915220'),
('Nancy', 'Pelosi', '1940-03-26', 2, 'speakeriam', 
'6d3e4be40569d5d74b0730bdcd5112ea');

INSERT INTO contact_info(user_id, phone_num, email, country, city) 
VALUES 
(1, '+27 11 309 4700', 'realmusk@yahoo.com', 'South Africa', 'Pretoria'),
(2, '+1 281 300 50 00', 'iambezos@inbox.com', 'USA', 'Houston'),
(3, '+1-(312)-555-424', 'oprah_show@yahoo.com', 'USA', 'Chicago'),
(4, '+380 66 743 5646', NULL, 'Ukraine', NULL),
(5, NULL, NULL, 'USA', 'New York'),
(6, '+1 285 200 10 60', 'pelosi40@mail.com', 'USA', NULL);

INSERT INTO friends(friend_nik) 
VALUES ('liz_zar'), ('kuzmanna'), ('ins.tamir'), ('yudzin_s'),
 ('oprah_'), ('bezosmen');

INSERT INTO user_has_friend (user_id, friend_id, id_status)
VALUES 
(1, 2, 2), (1, 4, 2), (1, 6, 4), (2, 1, 2), (2, 2, 2), (2, 6, 1), 
(3, 1, 1), (3, 3, 3), (4, 2, 3), (5, 4, 2), (6, 5, 4);

INSERT INTO updates(type, title, updates, created, user_id) VALUES
('photo', 'My cat', "cat1.jpg", '2022-09-10', 1),
('news', 'Hurricane Julia hits Nicaragua with torrential rainfall', 'MEXICO CITY -- Hurricane Julia hit Nicaraguas central Caribbean coast on Sunday after lashing Colombias San Andres island, and a weakened storm was expected to emerge over the Pacific. 
Julia hit as a Category 1 hurricane early Sunday with maximum sustained winds of 85 mph (140 kph), though its winds had dipped to 70 mph (110 kph) by late morning as it pushed across Nicaragua with heavy rains. 
The U.S. National Hurricane Center said Julia was centered about 65 miles (105 kilometers) east-northeast of Managua, the capital, and was moving west at 15 mph (24 kph).', 
'2022-09-11', 2), 
('document', 'Agreement of purchase and sale', 'Document_Mutual_Release.gif',
 '2022-10-04', 5),
('photo', 'Autumn', 'fall1.jpg', '2022-10-05', 3),
('photo', 'Sea', 'sea.jpg', '2022-10-07', 5),
('post', 'My vacation', 'Established in 1872, Yellowstone National Park is a national treasure. Located primarily in Wyoming, the park is so massive that it extends into Montana and Idaho and has five separate entrances. Yellowstone is a real hothead: It contains half of the worlds known geothermal features, including geysers, hot springs, and boiling mud pots. The most famous is Old Faithful, a geyser that has reliably erupted for decades. You''ll need a vehicle to get the most out of the park, but its sprawling size doesnt mean youll be in isolation. In fact, you''ll be joined by more than a million visitors during the busy summer season. Prepare for traffic jams caused by humans and bison alike. Luckily, there are plenty of places to rest around the park, including nine lodges and 2,000 campsites.',
'2022-10-07', 4);

INSERT INTO music(m_name, m_singer, m_format, created, user_id, file) VALUES
('Bach_I', NULL, 'classic', '2022-10-01', 2, 'D:\IT-academy\SQL\YukhimenkaSQL\homeworkSQL\network\04.Bach I. -Toccata & Fugue in D minor, BWV 565.mp3'),
('Bethoven_L', NULL, 'classic', '2022-10-02', 2, 'D:\IT-academy\SQL\YukhimenkaSQL\homeworkSQL\network\07.Bethoven L. -Sonata N14.Adagio sostenuto.mp3'),
('Wagner_R', NULL, 'classic', '2022-10-03', 5, 'D:\IT-academy\SQL\YukhimenkaSQL\homeworkSQL\network\14.Wagner R, -Valkirian Fly.mp3'),
('Verdi_J', NULL, 'classic', '2022-10-05', 5, 'D:\IT-academy\SQL\YukhimenkaSQL\homeworkSQL\network\15.Verdi J.
-Aida.March.mp3');

INSERT INTO comments(update_id, comment, created, user_id) VALUES
(1, 'What a cute cat!', '2022-09-10', 6),
(1, 'I like him', '2022-09-10', 4),
(2, 'Interesting news.', '2022-09-12', 1),
(4, 'Wonderful autumn picture!', '2022-10-05', 4),
(6, 'I''ve been there before.', '2022-10-08', 2);




--Разные запросы к Базе Данных
-- Запрос1 - РАБОТА С ДЖОЙНАМИ
Select concat(firstname, ' ', lastname) AS user_name, definition AS user_definition, friend_nik, status, comment from friends f
left JOIN user_has_friend uhf
ON f.id=uhf.friend_id
left join status
ON status.id=uhf.id_status
join users u
ON u.id=uhf.user_id
join sex_variaty sv
ON sv.id_sex=u.sex
left join comments c
ON u.id=c.user_id
where comment is NOT NULL
ORDER BY user_name;

 -- Запрос2 - UNION
SELECT concat(lastname, ' ', firstname) AS user_name, login, type AS update_type, title AS update_title, created FROM users u
LEFT JOIN updates up
ON u.id=up.user_id
UNION
SELECT concat(lastname, ' ', firstname) AS user_name, login, type AS update_type, title AS update_title, created FROM users u
RIGHT JOIN updates up
ON u.id=up.user_id
ORDER BY user_name;

-- Запрос3 - DDL
RENAME TABLE users TO my_users;

describe my_users;

ALTER TABLE my_users
CHANGE lastname surname VARCHAR(100) NOT NULL;

ALTER TABLE my_users
CHANGE firstname name VARCHAR(50) NOT NULL;

SELECT * FROM friends;
ALTER TABLE friends
ADD COLUMN work VARCHAR(30) DEFAULT 'unknown'
AFTER friend_nik;

ALTER TABLE friends
DROP COLUMN work;













