package br.com.lux.servlet;

import br.com.lux.dao.CarDao;
import br.com.lux.model.Car;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/update-car")
public class UpdateCarServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String carId = req.getParameter("id");
        String carName = req.getParameter("car-name");
        String carMotor = req.getParameter("motor");
        String carCil = req.getParameter("cil");
        String carAcel = req.getParameter("acel");
        String carHp = req.getParameter("hp");
        String carTorque = req.getParameter("torque");
        String carSpeed = req.getParameter("speed");
        String carDoors = req.getParameter("doors");
        String carSeats = req.getParameter("seats");
        String carVal = req.getParameter("val");
        String carPrice = req.getParameter("price");
        String carLink = req.getParameter("image");
        String carTitle = req.getParameter("title");
        String carPage = req.getParameter("page");

        CarDao carDao = new CarDao();
        Car car = new Car(carId, carName, carMotor, carCil, carAcel, carHp, carTorque, carSpeed, carDoors, carSeats, carVal, carPrice, carLink, carTitle, carPage);

        carDao.updateCar(car);

        resp.sendRedirect("/dashboard.jsp");
    }
}