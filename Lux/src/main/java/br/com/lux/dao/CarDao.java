package br.com.lux.dao;

import br.com.lux.model.Car;
import br.com.lux.servlet.ConnectionPoolConfig;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class CarDao {

    public void createCar(Car car) {

        String SQL = "INSERT INTO CAR (NAME) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

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
            preparedStatement.setString(12, car.getLink());
            preparedStatement.setString(13, car.getTitle());
            preparedStatement.execute();

            System.out.println("success in insert car");
            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");
        }
    }

    public List<Car> findAllCars() {

        String SQL = "SELECT * FROM CAR";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Car> cars = new ArrayList<>();

            while (resultSet.next()) {
                String carId = resultSet.getString("id");
                String carName = resultSet.getString("name");
                String carMotor = resultSet.getString("motor");
                String carCil = resultSet.getString("cil");
                String carAcel = resultSet.getString("acel");
                String carHp = resultSet.getString("hp");
                String carTorque = resultSet.getString("torque");
                String carVelo = resultSet.getString("velmax");
                String carDoors = resultSet.getString("doors");
                String carSeats = resultSet.getString("seats");
                String carVal = resultSet.getString("val");
                String carPrice = resultSet.getString("price");
                String carLink = resultSet.getString("coverurl");
                String carTitle = resultSet.getString("title");

                Car car = new Car(carId, carName, carMotor, carCil, carAcel, carHp, carTorque, carVelo, carDoors, carSeats, carVal, carPrice, carLink, carTitle);

                cars.add(car);

            }

            System.out.println("success in select * car");

            connection.close();

            return cars;

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

        String SQL = "UPDATE Car SET name = ?, motor = ?, cil = ?, acel = ?, hp = ?, torque = ?, velmax = ?, doors = ?, seats = ?, val = ?, price = ?, link = ?, title = ? WHERE id = ?";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, car.getId());
            preparedStatement.setString(2, car.getName());
            preparedStatement.setString(3, car.getMotor());
            preparedStatement.setString(4, car.getCil());
            preparedStatement.setString(5, car.getAcel());
            preparedStatement.setString(6, car.getHp());
            preparedStatement.setString(7, car.getTorque());
            preparedStatement.setString(8, car.getSpeed());
            preparedStatement.setString(9, car.getDoors());
            preparedStatement.setString(10, car.getSeats());
            preparedStatement.setString(11, car.getVal());
            preparedStatement.setString(12, car.getPrice());
            preparedStatement.setString(12, car.getLink());
            preparedStatement.setString(13, car.getTitle());
            preparedStatement.execute();

            System.out.println("success in update car");
            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");
            System.out.println("Error: " + e.getMessage());

        }
    }
}
