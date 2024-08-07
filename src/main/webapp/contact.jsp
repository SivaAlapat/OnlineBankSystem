<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <!-- Bulma CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.9.3/css/bulma.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            color: #333;
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: flex-start; /* Aligns the form container to the left */
            align-items: center;
            background-image: url('srcs/contact.gif');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;
            padding-left: 10%; /* Adds some padding to center the form visually */
        }
        .contact-container {
            background: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 10px;
            max-width: 400px;
            width: 100%;
        }
        .form-label {
            font-weight: bold;
            color: #3273dc; /* Bulma primary color */
        }
        .input, .textarea {
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
    <div class="contact-container">
        <h1 class="header-text">Contact Us</h1>
        <form action="submitContact.jsp" method="post">
            <div class="field">
                <label for="name" class="form-label label">Name</label>
                <div class="control">
                    <input type="text" class="input" id="name" name="name" required>
                </div>
            </div>
            <div class="field">
                <label for="email" class="form-label label">Email</label>
                <div class="control">
                    <input type="email" class="input" id="email" name="email" required>
                </div>
            </div>
            <div class="field">
                <label for="subject" class="form-label label">Subject</label>
                <div class="control">
                    <input type="text" class="input" id="subject" name="subject" required>
                </div>
            </div>
            <div class="field">
                <label for="message" class="form-label label">Message</label>
                <div class="control">
                    <textarea class="textarea" id="message" name="message" rows="5" required></textarea>
                </div>
            </div>
            <div class="field">
                <button type="submit" class="button is-primary is-fullwidth">Submit</button>
            </div>
        </form>
    </div>
</body>
</html>
