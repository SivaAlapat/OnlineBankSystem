<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Online Banking System</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="srcs/styles.css" />
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-gradient">
        <a class="navbar-brand" href="#">
            <img src="srcs/bankLogo.png" alt="Your Logo" style="max-height: 50px" />
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            ?
        </button>
        <div class="collapse navbar-collapse justify-content-between" id="navbarNav">
            <ul class="navbar-nav mx-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.html">Home</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="accountDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Accounts
                    </a>
                    <div class="dropdown-menu" aria-labelledby="accountDropdown">
                        <a class="dropdown-item" href="openAccount.jsp">Open New Account</a>
                        <a class="dropdown-item" href="verifyStatus.jsp">Verify Status</a>
                        <a class="dropdown-item" href="checkAccountStatus.jsp">Check Account Status</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="transactions.jsp">Transactions</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Carousel -->
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" src="srcs/carosel1.jpg" alt="Slide 1" />
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="srcs/carosel2.jpg" alt="Slide 2" />
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="srcs/carosel3.jpg" alt="Slide 3" />
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <!-- New Container for Cards -->
    <div class="container my-5">
        <div class="row">
            <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="srcs/bankLogo.png" class="card-img-top" alt="Banking Service 1" />
                    <div class="card-body">
                        <h5 class="card-title">Banking Service 1</h5>
                        <p class="card-text">
                            Description of the banking service 1 offered by the bank.
                        </p>
                        <a href="#" class="btn btn-primary">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="srcs/bank.jpeg.jpg" class="card-img-top" alt="Banking Service 2" />
                    <div class="card-body">
                        <h5 class="card-title">Banking Service 2</h5>
                        <p class="card-text">
                            Description of the banking service 2 offered by the bank.
                        </p>
                        <a href="#" class="btn btn-primary">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="srcs/bankLogo.png" class="card-img-top" alt="Banking Service 3" />
                    <div class="card-body">
                        <h5 class="card-title">Banking Service 3</h5>
                        <p class="card-text">
                            Description of the banking service 3 offered by the bank.
                        </p>
                        <a href="#" class="btn btn-primary">Learn More</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- New Section with Image Beside Content and Gradient Background -->
    <div class="container-fluid py-5 gradient-bg">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <h2 class="text-white">Banking Made Easy</h2>
                    <p class="text-white">
                        Experience the convenience of modern banking with our wide range
                        of services designed to meet your needs.
                    </p>
                    <a href="#" class="btn btn-primary">Learn More</a>
                </div>
                <div class="col-md-6">
                    <img src="srcs/bankLogo.png" class="img-fluid" alt="Banking Convenience" />
                </div>
            </div>
        </div>
    </div>

    <!-- Contact Info -->
    <div class="container my-5">
        <div class="row">
            <div class="col-md-4">
                <div class="contact-card">
                    <h5>Contact Us</h5>
                    <p><strong>Address:</strong> Tenali, Guntur dist</p>
                    <p><strong>Email:</strong> tejualapati2205@gmail.com</p>
                    <p><strong>Phone:</strong> 9032297134</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="contact-card">
                    <h5>Support</h5>
                    <p><strong>Email:</strong> support@yourdomain.com</p>
                    <p><strong>Phone:</strong> +1 (555) 987-6543</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="contact-card">
                    <h5>Business Inquiries</h5>
                    <p><strong>Email:</strong> business@yourdomain.com</p>
                    <p><strong>Phone:</strong> +1 (555) 555-5555</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer Container -->
    <footer class="footer bg-dark text-white py-4">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h5>About Us</h5>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus
                        imperdiet.
                    </p>
                </div>
                <div class="col-md-4">
                    <h5>Quick Links</h5>
                    <ul class="list-unstyled">
                        <li><a href="#" class="text-white">Home</a></li>
                        <li><a href="#" class="text-white">About</a></li>
                        <li><a href="#" class="text-white">Services</a></li>
                        <li><a href="#" class="text-white">Contact</a></li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <h5>Contact Info</h5>
                    <p><strong>Address:</strong> 1234 Main St, Anytown, USA</p>
                    <p><strong>Email:</strong> contact@yourdomain.com</p>
                    <p><strong>Phone:</strong> +1 (555) 123-4567</p>
                </div>
            </div>
            <div class="text-center mt-4">
                <p>&copy; 2024 Your Company. All rights reserved.</p>
            </div>
        </div>
    </footer>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <!-- Custom JS -->
    <script src="srcs/script.js"></script>
</body>
</html>
