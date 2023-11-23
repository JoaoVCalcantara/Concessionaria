package br.com.lux.servlet;
<<<<<<< HEAD
import org.apache.commons.dbcp2.BasicDataSource;
=======

import org.apache.commons.dbcp2.BasicDataSource;

>>>>>>> backup2
import java.sql.Connection;
import java.sql.SQLException;

public class ConnectionPoolConfig {

    private static BasicDataSource dataSource;
<<<<<<< HEAD
=======

>>>>>>> backup2
    private ConnectionPoolConfig() {
        getDataSource();
    }

    private static BasicDataSource getDataSource() {

        if (dataSource == null) {
            dataSource = new BasicDataSource();
            dataSource.setUrl("jdbc:h2:~/test");
            dataSource.setUsername("sa");
            dataSource.setPassword("sa");
            dataSource.setMinIdle(5);   // Número mínimo de conexões ociosas no pool
            dataSource.setMaxIdle(10);  // Número máximo de conexões ociosas no pool
            dataSource.setMaxTotal(50); // Número máximo de conexões totais no pool

            System.out.println("New connection pool created with successful");

        }
<<<<<<< HEAD
        return dataSource;
    }
    public static Connection getConnection() throws SQLException {
=======

        return dataSource;

    }

    public static Connection getConnection() throws SQLException {

>>>>>>> backup2
        return getDataSource().getConnection();

    }

}