<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NRI NetBanking</title>
    <!-- Bulma CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.9.3/css/bulma.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            color: #333;
            height: 100vh;
            margin: 0;
            display: flex;
        }
        .background-image {
            width: 50%;
            background-image: url('srcs/image.png');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
        .form-container {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 50%;
            background: rgba(255, 255, 255, 0.9);
            padding: 30px;
        }
        .netbanking-container {
            border-radius: 10px;
            max-width: 400px;
            width: 100%;
        }
        .form-label {
            font-weight: bold;
            color: #3273dc; /* Bulma primary color */
        }
        .form-control {
            border-radius: 10px;
            padding: 10px;
        }
        .button.is-primary {
            background-color: #3273dc;
            border-color: #3273dc;
            border-radius: 10px;
            padding: 10px 20px;
            font-size: 1.1rem;
            transition: background-color 0.3s, border-color 0.3s;
        }
        .button.is-primary:hover {
            background-color: #276cda;
            border-color: #276cda;
        }
        .header-text {
            color: #3273dc;
            margin-bottom: 20px;
            font-size: 2rem;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="background-image"></div>
    <div class="form-container">
        <div class="netbanking-container">
            <h1 class="header-text">NRI NetBanking</h1>
            <form action="submitNRINet.jsp" method="post">
                <div class="field">
                    <label for="nriID" class="form-label label">NRI ID</label>
                    <div class="control">
                        <input type="text" class="form-control input" id="nriID" name="nriID" required>
                    </div>
                </div>
                <div class="field">
                    <label for="accountNumber" class="form-label label">Account Number</label>
                    <div class="control">
                        <input type="text" class="form-control input" id="accountNumber" name="accountNumber" required>
                    </div>
                </div>
                <div class="field">
                    <label for="username" class="form-label label">Username</label>
                    <div class="control">
                        <input type="text" class="form-control input" id="username" name="username" required>
                    </div>
                </div>
                <div class="field">
                    <label for="password" class="form-label label">Password</label>
                    <div class="control">
                        <input type="password" class="form-control input" id="password" name="password" required>
                    </div>
                </div>
                <div class="field">
                    <button type="submit" class="button is-primary is-fullwidth">Login</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
