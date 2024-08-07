<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Corporate NetBanking</title>
    <!-- Tailwind CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            color: #333;
        }
        .video-container {
            position: relative;
            width: 100%;
            height: 100%;
            overflow: hidden;
        }
        .video-container video {
            position: absolute;
            top: 50%;
            left: 50%;
            width: 100%;
            height: 100%;
            object-fit: cover;
            transform: translate(-50%, -50%);
        }
    </style>
</head>
<body class="flex h-screen">
    <div class="w-1/2 flex items-center justify-center">
        <div class="netbanking-container shadow-lg p-8 bg-white rounded-lg max-w-lg w-full">
            <h1 class="header-text text-3xl text-blue-600 mb-6 text-center">Corporate NetBanking</h1>
            <form action="submitCorpNet.jsp" method="post">
                <div class="mb-4">
                    <label for="companyID" class="form-label block text-lg font-bold text-blue-600 mb-2">Company ID</label>
                    <input type="text" class="form-control input block w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-600" id="companyID" name="companyID" required>
                </div>
                <div class="mb-4">
                    <label for="accountNumber" class="form-label block text-lg font-bold text-blue-600 mb-2">Account Number</label>
                    <input type="text" class="form-control input block w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-600" id="accountNumber" name="accountNumber" required>
                </div>
                <div class="mb-4">
                    <label for="username" class="form-label block text-lg font-bold text-blue-600 mb-2">Username</label>
                    <input type="text" class="form-control input block w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-600" id="username" name="username" required>
                </div>
                <div class="mb-4">
                    <label for="password" class="form-label block text-lg font-bold text-blue-600 mb-2">Password</label>
                    <input type="password" class="form-control input block w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-600" id="password" name="password" required>
                </div>
                <div>
                    <button type="submit" class="button is-primary w-full bg-blue-600 text-white py-2 rounded-lg text-xl hover:bg-blue-700 transition duration-300">Login</button>
                </div>
            </form>
        </div>
    </div>
    <div class="w-1/2 flex items-center justify-center">
        <div class="video-container">
            <video autoplay loop muted>
                <source src="srcs/video.mp4" type="video/mp4">
                Your browser does not support the video tag.
            </video>
        </div>
    </div>
</body>
</html>
