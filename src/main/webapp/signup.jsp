<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup - Online Banking System</title>
    <!-- Bulma CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css" rel="stylesheet">
    <style>
        body {
            background-image: url('srcs/supp.png');
            background-size: cover; /* Cover the entire page */
            background-repeat: no-repeat; /* Do not repeat the image */
            background-attachment: fixed; /* Fix the background image */
            background-position: center; /* Center the background image */
        }
        .container {
            background-color: rgba(255, 255, 255, 0.8); /* White background with opacity */
            padding: 20px;
            border-radius: 8px;
        }
    </style>
</head>
<body>
    <div class="container my-5">
        <h2 class="title is-4">Signup</h2>
        <form id="signupForm" action="signup" method="post">
            <div class="columns">
                <div class="column">
                    <div class="field">
                        <label class="label" for="signupFullName">Full Name</label>
                        <div class="control">
                            <input class="input" type="text" name="fn" id="signupFullName" placeholder="Enter your full name" required>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="field">
                        <label class="label" for="signupEmail">Email address</label>
                        <div class="control">
                            <input class="input" type="email" id="signupEmail" name="eadd" placeholder="Enter your email" required>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="field">
                        <label class="label" for="signupPhone">Phone Number</label>
                        <div class="control">
                            <input class="input" type="tel" id="signupPhone" name="phn" placeholder="Enter your phone number" required>
                        </div>
                    </div>
                </div>
            </div>
            <div class="columns">
                <div class="column">
                    <div class="field">
                        <label class="label" for="signupDob">Date of Birth</label>
                        <div class="control">
                            <input class="input" type="date" name="dob" id="signupDob" required>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="field">
                        <label class="label" for="signupAddress">Address</label>
                        <div class="control">
                            <input class="input" type="text" id="signupAddress" name="sadd" placeholder="Enter your address" required>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="field">
                        <label class="label" for="signupUsername">Username</label>
                        <div class="control">
                            <input class="input" type="text" id="signupUsername" name="uname" placeholder="Enter your username" required>
                        </div>
                    </div>
                </div>
            </div>
            <div class="columns">
                <div class="column">
                    <div class="field">
                        <label class="label" for="signupRole">Role</label>
                        <div class="control">
                            <div class="select">
                                <select id="signupRole" name="rol" required>
                                    <option value="">Select role</option>
                                    <option value="admin">Admin</option>
                                    <option value="user">User</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="field">
                        <label class="label" for="signupPassword">Password</label>
                        <div class="control">
                            <input class="input" type="password" id="signupPassword" name="pwd" placeholder="Enter your password" required>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="field">
                        <label class="label" for="signupConfirmPassword">Confirm Password</label>
                        <div class="control">
                            <input class="input" type="password" id="signupConfirmPassword" name="cpass" placeholder="Confirm your password" required>
                        </div>
                    </div>
                </div>
            </div>
            <div class="field">
                <div class="control">
                    <button type="submit" class="button is-primary">Sign Up</button>
                    <a href="login.jsp" id="showLogin" class="button is-link is-light">Already have an account? Login</a>
                </div>
            </div>
        </form>
    </div>

    <!-- Bulma JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bulma@0.9.4/dist/js/bulma.min.js"></script>
</body>
</html>
