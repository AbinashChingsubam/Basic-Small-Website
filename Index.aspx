<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Paamel_Foundation_Website.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Paamel Foundation</title>
    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="./Assets/img/favicon.ico" />
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <!-- Include Font Awesome from CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Custom Stylesheet -->
    <link rel="stylesheet" href="./Assets/css/styles.css" />

</head>
<body>
    <form id="form1" runat="server">
        <!-- Preloader -->
        <div class="preloader">
            <img src="./Assets/img/preloader.gif" alt="Loading..." class="preloader-gif" />
        </div>

        <header class="header">
            <!-- Navigation Section -->
            <nav class="nav-section d-flex flex-row align-items-center p-2 position-relative border-bottom z-3">
                <div class="logo ms-md-4 me-3">
                    <a href=".Index.aspx" class="no-underline">
                        <img src="./Assets/img/Paamel_Foundation_Logo_Small_Bgremove.png" alt="Logo" />
                    </a>
                </div>
                <div class="navbrand ms-2">
                    <a href="./Index.aspx" class="no-underline">
                        <h1 class="text-header text-secondary-green mb-0 fs-3">Paamel Foundation</h1>
                    </a>
                </div>
                <div class="menus fw-light d-flex flex-column flex-lg-row ms-lg-auto bg-primary-gray">
                    <!-- Home Nav Item -->
                    <div class="home me-md-4">
                        <div
                            class="nav-title p-3 p-lg-2 border bg-secondary-blue-hover text-secondary-blue-lg-hover d-lg-flex flex-column align-items-center text-uppercase">
                            <a href="./Index.aspx" class="nav-link">Home</a>
                        </div>
                    </div>
                    <!-- About Nav Item -->
                    <div class="about me-md-4">
                        <div
                            class="nav-title p-3 p-lg-2 p-lg-2 border bg-secondary-blue-hover text-secondary-blue-lg-hover d-lg-flex flex-column align-items-center text-uppercase">
                            <a href="./Index.aspx#about" class="nav-link">About</a>
                        </div>
                    </div>
                    <!-- Aims Nav Item -->
                    <div class="aims me-md-4">
                        <div
                            class="nav-title p-3 p-lg-2 border bg-secondary-blue-hover text-secondary-blue-lg-hover d-lg-flex flex-column align-items-center text-uppercase">
                            <a href="./Index.aspx#aims" class="nav-link">Aims</a>
                        </div>
                    </div>
                    <!-- Management Nav Item -->
                    <div class="management me-md-4">
                        <div
                            class="nav-title p-3 p-lg-2 border bg-secondary-blue-hover text-secondary-blue-lg-hover d-lg-flex flex-column align-items-center text-uppercase">
                            <a href="./Index.aspx#management" class="nav-link">Management</a>
                        </div>
                    </div>
                    <!-- Gallery Nav Item -->
                    <div class="gallery me-md-4">
                        <div
                            class="nav-title p-3 p-lg-2 border bg-secondary-blue-hover text-secondary-blue-lg-hover d-lg-flex flex-column align-items-center text-uppercase">
                            <a href="GalleryCover.aspx" class="nav-link">Gallery</a>
                        </div>
                    </div>
                    <!-- Contact Nav Item -->
                    <div class="contact me-md-4">
                        <div
                            class="nav-title p-3 p-lg-2 border bg-secondary-blue-hover text-secondary-blue-lg-hover d-lg-flex flex-column align-items-center text-uppercase">
                            <a href="./Index.aspx#contact" class="nav-link">Contact</a>
                        </div>
                    </div>
                    <div class="contact me-md-4">
                        <div
                            class="nav-title p-3 p-lg-2 border bg-secondary-blue-hover text-secondary-blue-lg-hover d-lg-flex flex-column align-items-center text-uppercase">
                            <a href="Login.aspx" class="nav-link">Login</a>
                        </div>
                    </div>
                </div>
                <div class="hamburger-button d-lg-none ms-auto cursor-pointer">
                    <i class="fa-solid fa-bars fa-xl text-tertiary-green"></i>
                </div>
            </nav>
        </header>

        <main class="main">
            <%-- Hero Section --%>
            <section id="heroSection" class="hero d-flex flex-column justify-content-center align-items-center align-items-md-start  position-relative text-light h-75">

                <asp:Image ID="ImageBanner" runat="server"  CssClass="img-fluid w-100"/>
                <%--  <h2 class="position-relative text-uppercase text-header fw-bold fs-1 mb-4">Paamel Foundation</h2>
                <p class="position-relative fs-6">An Initiative of Babina Group of Companies</p> --%>
            </section>

            <section class="about container py-5" id="about">
                <div class="row">
                    <div class="col-lg-4 about-image mb-4 text-center">
                        <img src="./Assets/img/Paamel_Foundation_Logo_Small.jpg" alt="About Image" class="img-fluid" />
                    </div>
                    <div class="col-lg-8 p-4">
                        <h2 class="fw-bold fs-3 text-header text-secondary-blue">About Our Foundation</h2>
                        <hr class="hr-blue" />
                        <p class="mt-3">Paamel Foundation, a non-profit organisation is an initiative of Babina Group of Companies. At the heart of our work is the belief that everyone deserves opportunity. Guided by the belief that all children and old aged people should have an equal opportunity to thrive. We at Paamel focus mainly on improving the lives of the children, families and communities through improved education, health and family economic stability. It takes deliberate action to challenge the status quo.</p>
                        <p>Babina Group Of Companies is taking Corporate Social Responsibility (CSR) for the functioning of Paamel Foundation and to raise fund by receiving donation, subscription and financial assistance from members, company and local body.</p>
                    </div>
                </div>
            </section>

            <section class="aims py-5 bg-primary-green" id="aims">
                <div class="container">
                    <div class="row d-flex justify-content-center">
                        <div class="col-md-6 col-lg-4 p-3">
                            <div class="card rounded shadow border p-4">
                                <div class="d-flex justify-content-center my-3">
                                    <i class="fa-solid fa-crosshairs text-secondary-blue"></i>
                                </div>
                                <h3 class="card-title text-center text-uppercase text-secondary-blue fs-4 mb-3 fw-bold">Our Aim</h3>
                                <p class="card-text">To support the development of underprivileged sectionsof the society.</p>
                            </div>
                        </div>

                        <div class="col-md-6 col-lg-4 p-3">
                            <div class="card rounded shadow border p-4">
                                <div class="d-flex justify-content-center my-3">
                                    <i class="fa-solid fa-flag text-secondary-blue"></i>
                                </div>
                                <h3 class="card-title text-center text-uppercase text-secondary-blue fs-4 mb-3 fw-bold">Our Mission</h3>
                                <p class="card-text">To improve the quality of life for the most marginalised people. Ensuring their basic rights and enhancing their dignity of life through health, education and economic development.</p>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 p-3">
                            <div class="card rounded shadow border p-4">
                                <div class="d-flex justify-content-center my-3">
                                    <i class="fa-solid fa-eye text-secondary-blue"></i>
                                </div>
                                <h3 class="card-title text-center text-uppercase text-secondary-blue fs-4 mb-3 fw-bold">Our Vision</h3>
                                <p class="card-text">Restoring childhoods to children and sustainability to individuals and communities.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="management bg-primary-gray py-5" id="management">
                <div class="container">
                    <h2 class="text-header text-secondary-blue fs-3 fw-bold text-center">Our Management</h2>
                    <hr class="hr-blue-center mb-3" />
                    <div class="row d-flex justify-content-center">
                        <div class="col-md-6 col-xl-4 p-3 ">
                            <div class="card rounded shadow border p-4 text-center">
                                <img src="./Assets/img/Management/md.png" alt="Management Image" class="card-img-top rounded-circle mx-auto mt-3" />
                                <div class="card-body">
                                    <h5 class="card-title text-center text-uppercase text-secondary-blue fs-5 mb-2 fw-bold">Thangjam Dhabali Singh</h5>
                                    <p class="card-text text-center mb-2">Occupation - <span class="fw-bold">Doctor</span></p>
                                    <p class="card-text text-center">Designation - <span class="fw-bold">President</span></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-4 p-3">
                            <div class="card rounded shadow border p-4 text-center">
                                <img src="./Assets/img/Management/SanjenbamRitaDevi.png" alt="Management Image" class="card-img-top rounded-circle mx-auto mt-3" />
                                <div class="card-body">
                                    <h5 class="card-title text-center text-uppercase text-secondary-blue fs-5 mb-2 fw-bold">Sanjenbam Rita Devi</h5>
                                    <p class="card-text text-center mb-2">Occupation - <span class="fw-bold">Doctor</span></p>
                                    <p class="card-text text-center">Designation - <span class="fw-bold">Vice President</span></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-4 p-3">
                            <div class="card rounded shadow border p-4 text-center">
                                <img src="./Assets/img/Management/brenda.png" alt="Management Image" class="card-img-top rounded-circle mx-auto mt-3" />
                                <div class="card-body">
                                    <h5 class="card-title text-center text-uppercase text-secondary-blue fs-5 mb-2 fw-bold">Khumbongmayum Brenda</h5>
                                    <p class="card-text text-center mb-2">Occupation - <span class="fw-bold">Business</span></p>
                                    <p class="card-text text-center">Designation - <span class="fw-bold">Secretary</span></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-4 p-3">
                            <div class="card rounded shadow border p-4 text-center">
                                <img src="./Assets/img/Management/naoba.png" alt="Management Image" class="card-img-top rounded-circle mx-auto mt-3" />
                                <div class="card-body">
                                    <h5 class="card-title text-center text-uppercase text-secondary-blue fs-5 mb-2 fw-bold">Naoba Thangjam</h5>
                                    <p class="card-text text-center mb-2">Occupation - <span class="fw-bold">Business</span></p>
                                    <p class="card-text text-center">Designation - <span class="fw-bold">Treasurer</span></p>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-xl-4 p-3">
                            <div class="card rounded shadow border p-4 text-center">
                                <img src="./Assets/img/Management/momocha.png" alt="Management Image" class="card-img-top rounded-circle mx-auto mt-3" />
                                <div class="card-body">
                                    <h5 class="card-title text-center text-uppercase text-secondary-blue fs-5 mb-2 fw-bold">Momocha Thangjam</h5>
                                    <p class="card-text text-center mb-2">Occupation - <span class="fw-bold">Doctor</span></p>
                                    <p class="card-text text-center">Designation - <span class="fw-bold">Assistant Secretary</span></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>

        <footer class="footer pt-5 py-2 px-4 bg-secondary-blue text-white container-fluid" id="contact">
            <div class="row">
                <div class="contact col-lg-4 px-4">
                    <h2 class="text-header fs-3 mb-3">Contact Us At</h2>
                    <hr class="hr-white" />
                    <div class="email d-flex">
                        <div class="email-icon me-3 d-flex justify-content-center align-items-center">
                            <i class="fa-solid fa-envelope text-light fa-2x"></i>
                        </div>
                        <p class="mt-3">paamelfoundation@gmail.com</p>
                    </div>
                    <div class="address d-flex">
                        <div class="address-icon me-3 d-flex justify-content-center align-items-center">
                            <i class="fa-solid fa-location-dot text-light fa-2x"></i>
                        </div>
                        <p class="mt-3">Ground floor, The Classic Hotel, North AOC,Imphal West </p>
                    </div>

                    <div class="register d-flex">
                        <div class="register-icon me-3 d-flex justify-content-center align-items-center">
                            <i class="fa-solid fa-registered text-light fa-2x"></i>
                        </div>
                        <p class="mt-3">Registered under Section 7(1) of the Manipur Societies Registration Act, 1989 ( Manipur Act No. 1 of 1990 ) bearing Registration No. 885/M/SR/2022.</p>
                    </div>
                </div>
            </div>
            <hr />
            <div class="website-developer text-center">
                <p>&copy; 2024. Website Designed and Developed by <a href="https://cubeten.com" class="no-underline text-light text-bs-light-hover">CubeTen technologies</a>. All Rights Reserved.</p>
            </div>
        </footer>

        <section class="scroll-to-top">
            <button class="scroll-to-top-button">
                <i class="fa-solid fa-chevron-up fa-xl"></i>
            </button>
        </section>



        <!-- Jquery Script -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
            integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <!-- Popper and Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
            integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
            crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
            integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
            crossorigin="anonymous"></script>
        <!-- Custom JS -->
        <script src="./Assets/js/main.js"></script>
    </form>
</body>
</html>
