CREATE TABLE Car (
    id int auto_increment,
    name varchar(255),
    motor varchar(255),
    cil varchar(255),
    acel varchar(255),
    hp varchar(255),
    torque varchar(255),
    velmax varchar(255),
    doors varchar(255),
    seats varchar(255),
    val varchar(255),
    price varchar(255),
    image varchar(255),
    title varchar(255),
    page varchar(255)
);

INSERT INTO car (id, name, motor, cil, acel, hp, torque, velmax, doors, seats, val, price, image, title, page)
VALUES
(1, 'Tesla Model S', 'Dois Motores Elétricos','651 Km', '3,1s', '605 cv', '92,48 Kgfm', '250 Km/h', '4', '5', 'AWD', '5,299', '1699817572028-TeslaModelS.jpg', 'Comforto e dirigibilidade com tecnologia.', 'TeslaModelS.jsp'),
(2, 'Tesla Model X', 'Dois Motores Elétricos', '400 Km', '4s', '772 cv', '94,8 Kgfm', '250 Km/h', '4', '7', 'AWD', '7,350', '1699817586671-TeslaModelX.jpg', 'Seguranca e Potencia em um carro.', 'TeslaModelX.jsp'),
(3, 'Porsche Taycan Turbo S', 'Dois Motores Elétricos', '388 Km', '2,8s', '761 cv', '107,1 Kgfm', '260 Km/h', '4', '4', 'AWD', '12,000', '1699817596484-Porsche.jpg', 'O esportivo eletrico de todo apaixonado por carros.', 'Porsche.jsp'),
(4, 'Bmw I8', 'Intercooled Turbo Gas/Electric I-3','600 km', '4,4s', '369 cv', '42 kgfm', '250 Km/h', '2', '4', '12', '7,899', '1699817601930-Bmwi8.jpg', 'Um toque de luxuosidade e desempenho', 'Bmw.jsp'),
(5, 'BYD Yuan', 'Elétrico', '294 Km', '7,3s', '204 cv', '31,0 Kgfm', '160 Km/h', '4', '5', 'FWD', '3,599', '1699817607549-BYDYuan.jpg', 'Carro família e econômico', 'BYDYuan.jsp'),
(6, 'BYD Tan', 'Elétrico', '306 Km', '4,6s', '272 cv', '69,3 Kgfm', '186 Km/h', '4', '7', 'AWD','6,200', '1699817613560-BYDTan.jpg', 'O SUV elétrico para a família toda', 'BYDTan.jsp');

CREATE TABLE USR (
    id int auto_increment,
    username varchar(255),
    password varchar(255)
);

INSERT INTO USR (id, username, password)
VALUES 
(1, 'admin', '123');
