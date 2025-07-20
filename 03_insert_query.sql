USE startersql;

INSERT INTO users VALUES
('2015-07-18', 1, 'ranjitdey05265@gmail.com', 'Ranjit Dey', 'male' , default );

insert into users (name, email, date_of_birth, gender) values
("Aritra Ghosh", 'ghosharitra@gmail.com', '2002-01-12', 'male'),
("Champa Ghorai", 'champa@gmail.com', '2003-03-23', 'female'),
("Chameli sen", 'chameli@gmail.com', '2004-07-31', 'other');

select count(id) from users;