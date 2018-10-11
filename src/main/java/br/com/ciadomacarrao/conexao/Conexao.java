package br.com.ciadomacarrao.conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {

    private static final String url= "jdbc:mysql://locahost:3306/crudbasico";
//    private static final String url= "jdbc:sqlserver://localhost;database=CrudBasico;user=sa;password=yourStrong(!)Password";
    private static final String username = "root";
    private static final String password = "";

    public static Connection getConection() {
        try {
            return DriverManager.getConnection(url, username, password);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}
