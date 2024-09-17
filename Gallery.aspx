 <%@ Page Title="" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="Paamel_Foundation_Website.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Breadcrumb Section -->
    <section class="breadcrumb bg-primary-gray text-header py-2">
        <div class="container d-flex">
            <p class="mb-0">You are here: /</p>
            <ul class="list-none mb-0 ps-2 d-flex gap-1">
                <li>
                    <a href="./Index.aspx" class="text-secondary-green no-underline text-bs-primary-hover">Home</a>
                </li>
                <li>Gallery</li>
            </ul>
        </div>
    </section>

    <!-- Photos Section -->
    <section class="photos py-4" id="main-content">
        <div class="container">
            <h2 class="text-header fs-3 fw-bold mb-2 text-center text-uppercase text-secondary-blue">Gallery</h2>
            <hr class="hr-blue-center" />
            <div class="photo-list py-5">
                <!-- Album Item -->
                <div class="album-item card mx-2 mx-sm-auto shadow text-center p-1 mb-5">
                    <a href="./Classic_Football_Academy_Gallery.aspx" class="img-container">
                        <img src="./Assets/img/Classic_Football_Academy/Image(9).jpg" alt="Photo Gallery Image" class="img-fluid card-img-top" />
                    </a>
                    <div class="card-body">
                        <h3 class="card-title fs-4 text-header mb-1 text-secondary-blue">Classic Football Academy</h3>
                        <p class="card-text text-secondary-saffron mb-1">Photos &lbbrk;20&rbbrk;</p>
                        <%--<p class="card-text fs-8">Published on : 05th April, 2024</p>--%>
                    </div>
                </div>
                <!-- Album Item -->
                <div class="album-item card mx-2 mx-sm-auto shadow text-center p-1 mb-5">
                    <a href="./Financial_Assistance_2024_Gallery.aspx" class="img-container">
                        <img src="./Assets/img/Financial_Assistance_2024/Image(1).jpeg" alt="Photo Gallery Image" class="img-fluid card-img-top" />
                    </a>
                    <div class="card-body">
                        <h3 class="card-title fs-4 text-header mb-1 text-secondary-blue">Financial Assistance, 2024</h3>
                        <p class="card-text text-secondary-saffron mb-1">Photos &lbbrk;4&rbbrk;</p>
                        <p class="card-text fs-8">Published on : 26th July, 2024</p>
                    </div>
                </div>

                <!-- Album Item -->
                <div class="album-item card mx-2 mx-sm-auto shadow text-center p-1 mb-5">
                    <a href="./Tree_Plantation_2024_Gallery.aspx" class="img-container">
                        <img src="./Assets/img/Tree_Plantation_2024/Image(12).jpg" alt="Photo Gallery Image" class="img-fluid card-img-top" />
                    </a>
                    <div class="card-body">
                        <h3 class="card-title fs-4 text-header mb-1 text-secondary-blue">Tree Plantation, 2024</h3>
                        <p class="card-text text-secondary-saffron mb-1">Photos &lbbrk;26&rbbrk;</p>
                        <p class="card-text fs-8">Published on : 24th June, 2024</p>
                    </div>
                </div>

                <!-- Album Item -->
                <div class="album-item card mx-2 mx-sm-auto shadow text-center p-1 mb-5">
                    <a href="./Roofing_Materials_2024_Gallery.aspx" class="img-container">
                        <img src="./Assets/img/Roofing_Materials_2024/Image(4).jpg" alt="Photo Gallery Image" class="img-fluid card-img-top" />
                    </a>
                    <div class="card-body">
                        <h3 class="card-title fs-4 text-header mb-1 text-secondary-blue">Roofing Materials, 2024</h3>
                        <p class="card-text text-secondary-saffron mb-1">Photos &lbbrk;5&rbbrk;</p>
                        <p class="card-text fs-8">Published on : 29th April, 2024</p>
                    </div>
                </div>

                <!-- Album Item -->
                <div class="album-item card mx-2 mx-sm-auto shadow text-center p-1 mb-5">
                    <a href="./Award_Ceremony_2024_Gallery.aspx" class="img-container">
                        <img src="./Assets/img/Award_Ceremony_2024/Image(5).jpg" alt="Photo Gallery Image" class="img-fluid card-img-top" />
                    </a>
                    <div class="card-body">
                        <h3 class="card-title fs-4 text-header mb-1 text-secondary-blue">Award Ceremony, 2024</h3>
                        <p class="card-text text-secondary-saffron mb-1">Photos &lbbrk;9&rbbrk;</p>
                        <p class="card-text fs-8">Published on : 05th April, 2024</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
