<%@ Page Title="" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="Financial_Assistance_2024_Gallery.aspx.cs" Inherits="Paamel_Foundation_Website.Financial_Assistance_2024_Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Breadcrumb Section -->
    <section class="breadcrumb bg-primary-gray text-header py-2">
        <div class="container d-flex flex-column flex-md-row">
            <p class="mb-1 mb-md-0">You are here: /</p>
            <ul class="list-none mb-0 p-0 ps-md-2 d-flex gap-1 flex-wrap">
                <li>
                    <a href="./Index.aspx" class="text-secondary-green no-underline text-bs-primary-hover">Home</a>
                </li>
                <li>
                    <a href="./Gallery.aspx" class="text-secondary-green no-underline text-bs-primary-hover">Gallery</a>
                </li>
                <li>Financial Assistance, 2024</li>
            </ul>
        </div>
    </section>

    <!-- Photos Section -->
    <section class="photo-album py-4 container" id="main-content">
        <h2 class="text-header text-uppercase fw-bold text-center text-secondary-blue">Financial Assistance, 2024 Gallery</h2>
        <hr class="hr-blue-center mb-5" />
        <div class="photo-container">
            <div class="row">
                <div class="photo-item col-md-6 col-lg-4 mb-4">
                    <a href="./Assets/img/Financial_Assistance_2024/Image(1).jpeg" data-toggle="lightbox"
                        data-gallery="example-gallery" class="d-block position-relative">
                        <img src="./Assets/img/Financial_Assistance_2024/Image(1).jpeg" class="img-fluid rounded" />
                    </a>
                </div>
                <div class="photo-item col-md-6 col-lg-4 mb-4">
                    <a href="./Assets/img/Financial_Assistance_2024/Image(2).jpeg" data-toggle="lightbox"
                        data-gallery="example-gallery" class="d-block position-relative">
                        <img src="./Assets/img/Financial_Assistance_2024/Image(2).jpeg" class="img-fluid rounded" />
                    </a>
                </div>
                <div class="photo-item col-md-6 col-lg-4 mb-4">
                    <a href="./Assets/img/Financial_Assistance_2024/Image(3).jpeg" data-toggle="lightbox"
                        data-gallery="example-gallery" class="d-block position-relative">
                        <img src="./Assets/img/Financial_Assistance_2024/Image(3).jpeg" class="img-fluid rounded" />
                    </a>
                </div>
                <div class="photo-item col-md-6 col-lg-4 mb-4">
                    <a href="./Assets/img/Financial_Assistance_2024/Image(4).jpeg" data-toggle="lightbox"
                        data-gallery="example-gallery" class="d-block position-relative">
                        <img src="./Assets/img/Financial_Assistance_2024/Image(4).jpeg" class="img-fluid rounded" />
                    </a>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
