package sample;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String accountNumber = request.getParameter("accountnumber");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        double balance=Double.parseDouble(request.getParameter("balance"));

        // Validate input parameters
        if (accountNumber == null || username == null || password == null || 
            accountNumber.isEmpty() || username.isEmpty() || password.isEmpty()) {
            response.sendRedirect("error.jsp?message=Missing required parameters.");
            return;
        }

        // Database connection parameters
        String url = "jdbc:oracle:thin:@localhost:1521:xe";
        String dbUsername = "system";
        String dbPassword = "teju2345";
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            // Load the JDBC driver
            Class.forName("oracle.jdbc.driver.OracleDriver");

            // Establish the connection
            conn = DriverManager.getConnection(url, dbUsername, dbPassword);

            // Create the SQL insert statement
            String sql = "INSERT INTO pbank (accountnumber, username, password, balance) VALUES (?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, accountNumber);
            pstmt.setString(2, username);
            pstmt.setString(3, password);
            pstmt.setDouble(4, balance); // Initialize balance to 0

            // Execute the insert
            int rowsAffected = pstmt.executeUpdate();
            if (rowsAffected > 0) {
                // Redirect to login page after successful registration
                response.sendRedirect("submitCorpNet.jsp");
            } else {
                response.sendRedirect("error.jsp?message=Failed to insert data.");
            }

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp?message=Driver not found.");
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp?message=SQL error: " + e.getMessage());
        } finally {
            if (pstmt != null) try { pstmt.close(); } catch (SQLException ignore) {}
            if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
        }
    }
}
