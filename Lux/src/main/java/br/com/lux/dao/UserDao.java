package br.com.lux.dao;

import br.com.lux.servlet.ConnectionPoolConfig;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {

    public boolean verifyCredentials(String email) {
        String SQL = "SELECT * FROM USR WHERE email= ?";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa","sa");
            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, email);
            ResultSet resultSet = preparedStatement.executeQuery();

            System.out.println("Sucesso em logar");

            if(resultSet.next())
            {
                connection.close();
                return true;
            }
        }
        catch (Exception e)
        {
            System.out.println("UserCreateDAO - Erro ao verificar usuario: " + e.getMessage());
        }
        return false;
    }

        public boolean saveorUpdate(String name, String senha, String email, String firstName, String lastName)
        {
            try (Connection connection = ConnectionPoolConfig.getConnection())
            {
                String sql = "INSERT INTO USR (username, password, email, firstName, lastName) VALUES (?, ?, ?, ?, ?)";

                PreparedStatement preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setString(1, name);
                preparedStatement.setString(2, senha);
                preparedStatement.setString(3, email);
                preparedStatement.setString(4, firstName);
                preparedStatement.setString(5, lastName);
                preparedStatement.execute();

                preparedStatement.close();
                connection.close();

                return true;
            }
            catch (Exception e)
            {
                System.out.println("UserCreate - Erro ao fazer o cadastro " + e.getMessage());
            }

            return false;
        }

}
