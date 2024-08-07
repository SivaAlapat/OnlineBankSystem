<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Result</title>
    <!-- Tailwind CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            color: #333;
        }
    </style>
</head>
<body class="flex h-screen items-center justify-center">
    <div class="max-w-lg w-full p-8 bg-white rounded-lg shadow-lg">
        <h1 class="text-3xl text-blue-600 mb-6 text-center">Login Result</h1>
        <p class="text-lg text-center"><%= request.getAttribute("message") %></p>
        <p class="text-lg text-center"><%= request.getAttribute("accountDetails") %></p>
        <div class="text-center mt-4">
            <a href="pnet.jsp" class="button is-primary bg-blue-600 text-white py-2 px-4 rounded-lg text-xl hover:bg-blue-700 transition duration-300">Back to Login</a>
        </div>
    </div>
</body>
</html>
