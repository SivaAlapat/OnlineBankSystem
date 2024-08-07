package sample;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/signup")
public class SignupServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the form parameters
        String fullName = request.getParameter("fn");
        String email = request.getParameter("eadd");
        int phone = Integer.parseInt(request.getParameter("phn")); // Keep phone number as String
        String dob = request.getParameter("dob");
        String address = request.getParameter("sadd");
        String username = request.getParameter("uname");
        String password = request.getParameter("pwd");
        String role = request.getParameter("rol");
        String confirmPassword = request.getParameter("cpass");
        

        if (!password.equals(confirmPassword)) {
            response.sendRedirect("signup.jsp?error=Passwords do not match");
            return;
        }

        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "teju2345");

            String sql = "INSERT INTO bankuser (fullName, email, phone, dob, address, username, password, role) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, fullName);
            pstmt.setString(2, email);
            pstmt.setInt(3, phone);
            pstmt.setString(4, dob);
            pstmt.setString(5, address);
            pstmt.setString(6, username);
            pstmt.setString(7, role);
            pstmt.setString(8, password);
          
            

            int row = pstmt.executeUpdate();
            if (row > 0) {
                response.sendRedirect("login.jsp?success=Account created successfully");
            } else {
                response.sendRedirect("signup.jsp?error=Account creation failed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("signup.jsp?error=An error occurred. Please try again.");
        } finally {
            if (pstmt != null) try { pstmt.close(); } catch (Exception e) { e.printStackTrace(); }
            if (conn != null) try { conn.close(); } catch (Exception e) { e.printStackTrace(); }
        }
    }
}
