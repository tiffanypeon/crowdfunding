CREATE TABLE users 
(id INTEGER PRIMARY KEY AUTOINCREMENT, 
name TEXT, 
age INTEGER
); 

CREATE TABLE projects
(id INTEGER PRIMARY KEY AUTOINCREMENT, 
name TEXT, 
category TEXT, 
goal TEXT, 
start_date DATE,
end_date DATE
); 

CREATE TABLE pledges 
(id INTEGER PRIMARY KEY AUTOINCREMENT, 
user_id INTEGER, 
project_id INTEGER, 
pledge_amount INTEGER
); 

INSERT INTO users (name, age) VALUES
("Sarah", 24), 
("Jim", 14), 
("Stacey", 52), 
("Meredith", 61), 
("Jeremy", 27), 
("Mike", 34), 
("Mark", 45), 
("Nina", 28), 
("Julia", 25), 
("Austin", 42), 
("Chris", 17), 
("Amber", 50), 
("Jimmy", 13),
("Angie", 34), 
("Tiffany", 21), 
("Meryl", 52), 
("Brian", 23), 
("Nick", 26), 
("Candice", 32), 
("Buffy", 41); 

INSERT INTO projects (name, category, goal, start_date, end_date) VALUES
("Hometown song", "music", 3600, 20130901, 20131201), 
("Books for kids", "books", 5000, 20130403, 20140403), 
("Soup kitchen", "charity", 1200, 20132501, 20140101), 
("Book drive", "books", 1500, 20140123, 20130601), 
("Singing competition", "music", 6700, 20131001, 20131021), 
("Guitar lessons", "music", 200, 20131003, 20141113), 
("Fashion show", "charity", 500, 20140521, 20140904), 
("Can drive", "charity", 500, 20140521, 20140904), 
("Singalong", "music", 150, 20131124, 20131224), 
("Reading workshop", "books", 6000, 20130925, 20131031); 

INSERT INTO pledges (user_id, project_id, pledge_amount) VALUES
(1, 1, 25), 
(2, 2, 700), 
(3, 3, 1005), 
(4, 4, 231), 
(5, 5, 755), 
(6, 6, 35), 
(7, 7, 198), 
(8, 8, 200), 
(9, 9, 301), 
(10, 10, 400), 
(11, 1, 430), 
(12, 2, 45), 
(13, 3, 980), 
(14, 4, 36), 
(15, 5, 380), 
(16, 6, 470), 
(17, 7, 800), 
(18, 8, 450), 
(19, 9, 230), 
(20, 10, 320), 
(1, 1, 650), 
(2, 2, 570), 
(3, 3, 480), 
(4, 4, 930), 
(5, 5, 370), 
(6, 6, 310), 
(7, 7, 150), 
(8, 8, 670), 
(9, 9, 1000), 
(10, 10, 31); 