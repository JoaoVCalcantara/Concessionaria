package br.com.lux.servlet;

import br.com.lux.dao.CarDao;
import br.com.lux.model.Car;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/delete-car")
public class DeleteCarServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

        String carId = req.getParameter("id");

        new CarDao().deleteCarById(carId);

        List<Car> cars = new CarDao().findAllCars();
        HttpSession session = req.getSession();
        session.setAttribute("cars", cars);

        resp.sendRedirect("dashboard.jsp");
    }
}