package br.com.lux.servlet;

import br.com.lux.dao.CarDao;
import br.com.lux.model.Car;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/find-all-cars")
public class ListCarServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Car> cars = new CarDao().findAllCars();

        req.setAttribute("cars", cars);

        req.getRequestDispatcher("/Modelos/ofertas.jsp").forward(req, resp);

    }

}

