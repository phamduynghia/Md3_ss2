CREATE TABLE product(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
created DATE
);

CREATE TABLE color(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
status BIT
);

CREATE TABLE size(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
status BIT
);

CREATE TABLE product_detail(
id INT PRIMARY KEY AUTO_INCREMENT,
product_id INT,
color_id INT,
size_id INT,
price DOUBLE,
stock INT,
status BIT,
FOREIGN KEY (product_id)REFERENCES product(id),
FOREIGN KEY (color_id) REFERENCES color(id),
FOREIGN KEY (size_id) REFERENCES size(id)
);



