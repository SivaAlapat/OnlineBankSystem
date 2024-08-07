<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Savings Account</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            background: url('srcs/savebank.jpeg') no-repeat center center fixed;
            background-size: cover;
            font-family: 'Arial', sans-serif;
            color: #FF69B4; /* Arial Pink */
        }
        .container {
            margin-top: 50px;
        }
        .card {
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        .card-header {
            background-color: #FF69B4; /* Arial Pink */
            color: white;
            border-radius: 15px 15px 0 0;
            font-size: 1.5rem;
            font-weight: bold;
        }
        .form-control {
            border-radius: 10px;
        }
        .btn-primary {
            background-color: #FF69B4; /* Arial Pink */
            border: none;
            border-radius: 10px;
            transition: background-color 0.3s ease;
        }
        .btn-primary:hover {
            background-color: #FF1493; /* Deeper pink for hover effect */
        }
        .form-group label {
            font-weight: bold;
        }
        .form-group input {
            box-shadow: inset 0 2px 3px rgba(0,0,0,0.1);
        }
        .card-position {
            position: absolute;
            top: 50%;
            left: 10%;
            transform: translateY(-50%);
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row justify-content-start">
            <div class="col-md-6 card-position">
                <div class="card">
                    <div class="card-header text-center">
                        Savings Account
                    </div>
                    <div class="card-body">
                        <form action="saveaccount" method="post">
                            <div class="form-group">
                                <label for="accountNumber">Account Number</label>
                                <input type="text" class="form-control" id="accountNumber" name="accountNumber" required>
                            </div>
                            <div class="form-group">
                                <label for="accountHolder">Account Holder</label>
                                <input type="text" class="form-control" id="accountHolder" name="accountHolder" required>
                            </div>
                            <div class="form-group">
                                <label for="balance">Balance</label>
                                <input type="number" class="form-control" id="balance" name="balance" required>
                            </div>
                            <button type="submit" class="btn btn-primary btn-block">Save Account</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
