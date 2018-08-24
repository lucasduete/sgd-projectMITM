package br.edu.ifpb.mitm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DataDao {

    private Connection connection;

    public DataDao() throws SQLException, ClassNotFoundException {
        this.connection = Conexao.getConnection();
    }

    public void persist(String email, String password) {
        String sql = "INSERT INTO Informacoes(email, password) VALUES (?,?);";

        try (PreparedStatement stmt = connection.prepareStatement(sql)) {

            stmt.setString(1, email);
            stmt.setString(2, password);

            stmt.executeUpdate();

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}
