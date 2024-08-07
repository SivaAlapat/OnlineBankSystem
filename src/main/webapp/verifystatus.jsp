<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = (ResultSet) request.getAttribute("resultSet");
    String message = request.getAttribute("message") != null ? (String) request.getAttribute("message") : "";

    if (rs == null) {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "teju2345");

            String sql = "SELECT * FROM savingsaccount WHERE status='Pending'";
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);
        } catch (Exception e) {
            e.printStackTrace();
            message = "An error occurred. Please try again.";
        }
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Verify Status</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome for icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h2 class="mb-4">Verify Account Status</h2>
        <div class="alert alert-info" role="alert">
            <%= message %>
        </div>
        <table class="table table-bordered">
            <thead class="thead-dark">
                <tr>
                    <th>Account Number</th>
                    <th>Account Holder</th>
                    <th>Balance</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <% while (rs != null && rs.next()) { %>
                    <tr>
                        <td><%= rs.getString("accountnumber") %></td>
                        <td><%= rs.getString("accountholder") %></td>
                        <td><%= rs.getDouble("balance") %></td>
                        <td><%= rs.getString("status") %></td>
                        <td>
                            <form action="updateStatus.jsp" method="post" class="d-inline">
                                <input type="hidden" name="account_number" value="<%= rs.getString("accountnumber") %>">
                                <button type="submit" name="action" value="approve" class="btn btn-success btn-sm">
                                    <i class="fas fa-check"></i> Approve
                                </button>
                            </form>
                            <form action="updateStatus.jsp" method="post" class="d-inline">
                                <input type="hidden" name="account_number" value="<%= rs.getString("accountnumber") %>">
                                <button type="submit" name="action" value="disapprove" class="btn btn-danger btn-sm">
                                    <i class="fas fa-times"></i> Disapprove
                                </button>
                            </form>
                        </td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <!-- Font Awesome for icons -->
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
</body>
</html>
<%
    if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
    if (stmt != null) try { stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
    if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
%>
