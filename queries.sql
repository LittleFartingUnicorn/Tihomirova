INSERT INTO categories SET title = "Доски и лыжи";
INSERT INTO categories SET title = "Крепления";
INSERT INTO categories SET title = "Ботинки";
INSERT INTO categories SET title = "Одежда";
INSERT INTO categories SET title = "Инструменты";
INSERT INTO categories SET title = "Разное";

INSERT INTO user (email,name_of_user,password) VALUES ("lalala@yandex.ru", "Lilo", "gfhjkm"), ("collarbone@google.com", "Hiro", ".ctabyf"),("asdfggh@google.com","Josephine","qscrgn753159");

INSERT INTO lots (title_of_lot, description, start_price, bet_step) VALUES ("Горнолыжный костюм", "Технологичные, современные, комфортные куртка и брюки известного шведского бренда 8848 ALTITUDE","10000","700"),
("Сноуборд", "Сноуборд Nitro SHtik - это снаряд продвинутого уровня для энтузиастов паркового катания. Мягкий флекс доски и прогиб Cam-Out позволяют делать всевозможные прессы и иметь стабильный контроль, свойственный традиционному кэмберному прогибу","18500","500"),
("Горнолыжная маска","Описание отсутствует","1799","300");

INSERT INTO rate (user_id, id_of_lot) VALUES ("1","2"), ("2","2");

SELECT title FROM categories;

SELECT title_of_lot, start_price, img, c.title, r.amount FROM lots as l 
JOIN rate as r on l.id_rate=r.rate_id
JOIN categories as c on l.id_category=c.id
WHERE date_of_create < date_of_completion 

SELECT * FROM lots
JOIN categories on lots.id_category=categories.id
WHERE id_of_lot = 2

UPDATE lots 
SET title_of_lot = "Лыжи"
WHERE id_of_lot = 1 

SELECT rate.id_of_lot, rate.rate_id, amount FROM rate 
JOIN lots on rate.id_of_lot = lots.id_of_lot
WHERE lots.id_of_lot = 1


