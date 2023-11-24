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

INSERT INTO car (id, name, motor, cil, acel, hp, torque, velmax, doors, seats, val, price, coverurl, title,page)
VALUES
(1, 'Tesla Model S', 'Dois Motores Elétricos','651 Km', '3,1s', '605 cv', '92,48 Kgfm', '250 Km/h', '4', '5', 'AWD', '5,299', 'https://wallpapercave.com/wp/wp3536110.jpg', 'Comforto e dirigibilidade com tecnológia', 'TeslaModelS.jsp'),
(2, 'Tesla Model X', 'Dois Motores Elétricos', '400 Km', '4s', '772 cv', '94,8 Kgfm', '250 Km/h', '4', '7', 'AWD', '7,350', 'https://images.unsplash.com/photo-1587304878169-505d63fd6b0c?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Segurança e Potência em um carro só', 'TeslaModelX.jsp'),
(3, 'Porsche Taycan Turbo S', 'Dois Motores Elétricos', '388 Km', '2,8s', '761 cv', '107,1 Kgfm', '260 Km/h', '4', '4', 'AWD', '12,000', 'https://images3.alphacoders.com/106/1068167.jpg', 'O esportivo elétrico de todo apaixonado por carros', 'Porsche.jsp'),
(4, 'Bmw I8', 'Intercooled Turbo Gas/Electric I-3','600 km', '4,4s', '369 cv', '42 kgfm', '250 Km/h', '2', '4', '12', '7,899', 'https://www.hdcarwallpapers.com/walls/2018_bmw_i8_coupe_4k-HD.jpg', 'Um toque de luxuosidade e desempenho', 'Bmw.jsp'),
(5, 'BYD Yuan', 'Elétrico', '294 Km', '7,3s', '204 cv', '31,0 Kgfm', '160 Km/h', '4', '5', 'FWD', '3,599', 'https://static.wixstatic.com/media/0618bc_b976ea0445654fdb9bc1e5dfaeb55cb6~mv2.webp', 'Carro família e econômico', 'BYDYuan.jsp'),
(6, 'BYD Tan', 'Elétrico', '306 Km', '4,6s', '272 cv', '69,3 Kgfm', '186 Km/h', '4', '7', 'AWD','6,200', 'https://static.wixstatic.com/media/0618bc_ddbb4d42444a4b74b2e84296718aa6e9~mv2.jpg/v1/fill/w_1864,h_1065,al_c,q_90,usm_0.66_1.00_0.01,enc_auto/0618bc_ddbb4d42444a4b74b2e84296718aa6e9~mv2.jpg', 'O SUV elétrico para a família toda', 'BYDTan.jsp');

CREATE TABLE USR (
    id int auto_increment,
    username varchar(255),
    password varchar(255)
);

INSERT INTO USR (id, username, password)
VALUES 
(1, 'admin', '123');
