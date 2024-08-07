<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String accountNumber = request.getParameter("account_number");
    String action = request.getParameter("action");
    String status = "Pending";

    if ("approve".equals(action)) {
        status = "Approved";
    } else if ("disapprove".equals(action)) {
        status = "Disapproved";
    }

    Connection conn = null;
    PreparedStatement pstmt = null;
    Statement stmt = null;
    ResultSet rs = null;

    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "teju2345");

        String updateSql = "UPDATE currentaccount SET status=? WHERE accountnumber=?";
        pstmt = conn.prepareStatement(updateSql);
        pstmt.setString(1, status);
        pstmt.setString(2, accountNumber);

        int row = pstmt.executeUpdate();

        String message = "";
        if (row > 0) {
            message = "Account status updated successfully.";
        } else {
            message = "Failed to update account status.";
        }

        String selectSql = "SELECT * FROM savingsaccount WHERE status='Pending'";
        stmt = conn.createStatement();
        rs = stmt.executeQuery(selectSql);

        request.setAttribute("message", message);
        request.setAttribute("resultSet", rs);
        RequestDispatcher dispatcher = request.getRequestDispatcher("verifystatus.jsp");
        dispatcher.forward(request, response);
    } catch (Exception e) {
        e.printStackTrace();
        response.sendRedirect("verifystatus.jsp?message=An error occurred. Please try again.");
    } finally {
        if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (stmt != null) try { stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (pstmt != null) try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
    }
%>
