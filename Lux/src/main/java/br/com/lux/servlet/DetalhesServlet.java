package br.com.lux.servlet;

import br.com.lux.dao.CarDao;
import br.com.lux.model.Car;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/detalhes-carro")
public class DetalhesServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

        String carId = req.getParameter("id");

        Car car = new CarDao().findCarById(carId).get(0);
        req.setAttribute("car", car);
        req.getRequestDispatcher("/Carros/" + car.getPage()).forward(req, resp);

    }
}

