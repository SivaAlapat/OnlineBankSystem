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

public class SendMoneyServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String senderAccountNumber = request.getParameter("senderAccountNumber");
        String receiverAccountNumber = request.getParameter("receiverAccountNumber");
        String amountStr = request.getParameter("amount");

        // Validate input
        if (senderAccountNumber == null || receiverAccountNumber == null || amountStr == null ||
            senderAccountNumber.isEmpty() || receiverAccountNumber.isEmpty() || amountStr.isEmpty()) {
            response.sendRedirect("error.jsp?message=Missing required parameters.");
            return;
        }

        double amount = Double.parseDouble(amountStr);

        // Database connection parameters
        String url = "jdbc:oracle:thin:@localhost:1521:xe";
        String dbUsername = "system";
        String dbPassword = "teju2345";
        Connection conn = null;
        PreparedStatement pstmtUpdateSender = null;
        PreparedStatement pstmtUpdateReceiver = null;
        PreparedStatement pstmtInsertTransaction = null;

        try {
            // Load the JDBC driver
            Class.forName("oracle.jdbc.driver.OracleDriver");

            // Establish the connection
            conn = DriverManager.getConnection(url, dbUsername, dbPassword);

            // Start transaction
            conn.setAutoCommit(false);

            // Deduct amount from sender's account
            String updateSenderBalanceSQL = "UPDATE pbank SET balance = balance - ? WHERE senderaccountnumber = ?";
            pstmtUpdateSender = conn.prepareStatement(updateSenderBalanceSQL);
            pstmtUpdateSender.setDouble(1, amount);
            pstmtUpdateSender.setString(2, senderAccountNumber);
            int rowsUpdatedSender = pstmtUpdateSender.executeUpdate();

            // Add amount to receiver's account
            String updateReceiverBalanceSQL = "UPDATE pbank SET balance = balance + ? WHERE receiveraccountnumber = ?";
            pstmtUpdateReceiver = conn.prepareStatement(updateReceiverBalanceSQL);
            pstmtUpdateReceiver.setDouble(1, amount);
            pstmtUpdateReceiver.setString(2, receiverAccountNumber);
            int rowsUpdatedReceiver = pstmtUpdateReceiver.executeUpdate();

            if (rowsUpdatedSender > 0 && rowsUpdatedReceiver > 0) {
                // Record the transaction
                String insertTransactionSQL = "INSERT INTO transactions (senderaccount, receiveraccount, amount) VALUES (?, ?, ?)";
                pstmtInsertTransaction = conn.prepareStatement(insertTransactionSQL);
                pstmtInsertTransaction.setString(1, senderAccountNumber);
                pstmtInsertTransaction.setString(2, receiverAccountNumber);
                pstmtInsertTransaction.setDouble(3, amount);
                pstmtInsertTransaction.executeUpdate();

                // Commit transaction
                conn.commit();
                response.sendRedirect("success.jsp?message=Transaction successful.");
            } else {
                conn.rollback();
                response.sendRedirect("error.jsp?message=Transaction failed.");
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            try {
                if (conn != null) {
                    conn.rollback();
                }
            } catch (SQLException ignore) {}
            response.sendRedirect("error.jsp?message=SQL error: " + e.getMessage());
        } finally {
            if (pstmtUpdateSender != null) try { pstmtUpdateSender.close(); } catch (SQLException ignore) {}
            if (pstmtUpdateReceiver != null) try { pstmtUpdateReceiver.close(); } catch (SQLException ignore) {}
            if (pstmtInsertTransaction != null) try { pstmtInsertTransaction.close(); } catch (SQLException ignore) {}
            if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
        }
    }
}
