package br.com.lux.servlet;


import br.com.lux.dao.UserDao;
import br.com.lux.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/cadastro")
public class CreateUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        req.getSession().setAttribute("clickUser", "cadastro");

        req.getRequestDispatcher("LoginPage/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        String name = req.getParameter("username");
        String senha = req.getParameter("password");
        String email = req.getParameter("email");
        String firstName = req.getParameter("firstName");
        String lastName = req.getParameter("lastName");


        if(new UserDao().verifyCredentials(email))
        {
            req.setAttribute("message", "Usuario ja cadastrado");

            req.getRequestDispatcher("LoginPage/login.jsp").forward(req, resp);
        }
        else if(new UserDao().saveorUpdate(name, senha, email, firstName, lastName))
        {
            req.setAttribute("message", "Usuario cadastrado com sucesso");
        }
        else
        {
            req.setAttribute("message", "Erro ao cadastrar usuario");
        }
    }

}

