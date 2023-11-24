package br.com.lux.servlet;
import br.com.lux.dao.CarDao;
import br.com.lux.model.Car;
import com.sun.tools.javac.Main;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

    @WebServlet("/admin-detalhes-admin")
    public class DetalhesCarrosAdmin extends HttpServlet {

        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
            
            String carId = req.getParameter("id");
            Car car = new CarDao().findCarById(carId).get(0);
            req.setAttribute("car", car);
            req.getRequestDispatcher("admin.jsp").forward(req, resp);
        }
}
