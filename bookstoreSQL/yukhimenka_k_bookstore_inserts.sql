/* !!!! перед вставкой данных нужно запустить триггеры `orders_AFTER_INSERT` и `orders_BEFORE_DELETE`,
 которые находятся в yukhimenka_k_bookstore_triggers_views_procedures.sql!!!!
 !!!!before inserting data, you need to run the triggers `orders_AFTER_INSERT` and `orders_BEFORE_DELETE`,
 that are in yukhimenka_k_bookstore_triggers_views_procedures.sql!!!!*/

INSERT INTO author VALUES 
(1, 'Vladimir', 'Nabokov'),
(2, 'F.Scott', 'Fitzgerald'),
(3, 'Gabriel', 'Garcia Marquez'),
(4, 'Virginia', 'Woolf'),
(5, 'Leo', 'Tolstoy'),
(6, 'Mark', 'Twain'),
(7, 'Anton', 'Chekhov'),
(8, 'George', 'Eliot'),
(9, 'Herman', 'Melville'),
(10, 'Charles', 'Dickens'),
(11, 'Fyodor', 'Dostoevsky'),
(12, 'Jane', 'Austen'),
(13, 'William', 'Shakespeare'),
(14, 'Ernest', 'Hemingway'),
(15, 'Miguel', 'de Cervantes'),
(16, 'Dante', 'Alighieri'),
(17, 'Lewis', 'Carroll'),
(18, 'George', 'Orwell'),
(19, 'Harper', 'Lee'),
(20, 'Jonathan', 'Swift');

INSERT INTO book VALUES
(1, 'Lolita', 1, '978-0679723165', 1989, 5.49),
(2, 'The Great Gatsby', 2, '978-0743273565',2004, 5.22),
(3, 'One Hundred Years of Solitude', 3, '978-0060531041', 2006, 16.83),
(4, 'To The Lighthouse', 4, '978-0156907392', 1989, 10.28),
(5, 'Anna Karenina', 5, '978-5519618038', 2004, 8.23),
(6, 'War and Peace', 5, '978-1400079988', 2008, 4.95),
(7, 'The Adventures of Huckleberry Finn', 6, ' 978-1481819046', 2012, 11.11),
(8, 'The stories', 7, '978-0553381009', 2000, 3.59),
(9, 'Middlemarch', 8, '979-8714429255', 2021, 5),
(10, 'Moby-Dick', 9, '978-1503280786', 2018, 5.98),
(11, 'Great Expectations', 10, '978-1503275188', 2020, 8.09),
(12, 'Crime and Punishment', 11, '978-0486415871', 2001, 11.5),
(13, 'Pride and Prejudice', 12, '978-1503290563', 2021, 8.42),
(14, 'Hamlet', 13, '978-0743477123', 1992, 6.7),
(15, 'Romeo and Juliet', 13, '978-0671722852', 2004, 5.7),
(16, 'The Old Man and The Sea', 14, '978-0684801223', 1995, 17.01),
(17, 'Don Quixote', 15, '978-0142437230', 2003, 4.1),
(18, 'The Divine Comedy', 16, '978-0451208637', 2003, 6.8),
(19, 'Alice''s Adventures in Wonderland', 17, '978-0486275437', 1993, 10.46),
(20, 'Nineteen Eighty Four', 18, '978-0451524935', 1961, 7.92),
(21, 'To Kill a Mockingbird', 19, '978-0446310789', 1988, 12.01),
(22, 'Gulliver''s Travels', 20, '978-0486292731', 1996, 2.95);

INSERT INTO book_format VALUES
(1, 'hardcover'),
(2, 'paperback'),
(3, 'audiobook'),
(4, 'Ebook');

INSERT INTO book_has_format(book_id, format_id) VALUES
(1, 1), (2, 1), (3, 1), (3, 2), (3, 3), (4, 1), (5, 1), (6, 1), (6, 3), (6, 4), (6, 2), (7, 2), (7, 3),
(8, 2), (8, 3), (8, 4), (8, 1), (2, 3), (9, 1), (10, 2), (10, 3), (10, 4), (10, 1), (11, 1), (12, 1),
(13, 2), (14, 2), (14, 1), (15, 2), (15, 1), (15, 4), (16, 1), (17, 2), (18, 2), (18, 3), (18, 1), 
(19, 1), (19, 3), (20, 1), (21, 1), (21, 2), (21, 3), (21, 4), (22, 2), (22, 4);

INSERT INTO book_genre VALUES
(1, 'Literary Fiction'),
(2, 'Tragedy'),
(3, 'Thriller'),
(4, 'Horror'),
(5, 'Historical'),
(6, 'Romance'),
(7, 'Adventure'),
(8, 'Bildungsroman'),
(9, 'Speculative Fiction'),
(10, 'Science Fiction'),
(11, 'Fantasy'),
(12, 'Dystopian'),
(13, 'Magical Realism'),
(14, 'Realist Literature');

INSERT INTO publisher VALUES
(1, 'Harper Perennial Modern Classics', '195 Broadway, NY 10007', '+1 212-746-5400', 'Windy'),
(2, 'Scribner', '154 South Victory Blvd. Burbank, CA', '+1 212-312-5000', 'Starlette Pitt'),
(3, 'Knopf Doubleday Publishing Group', '1745 Broadway, New York, 10019', NULL, NULL),
(4, 'Penguin Classics', '20 Vauxhall Bridge Rd, London', NULL, NULL),
(5, 'CreateSpace Independent Publishing Platform', 'Scotts Valley, California , US', '+1 212-423-6262', 'Tokyo Man'),
(6, 'Modern Library', '1745 Broadway, 11th Floor NY 10019', '+1 212-567-4000', 'Tenysi River'),
(7, 'Independently published', NULL, '+1 212-746-5454', 'Pluto'),
(8, 'Dover Publications', '1325 Franklin Ave, Garden City, NY', '+1 720-848-0000', NULL),
(9, 'Simon & Schuster', '1230 Avenue of the Americas, NY, 10020-1513, USA', NULL, NULL),
(10, 'Berkley', NULL, '+1 203-384-3000', 'Brayan Dash'),
(11, 'Signet Classic', NULL, '+1 646-929-7800', 'Abrielle'),
(12, 'Grand Central Publishing', '1290 Avenue of the Americas New York, NY 10104', '+1 626-397-5000', 'Dara Smith');

INSERT INTO additional_information(book_id, genre_id, publish_id, page_num, staff_comment)
VALUES
(1, 1, 3, 345, NULL),
(2, 1, 2, 423, NULL),
(3, 1, 1, 242, 'big size'),
(4, 1, 5, 211, NULL),
(5, 14, 4, 478, 'booked'),
(6, 1, 4, 943, NULL),
(7, 7, 5, 367, NULL),
(8, 14, 7, 98, 'booked'),
(9, 6, 5, 186, NULL),
(10, 1, 5, 372, NULL),
(11, 8, 8, 374, 'russian language'),
(12, 3, 5, 544, NULL),
(13, 6, 5, 415, NULL),
(14, 2, 9, 186, NULL),
(15, 2, 9, 49, NULL),
(16, 1, 2, 349, 'Сollectible Edition'),
(17, 6, 4, 310, NULL),
(18, 1, 10, 153, NULL),
(19, 11, 8, 194, NULL),
(20, 12, 11, 304, NULL),
(21, 1, 12, 309, 'Сollectible Edition'),
(22, 1, 8, 282, NULL);

INSERT INTO shop VALUES
(1, '3900 Hillsboro Pike #14, Nashville, TN 37215', '+1 555-929-7800'),
(2, '453 South Spring Street Ground Floor, 121 E 5th St SUITE 505, Los Angeles, CA 90013', '+2 587-929-7800'),
(3, '116 E 59th St, New York, NY 10022', '+1 555-000-7800'),
(4, 'Northwoods Shopping Center, 18030 US-281 #140, San Antonio, TX 78232', '+1 555-929-2300'),
(5, '300 W Camelback Rd, Phoenix, AZ 85013', '+1 5559295800'),
(6, '5400 Cahuenga Blvd, North Hollywood, CA 91601', '+1 5554294800'),
(7, '603 N Lamar Blvd, Austin, TX 78703', '+1 5559243874'),
(8, '1256 Massachusetts Ave, Cambridge, MA 02138', '+1 4859242800'),
(9, '23654 US Hwy 19 N, Clearwater, FL 33765', '+1 3574584452'),
(10, '695 E Colorado Blvd, Pasadena, CA 91101', '+1 577-946-2227'),
(11, 'Carolina Shopping Center, 18030 US-281 #140, North Carolina, TX 78232', '+1 485946800'),
(12, '390 Nashville Pike, Nashville, TN 34515', '+2 555-995-7800'),
(13, 'Mayo Shopping Center - Rochester Rochester, MN', '+1 555-220-7823'),
(14, '800 Brevard Road, Asheville, NC 28806', NULL),
(15, '88-01 Queens Boulevard Elmhurst, NY 11373', '+1 206-000-7800'),
(16, '16th Street Mall, Denver, CO 80265', NULL);

INSERT INTO shop_has_book(book_id, shop_id) VALUES
(1, 5), (2, 8), (3, 2), (3, 3), (3, 10), (4, 11), (5, 12), (6, 1), (6, 10), (6, 7), (6, 8), (7, 6), (7, 9),
(8, 4), (8, 5), (8, 9), (8, 10), (8, 1), (9, 13), (10, 3), (10, 7), (10, 8), (10, 9), (11, 14), (12, 15),
(13, 4), (14, 9), (14, 10), (15, 1), (15, 6), (15, 7), (16, NULL), (17, NULL), (18, 2), (18, 3), (18, 5), 
(19, 9), (19, 8), (20, 16), (21, 1), (21, 4), (21, 5), (21, 6), (22, 8), (22, 10);

INSERT INTO customer VALUES 
(1, 'Deborah', 'Nabokova', '+375295894411', 'Minsk, Turovskogo 18a, 128'),
(2, 'Gabriel', 'Fitch', '80295564123', 'Soligorsk, Stroiteley 31, 96'),
(3, 'Sharon', 'Grin', '(33)555-17-18', 'Smorgon, Yubileynaya 55, 49'),
(4, 'Adam', 'Wooles', NULL, 'Smorgon, per.Kutuzova 15'),
(5, 'Leo', 'Andrewson', '+37533 5891622', 'Minsk, pl.Vaneeva 34, 78'),
(6, 'Andrew', 'Tchain', '80255556644', 'Sluck, Gagarina 20A, 124'),
(7, 'Anton', 'Cvetov', '8(029)7894563', NULL),
(8, 'Martin', 'Elton', '29-3337895', 'Starue Dorogi, Moskovskaya 43, 96'),
(9, 'Herman', 'Michmen', '1234563', 'Molodechno, Stroiteley 17A, 23'),
(10, 'Nicole', 'Dipson', NULL, NULL),
(11, 'Roxie', 'Dibltsten', '37529 8884512', NULL),
(12, 'Jane', 'Mayers', '+37529 5671243', 'Soligorsk, bul.Shahterov 15B, 56'),
(13, 'Wil', 'Smith', '+375(33)632-12-45', 'Cherven, Leninskaya 5'),
(14, 'Lora', 'Horn', '(29)1236384', 'Molodechno, Sovetskaya 31, 176'),
(15, 'Susan', 'Palmery', NULL, 'Minsk, Rozu Luksemburg 12, 59'),
(16, 'Jerry', 'Alabay', '8044-5871760', 'Smolevichi, 50 let Oktjabrya 4, 2'),
(17, 'Lewis', 'Donray', '80447451235', NULL),
(18, 'Ellie', 'Saming', '5671238', 'Luban, bul.Shevchenko 4, 81'),
(19, 'Florencer', 'Leusen', '025-1557496', 'Minsk, Ukrainoslavskaya 2, 15'),
(20, 'Jonathan', 'Pray', NULL, 'Borisov, Bukova 16, 87');

/* !!! Последний шанс добавить триггеры, дальше БД работать правильно не будут.
 !!!! перед вставкой данных нужно запустить триггеры `orders_AFTER_INSERT` и `orders_BEFORE_DELETE`,
 которые находятся в yukhimenka_k_bookstore_triggers_views_procedures.sql!!!!
 !!! Last chance to add triggers, the database will no longer work correctly.
 !!!! before inserting data, you need to run the triggers `orders_AFTER_INSERT` and `orders_BEFORE_DELETE`,
 that are in yukhimenka_k_bookstore_triggers_views_procedures.sql!!!!*/

INSERT INTO orders (order_number, customer_id, book_id, price_of_book,
 amount_of_books) VALUES 
('031122-1',1,2, (select price from book where id_book=2),1), 
('031122-1',1,4, (select price from book where id_book=4),1), 
('031122-1',1,8, (select price from book where id_book=8),1), 
('031122-1',1,12,(select price from book where id_book=12),1), 
('031122-1',1,18,(select price from book where id_book=18),1),
('031122-1',1,22,(select price from book where id_book=22),1),
('031122-2',2,2,(select price from book where id_book=2),1),
('031122-2',2,5,(select price from book where id_book=5),1), 
('031122-2',2,10,(select price from book where id_book=10),1), 
('031122-2',2,21,(select price from book where id_book=21),1), 
('031122-2',2,7,(select price from book where id_book=7),4), 
('041122-1',3,1,(select price from book where id_book=1),1), 
('041122-1',3,8,(select price from book where id_book=8),1), 
('041122-1',3,9,(select price from book where id_book=9),1), 
('041122-1',3,11,(select price from book where id_book=11),1), 
('041122-1',3,17,(select price from book where id_book=17),2), 
('041122-2',4,3,(select price from book where id_book=3),1), 
('041122-2',4,6,(select price from book where id_book=6),1), 
('041122-2',4,9,(select price from book where id_book=9),1), 
('041122-2',4,12,(select price from book where id_book=12),1), 
('041122-2',4,14,(select price from book where id_book=14),1), 
('041122-2',4,18,(select price from book where id_book=18),1), 
('041122-3',5,1,(select price from book where id_book=1),1), 
('041122-3',5,22,(select price from book where id_book=22),2), 
('041122-3',5,20,(select price from book where id_book=20),2), 
('041122-3',5,8,(select price from book where id_book=8),10), 
('041122-4',6,4,(select price from book where id_book=4),1), 
('051122-1',7,7,(select price from book where id_book=7),1), 
('051122-1',5,14,(select price from book where id_book=14),1), 
('051122-1',5,21,(select price from book where id_book=21),1), 
('051122-1',5,20,(select price from book where id_book=20),1), 
('051122-2',8,5,(select price from book where id_book=5),1), 
('051122-2',8,10,(select price from book where id_book=10),1), 
('051122-2',8,15,(select price from book where id_book=15),1), 
('051122-2',8,19,(select price from book where id_book=19),2), 
('051122-3',9,4,(select price from book where id_book=4),1), 
('051122-3',9,6,(select price from book where id_book=6),1), 
('051122-3',9,9,(select price from book where id_book=9),1), 
('051122-3',9,11,(select price from book where id_book=11),1), 
('051122-3',9,13,(select price from book where id_book=13),1), 
('051122-4',10,5,(select price from book where id_book=5),1), 
('051122-4',10,7,(select price from book where id_book=7),1), 
('051122-4',10,16,(select price from book where id_book=16),1), 
('051122-4',10,17,(select price from book where id_book=17),1), 
('051122-6',11,10,(select price from book where id_book=10),1), 
('051122-6',11,12,(select price from book where id_book=12),1), 
('051122-6',11,13,(select price from book where id_book=13),1), 
('051122-6',11,19,(select price from book where id_book=19),2), 
('051122-7',12,11,(select price from book where id_book=11),1), 
('051122-7',12,15,(select price from book where id_book=15),1), 
('051122-7',12,18,(select price from book where id_book=18),1),
('051122-8',13,15,(select price from book where id_book=15),1),
('061122-1',14,19,(select price from book where id_book=19),1),
('061122-2',15,18,(select price from book where id_book=18),1), 
('061122-2',15,19,(select price from book where id_book=19),3), 
('061122-2',15,20,(select price from book where id_book=20),1), 
('061122-2',15,21,(select price from book where id_book=21),1),
('061122-3',16,11,(select price from book where id_book=11),1), 
('061122-3',16,7,(select price from book where id_book=7),1), 
('061122-3',16,8,(select price from book where id_book=8),1), 
('061122-3',16,20,(select price from book where id_book=20),1), 
('071122-1',17,19,(select price from book where id_book=19),1), 
('071122-1',17,20,(select price from book where id_book=20),1),
 ('071122-1',17,22,(select price from book where id_book=22),1), 
('071122-2',18,14,(select price from book where id_book=14),2), 
('071122-3',19,10,(select price from book where id_book=10),1), 
('071122-4',20,17,(select price from book where id_book=17),1), 
('071122-4',20,19,(select price from book where id_book=19),1), 
('071122-4',20,22,(select price from book where id_book=22),1);

SELECT * FROM author;
SELECT * FROM book;
SELECT * FROM book_format;
SELECT * FROM book_has_format;
SELECT * FROM book_genre;
SELECT * FROM publisher;
SELECT * FROM additional_information;
SELECT * FROM shop;
SELECT * FROM shop_has_book;
SELECT * FROM customer;
SELECT * FROM orders;
SELECT * FROM cost_of_order;
