<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fixed Deposit Account</title>
    <!-- Bulma CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css">
    <style>
        body {
            background-image: url('srcs/fimage.jpeg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            font-family: 'Arial', sans-serif;
            
        }
        .hero.is-fullheight {
            background-color: rgba(255, 255, 255, 0.8);
        }
        .box {
            background-color: #fff;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
            margin-top: 100px;
            margin-left: 0; /* Align to the left */
        }
        h1.title {
            color: #ff851b; /* Orange color */
            margin-bottom: 20px;
        }
        .label {
            color: #ff851b; /* Orange color */
        }
        .input, .button {
            border-radius: 30px;
            padding: 10px 20px;
        }
        .input {
            border: 2px solid #ff851b; /* Orange color border for inputs */
        }
        .button.is-primary {
            background-color: #ff851b; /* Orange color */
            border-color: #ff851b; /* Orange color */
            transition: background-color 0.3s, border-color 0.3s;
        }
        .button.is-primary:hover {
            background-color: #e07c1a;
            border-color: #e07c1a;
        }
    </style>
</head>
<body>
    <section class="hero is-fullheight">
        <div class="hero-body">
            <div class="container">
                <div class="columns">
                    <div class="column is-half">
                        <div class="box">
                            <h1 class="title">Fixed Deposit Account</h1>
                            <form action="submitFDeposit.jsp" method="post">
                                <div class="field">
                                    <label class="label" for="accountNumber">Account Number</label>
                                    <div class="control">
                                        <input class="input" type="text" id="accountNumber" name="accountNumber" required>
                                    </div>
                                </div>
                                <div class="field">
                                    <label class="label" for="accountName">Account Name</label>
                                    <div class="control">
                                        <input class="input" type="text" id="accountName" name="accountName" required>
                                    </div>
                                </div>
                                <div class="field">
                                    <label class="label" for="depositAmount">Deposit Amount</label>
                                    <div class="control">
                                        <input class="input" type="number" id="depositAmount" name="depositAmount" required>
                                    </div>
                                </div>
                                <div class="field">
                                    <label class="label" for="tenure">Tenure (in years)</label>
                                    <div class="control">
                                        <input class="input" type="number" id="tenure" name="tenure" required>
                                    </div>
                                </div>
                                <div class="field">
                                    <div class="control">
                                        <button type="submit" class="button is-primary is-fullwidth">Submit</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Bulma JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.9.3/js/bulma.min.js"></script>
</body>
</html>
