package br.com.lux.dao;

import br.com.lux.model.Car;
import br.com.lux.servlet.ConnectionPoolConfig;

import java.sql.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class CarDao {

    public void createCar(Car car) {

        String SQL = "INSERT INTO CAR (NAME, MOTOR, CIL, ACEL, HP, TORQUE, VELMAX, DOORS, SEATS, VAL, PRICE, IMAGE, TITLE, PAGE) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try {
            Connection connection = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, car.getName());
            preparedStatement.setString(2, car.getMotor());
            preparedStatement.setString(3, car.getCil());
            preparedStatement.setString(4, car.getAcel());
            preparedStatement.setString(5, car.getHp());
            preparedStatement.setString(6, car.getTorque());
            preparedStatement.setString(7, car.getSpeed());
            preparedStatement.setString(8, car.getDoors());
            preparedStatement.setString(9, car.getSeats());
            preparedStatement.setString(10, car.getVal());
            preparedStatement.setString(11, car.getPrice());
            preparedStatement.setString(12, car.getImage());
            preparedStatement.setString(13, car.getTitle());
            preparedStatement.setString(14, car.getPage());
            preparedStatement.execute();

            System.out.println("success in insert car");
            connection.close();



        } catch (Exception e) {

            System.out.println(e.getMessage());
        }
    }

    public List<Car> findAllCars() {

        String SQL = "SELECT * FROM CAR";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            List<Car> carro1 = getCars(connection, preparedStatement);
            System.out.println("SELECT COM SUCESSO");

            return carro1;
        } catch (Exception e) {
            System.out.println("fail in database connection");

            return Collections.emptyList();
        }
    }

    public void deleteCarById(String carId) {

        String SQL = "DELETE CAR WHERE ID = ?";

        try {
            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, carId);
            preparedStatement.execute();

            System.out.println("success on delete car with id: " + carId);

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");
        }
    }

    public void updateCar(Car car) {

        String SQL = "UPDATE Car SET name = ?, motor = ?, cil = ?, acel = ?, hp = ?, torque = ?, velmax = ?, doors = ?, seats = ?, val = ?, price = ?, image = ?, title = ?, page = ? WHERE id = ?";

        try {
            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, car.getName());
            preparedStatement.setString(2, car.getMotor());
            preparedStatement.setString(3, car.getCil());
            preparedStatement.setString(4, car.getAcel());
            preparedStatement.setString(5, car.getHp());
            preparedStatement.setString(6, car.getTorque());
            preparedStatement.setString(7, car.getSpeed());
            preparedStatement.setString(8, car.getDoors());
            preparedStatement.setString(9, car.getSeats());
            preparedStatement.setString(10, car.getVal());
            preparedStatement.setString(11, car.getPrice());
            preparedStatement.setString(12, car.getImage());
            preparedStatement.setString(13, car.getTitle());
            preparedStatement.setString(14, car.getPage());
            preparedStatement.setString(15, car.getId());
            preparedStatement.execute();


            System.out.println("success in update car");
            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");
            System.out.println("Error: " + e.getMessage());

        }
    }
    public List<Car> findCarById(String carId) {

        String SQL = "SELECT * From CAR WHERE id = ?";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, carId);

            List<Car> carros2 = getCars(connection, preparedStatement);
            System.out.println("SUCESSO NO SELECT " + carId);

            return carros2;

        } catch (Exception e) {

            System.out.println("fail in database connection");

            return Collections.emptyList();

        }
    }

    private List<Car> getCars(Connection connection, PreparedStatement preparedStatement) throws SQLException {
        ResultSet resultSet2 = preparedStatement.executeQuery();

        List<Car> cars = new ArrayList<>();

        while (resultSet2.next()) {
            String carId = resultSet2.getString("id");
            String carName = resultSet2.getString("name");
            String carMotor = resultSet2.getString("motor");
            String carCil = resultSet2.getString("cil");
            String carAcel = resultSet2.getString("acel");
            String carHp = resultSet2.getString("hp");
            String carTorque = resultSet2.getString("torque");
            String carVelo = resultSet2.getString("velmax");
            String carDoors = resultSet2.getString("doors");
            String carSeats = resultSet2.getString("seats");
            String carVal = resultSet2.getString("val");
            String carPrice = resultSet2.getString("price");
            String carLink = resultSet2.getString("image");
            String carTitle = resultSet2.getString("title");
            String carPage = resultSet2.getString("page");

            Car car = new Car(carId, carName, carMotor, carCil, carAcel, carHp, carTorque, carVelo, carDoors, carSeats, carVal, carPrice, carLink, carTitle, carPage);

            cars.add(car);

        }

        connection.close();

        return cars;
    }

    public void saveOrUpdate(Car car) {
        if (car.getId() != null && !car.getId().isBlank()) {
            updateCar(car);
        } else {
            createCar(car);
        }
    }
}
