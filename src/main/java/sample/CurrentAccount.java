package sample;



import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class CurrentAccount extends HttpServlet {
    private static final long serialVersionUID = 1L;

  

    	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	        // Get the form parameters
    	    	 String accountNumber = request.getParameter("accountNumber");
    	         String accountName = request.getParameter("accountName");
    	         Double balance = Double.parseDouble(request.getParameter("balance"));

    	         Connection conn = null;
    	         PreparedStatement pstmt = null;

    	         try {
    	             Class.forName("oracle.jdbc.driver.OracleDriver");
    	             conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "teju2345");

    	             String sql = "INSERT INTO currentaccount (accountnumber, accountname, balance, status) VALUES (?, ?, ?, ?)";
    	             pstmt = conn.prepareStatement(sql);
    	             pstmt.setString(1, accountNumber);
    	             pstmt.setString(2, accountName);
    	             pstmt.setDouble(3, balance);
    	             pstmt.setString(4, "Pending");

    	             int row = pstmt.executeUpdate();
    	             if (row > 0) {
    	                 response.sendRedirect("currentAccount.jsp?message=Account creation is successful. It will be approved by the manager.");
    	             } else {
    	                 response.sendRedirect("currentAccount.jsp?message=Account creation failed. Please try again.");
    	             }
    	         } catch (Exception e) {
    	             e.printStackTrace();
    	             response.sendRedirect("currentAccount.jsp?message=An error occurred. Please try again.");
    	         } finally {
    	             if (pstmt != null) try { pstmt.close(); } catch (Exception e) { e.printStackTrace(); }
    	             if (conn != null) try { conn.close(); } catch (Exception e) { e.printStackTrace(); }
    	         }
    	     }
}

