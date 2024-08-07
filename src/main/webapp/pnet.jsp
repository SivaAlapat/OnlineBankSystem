<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Personal NetBanking</title>
    <!-- Tailwind CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            color: #333;
        }
        .background-image {
            background-image: url('srcs/nbank1.jpeg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            width: 90%;
            height: 90%;
            margin: auto;
            border-radius: 10px;
        }
    </style>
</head>
<body class="flex h-screen">
    <div class="w-1/2 flex items-center justify-center">
        <div class="netbanking-container shadow-lg p-8 bg-white rounded-lg max-w-lg w-full">
            <h1 class="header-text text-3xl text-blue-600 mb-6 text-center">Personal NetBanking</h1>
            <form action="login" method="post">
                <div class="mb-4">
                    <label for="accountnumber" class="form-label block text-lg font-bold text-blue-600 mb-2">Account Number</label>
                    <input type="text" class="form-control input block w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-600" id="accountnumber" name="accountnumber" required>
                </div>
                <div class="mb-4">
                    <label for="username" class="form-label block text-lg font-bold text-blue-600 mb-2">Username</label>
                    <input type="text" class="form-control input block w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-600" id="username" name="username" required>
                </div>
                <div class="mb-4">
                    <label for="password" class="form-label block text-lg font-bold text-blue-600 mb-2">Password</label>
                    <input type="password" class="form-control input block w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-600" id="password" name="password" required>
                </div>
                 <div class="mb-4">
                <label for="balance" class="form-label block text-lg font-bold text-blue-600 mb-2">Initial Balance</label>
                <input type="number" class="form-control input block w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-600" id="balance" name="balance" required>
            </div>
                <div>
                    <button type="submit" class="button is-primary w-full bg-blue-600 text-white py-2 rounded-lg text-xl hover:bg-blue-700 transition duration-300">Login</button>
                </div>
            </form>
        </div>
    </div>
    <div class="w-1/2 flex items-center justify-center">
        <div class="background-image"></div>
    </div>
</body>
</html>
