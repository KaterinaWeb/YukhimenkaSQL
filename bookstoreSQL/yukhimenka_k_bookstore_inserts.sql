INSERT INTO authors (first_name, last_name) VALUES 
('Vladimir', 'Nabokov'),
('F.Scott', 'Fitzgerald'),
('Gabriel', 'Garcia Marquez'),
('Virginia', 'Woolf'),
('Leo', 'Tolstoy'),
('Mark', 'Twain'),
('Anton', 'Chekhov'),
('George', 'Eliot'),
('Herman', 'Melville'),
('Charles', 'Dickens'),
('Fyodor', 'Dostoevsky'),
('Jane', 'Austen'),
('William', 'Shakespeare'),
('Ernest', 'Hemingway'),
('Miguel', 'de Cervantes'),
('Dante', 'Alighieri'),
('Lewis', 'Carroll'),
('George', 'Orwell'),
('Harper', 'Lee'),
('Jonathan', 'Swift');

INSERT INTO books (title, author_id, ISBN_13, year_of_issue, price) VALUES
('Lolita', 1, '978-0679723165', 1989, 5.49),
('The Great Gatsby', 2, '978-0743273565',2004, 5.22),
('One Hundred Years of Solitude', 3, '978-0060531041', 2006, 16.83),
('To The Lighthouse', 4, '978-0156907392', 1989, 10.28),
('Anna Karenina', 5, '978-5519618038', 2004, 8.23),
('War and Peace', 5, '978-1400079988', 2008, 4.95),
('The Adventures of Huckleberry Finn', 6, ' 978-1481819046', 2012, 11.11),
('The stories', 7, '978-0553381009', 2000, 3.59),
('Middlemarch', 8, '979-8714429255', 2021, 5),
('Moby-Dick', 9, '978-1503280786', 2018, 5.98),
('Great Expectations', 10, '978-1503275188', 2020, 8.09),
('Crime and Punishment', 11, '978-0486415871', 2001, 11.5),
('Pride and Prejudice', 12, '978-1503290563', 2021, 8.42),
('Hamlet', 13, '978-0743477123', 1992, 6.7),
('Romeo and Juliet', 13, '978-0671722852', 2004, 5.7),
('The Old Man and The Sea', 14, '978-0684801223', 1995, 17.01),
('Don Quixote', 15, '978-0142437230', 2003, 4.1),
('The Divine Comedy', 16, '978-0451208637', 2003, 6.8),
('Alice''s Adventures in Wonderland', 17, '978-0486275437', 1993, 10.46),
('Nineteen Eighty Four', 18, '978-0451524935', 1961, 7.92),
('To Kill a Mockingbird', 19, '978-0446310789', 1988, 12.01),
('Gulliver''s Travels', 20, '978-0486292731', 1996, 2.95);

INSERT INTO book_genre(genre) VALUES
('Literary Fiction'),
('Tragedy'),
('Thriller'),
('Horror'),
('Historical'),
('Romance'),
('Adventure'),
('Bildungsroman'),
('Speculative Fiction'),
('Science Fiction'),
('Fantasy'),
('Dystopian'),
('Magical Realism'),
('Realist Literature');

INSERT INTO book_format(b_format) VALUES
('hardcover'),
('paperback'),
('audiobook'),
('Ebook');

INSERT INTO publishers(pub_house, pub_address, pub_phone, contact_person) VALUES
('Harper Perennial Modern Classics', '195 Broadway, NY 10007', '+1 212-746-5400', 'Windy'),
('Scribner', '154 South Victory Blvd. Burbank, CA', '+1 212-312-5000', 'Starlette Pitt'),
('Knopf Doubleday Publishing Group', '1745 Broadway, New York, 10019', NULL, NULL),
('Penguin Classics', '20 Vauxhall Bridge Rd, London', NULL, NULL),
('CreateSpace Independent Publishing Platform', 'Scotts Valley, California , US', '+1 212-423-6262', 'Tokyo Man'),
('Modern Library', '1745 Broadway, 11th Floor NY 10019', '+1 212-567-4000', 'Tenysi River'),
('Independently published', NULL, '+1 212-746-5454', 'Pluto'),
('Dover Publications', '1325 Franklin Ave, Garden City, NY', '+1 720-848-0000', NULL),
('Simon & Schuster', '1230 Avenue of the Americas, NY, 10020-1513, USA', NULL, NULL),
('Berkley', NULL, '+1 203-384-3000', 'Brayan Dash'),
('Signet Classic', NULL, '+1 646-929-7800', 'Abrielle'),
('Grand Central Publishing', '1290 Avenue of the Americas New York, NY 10104', '+1 626-397-5000', 'Dara Smith');

INSERT INTO additional_information(book_id, genre_id, publish_id, format_id, page_num, staff_comment)
VALUES
(1, 1, 3, 1, 345, NULL),
(2, 1, 2, 1, 423, NULL),
(3, 1, 1, 1, 242, 'big size'),
(4, 1, 5, 3, 211, NULL),
(5, 14, 4, 4, 478, 'booked'),
(6, 1, 4, 1, 943, NULL),
(7, 7, 5, 2, 367, NULL),
(8, 14, 7, 2, 98, 'booked'),
(9, 6, 5, 3, 186, NULL),
(10, 1, 5, 2, 372, NULL),
(11, 8, 8, 4, 374, 'russian language'),
(12, 3, 5, 3, 544, NULL),
(13, 6, 5, 1, 415, NULL),
(14, 2, 9, 1, 186, NULL),
(15, 2, 9, 1, 49, NULL),
(16, 1, 2, 1, 349, 'Collector''s Edition'),
(17, 6, 4, 2, 310, NULL),
(18, 1, 10, 2, 153, NULL),
(19, 11, 8, 2, 194, NULL),
(20, 12, 11, 4, 304, NULL),
(21, 1, 12, 2, 309, 'Collector''s Edition'),
(22, 1, 8, 1, 282, NULL);

INSERT INTO shops VALUES
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
(11, 'https://openlibrary.org/books/OL32784154M/To_the_Lighthouse', NULL),
(12, 'https://openlibrary.org/books/OL32784154M/Anna_Karenina', NULL),
(13, 'https://openlibrary.org/books/OL32784154M/Middlemarch', NULL),
(14, 'https://openlibrary.org/books/OL32784154M/Great_Expectations', NULL),
(15, 'https://openlibrary.org/books/OL32784154M/Crime_and_Punishment', NULL),
(16, 'https://openlibrary.org/books/OL32784154M/Nineteen_Eighty_Four', NULL);

INSERT INTO shop_has_book(book_id, shop_id) VALUES
(1, 5), (2, 8), (3, 2), (3, 3), (3, 10), (4, 11), (5, 12), (6, 1), (6, 10), (6, 7), (6, 8), (7, 6), (7, 9),
(8, 4), (8, 5), (8, 9), (8, 10), (8, 1), (9, 13), (10, 3), (10, 7), (10, 8), (10, 9), (11, 14), (12, 15),
(13, 4), (14, 9), (14, 10), (15, 1), (15, 6), (15, 7), (16, NULL), (17, NULL), (18, 2), (18, 3), (18, 5), 
(19, 9), (19, 8), (20, 16), (21, 1), (21, 4), (21, 5), (21, 6), (22, 8), (22, 10);

INSERT INTO customers(first_name, last_name, c_phone, c_address) VALUES 
('Deborah', 'Nabokova', '+375295894411', 'Minsk, Turovskogo 18a, 128'),
('Gabriel', 'Fitch', '80295564123', 'Soligorsk, Stroiteley 31, 96'),
('Sharon', 'Grin', '(33)555-17-18', 'Smorgon, Yubileynaya 55, 49'),
('Adam', 'Wooles', NULL, 'Smorgon, per.Kutuzova 15'),
('Leo', 'Andrewson', '+37533 5891622', 'Minsk, pl.Vaneeva 34, 78'),
('Andrew', 'Tchain', '80255556644', 'Sluck, Gagarina 20A, 124'),
('Anton', 'Cvetov', '8(029)7894563', NULL),
('Martin', 'Elton', '29-3337895', 'Starue Dorogi, Moskovskaya 43, 96'),
('Herman', 'Michmen', '1234563', 'Molodechno, Stroiteley 17A, 23'),
('Nicole', 'Dipson', NULL, NULL),
('Roxie', 'Dibltsten', '37529 8884512', NULL),
('Jane', 'Mayers', '+37529 5671243', 'Soligorsk, bul.Shahterov 15B, 56'),
('Wil', 'Smith', '+375(33)632-12-45', 'Cherven, Leninskaya 5'),
('Lora', 'Horn', '(29)1236384', 'Molodechno, Sovetskaya 31, 176'),
('Susan', 'Palmery', NULL, 'Minsk, Rozu Luksemburg 12, 59'),
('Jerry', 'Alabay', '8044-5871760', 'Smolevichi, 50 let Oktjabrya 4, 2'),
('Lewis', 'Donray', '80447451235', NULL),
('Ellie', 'Saming', '5671238', 'Luban, bul.Shevchenko 4, 81'),
('Florencer', 'Leusen', '025-1557496', 'Minsk, Ukrainoslavskaya 2, 15'),
('Jonathan', 'Pray', NULL, 'Borisov, Bukova 16, 87');

INSERT INTO orders (order_number, customer_id, book_id, price_of_book,
 amount_of_books) VALUES 
('031122-1',1,2, (select price from books where id_book=2),1), 
('031122-1',1,4, (select price from books where id_book=4),1), 
('031122-1',1,8, (select price from books where id_book=8),1), 
('031122-1',1,12,(select price from books where id_book=12),1), 
('031122-1',1,18,(select price from books where id_book=18),1),
('031122-1',1,22,(select price from books where id_book=22),1),
('031122-2',2,2,(select price from books where id_book=2),1),
('031122-2',2,5,(select price from books where id_book=5),1), 
('031122-2',2,10,(select price from books where id_book=10),1), 
('031122-2',2,21,(select price from books where id_book=21),1), 
('031122-2',2,7,(select price from books where id_book=7),4), 
('041122-1',3,1,(select price from books where id_book=1),1), 
('041122-1',3,8,(select price from books where id_book=8),1), 
('041122-1',3,9,(select price from books where id_book=9),1), 
('041122-1',3,11,(select price from books where id_book=11),1), 
('041122-1',3,17,(select price from books where id_book=17),2), 
('041122-2',4,3,(select price from books where id_book=3),1), 
('041122-2',4,6,(select price from books where id_book=6),1), 
('041122-2',4,9,(select price from books where id_book=9),1), 
('041122-2',4,12,(select price from books where id_book=12),1), 
('041122-2',4,14,(select price from books where id_book=14),1), 
('041122-2',4,18,(select price from books where id_book=18),1), 
('041122-3',5,1,(select price from books where id_book=1),1), 
('041122-3',5,22,(select price from books where id_book=22),2), 
('041122-3',5,20,(select price from books where id_book=20),2), 
('041122-3',5,8,(select price from books where id_book=8),10), 
('041122-4',6,4,(select price from books where id_book=4),1), 
('051122-1',7,7,(select price from books where id_book=7),1), 
('051122-1',5,14,(select price from books where id_book=14),1), 
('051122-1',5,21,(select price from books where id_book=21),1), 
('051122-1',5,20,(select price from books where id_book=20),1), 
('051122-2',8,5,(select price from books where id_book=5),1), 
('051122-2',8,10,(select price from books where id_book=10),1), 
('051122-2',8,15,(select price from books where id_book=15),1), 
('051122-2',8,19,(select price from books where id_book=19),2), 
('051122-3',9,4,(select price from books where id_book=4),1), 
('051122-3',9,6,(select price from books where id_book=6),1), 
('051122-3',9,9,(select price from books where id_book=9),1), 
('051122-3',9,11,(select price from books where id_book=11),1), 
('051122-3',9,13,(select price from books where id_book=13),1), 
('051122-4',10,5,(select price from books where id_book=5),1), 
('051122-4',10,7,(select price from books where id_book=7),1), 
('051122-4',10,16,(select price from books where id_book=16),1), 
('051122-4',10,17,(select price from books where id_book=17),1), 
('051122-6',11,10,(select price from books where id_book=10),1), 
('051122-6',11,12,(select price from books where id_book=12),1), 
('051122-6',11,13,(select price from books where id_book=13),1), 
('051122-6',11,19,(select price from books where id_book=19),2), 
('051122-7',12,11,(select price from books where id_book=11),1), 
('051122-7',12,15,(select price from books where id_book=15),1), 
('051122-7',12,18,(select price from books where id_book=18),1),
('051122-8',13,15,(select price from books where id_book=15),1),
('061122-1',14,19,(select price from books where id_book=19),1),
('061122-2',15,18,(select price from books where id_book=18),1), 
('061122-2',15,19,(select price from books where id_book=19),3), 
('061122-2',15,20,(select price from books where id_book=20),1), 
('061122-2',15,21,(select price from books where id_book=21),1),
('061122-3',16,11,(select price from books where id_book=11),1), 
('061122-3',16,7,(select price from books where id_book=7),1), 
('061122-3',16,8,(select price from books where id_book=8),1), 
('061122-3',16,20,(select price from books where id_book=20),1), 
('071122-1',17,19,(select price from books where id_book=19),1), 
('071122-1',17,20,(select price from books where id_book=20),1),
 ('071122-1',17,22,(select price from books where id_book=22),1), 
('071122-2',18,14,(select price from books where id_book=14),2), 
('071122-3',19,10,(select price from books where id_book=10),1), 
('071122-4',20,17,(select price from books where id_book=17),1), 
('071122-4',20,19,(select price from books where id_book=19),1), 
('071122-4',20,22,(select price from books where id_book=22),1);

SELECT * FROM authors;
SELECT * FROM books;
SELECT * FROM book_genre;
SELECT * FROM book_format;
SELECT * FROM publishers;
SELECT * FROM additional_information;
SELECT * FROM shops;
SELECT * FROM shop_has_book;
SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM cost_of_order;