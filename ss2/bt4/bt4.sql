create table users(
Id int primary key auto_increment,
fullName Varchar(100),
email Varchar(255),
password Varchar(255),
phone Varchar(11),
pemission bit,
status bit
);

create table history(
id int primary key auto_increment,
user_id int,
foreign key (user_id) references users(Id),
point int,
examDate datetime
);

create table history_detail(
id int primary key auto_increment,
history_id int,
foreign key (history_id) references history(id),
question_id int,
foreign key (question_id) references questions(Id),
resuslt bit
);

create table questions(
Id int primary key auto_increment,
content varchar(255),
exam_id int,
status bit
);

create table answer(
id int primary key auto_increment,
content varchar(255),
question_id int,
foreign key (question_id) references questions(Id),
answerTrue bit
);

create table exams(
id int primary key auto_increment,
name varchar(100),
duration int,
status bit
);

