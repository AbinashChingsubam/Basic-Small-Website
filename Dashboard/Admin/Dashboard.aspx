<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="INMP_Website.Admin.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- Dashboard Banner --%>
    <section class="dashboard-banner">
        <div class="container-fluid d-flex flex-column justify-content-center">
            <p class="fs-5">Welcome to</p>
            <h2 class="text-uppercase fs-1">INMP Website Dashboard</h2>
        </div>
    </section>

    <%-- Content Counter --%>
    <section class="dashboard-content py-4">
        <div class="container">
            <div class="row g-4">
                <div class="col-md-4 col-lg-4">
                    <div class="card shadow d-flex flex-row align-items-center px-3">
                        <div class="card-body">
                            <p class="card-text mb-1">Total Users:</p>
                            <h3 id="userCounterHeading" runat="server" data-purecounter-start="0" data-purecounter-end="1" data-purecounter-duration="1" class="card-title purecounter">1</h3>
                        </div>
                        <div class="card-icon rounded-3 d-flex justify-content-center align-items-center">
                            <i class="fa-solid fa-user fa-2x text-light"></i>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-lg-4">
                    <div class="card shadow d-flex flex-row align-items-center px-3">
                        <div class="card-body">
                            <p class="card-text mb-1">Total Notifications:</p>
                            <h3 id="notificationCounterHeading" runat="server" purecounter-start="0" data-purecounter-end="1" data-purecounter-duration="1" class="card-title purecounter">1</h3>
                        </div>
                        <div class="card-icon rounded-3 d-flex justify-content-center align-items-center">
                            <i class="fa-regular fa-calendar fa-2x text-light"></i>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-lg-4">
                    <div class="card shadow d-flex flex-row align-items-center px-3">
                        <div class="card-body">
                            <p class="card-text mb-1">Total Conferences:</p>
                            <h3 id="conferenceCounterHeading" runat="server" purecounter-start="0" data-purecounter-end="1" data-purecounter-duration="1" class="card-title purecounter">1</h3>
                        </div>
                        <div class="card-icon rounded-3 d-flex justify-content-center align-items-center">
                            <i class="fa-solid fa-people-group fa-2x text-light"></i>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-lg-4">
                    <div class="card shadow d-flex flex-row align-items-center px-3">
                        <div class="card-body">
                            <p class="card-text mb-1">Total Publications:</p>
                            <h3 id="publicationCounterHeading" runat="server" purecounter-start="0" data-purecounter-end="1" data-purecounter-duration="1" class="card-title purecounter">1</h3>
                        </div>
                        <div class="card-icon rounded-3 d-flex justify-content-center align-items-center">
                            <i class="fa-solid fa-book fa-2x text-light"></i>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-lg-4">
                    <div class="card shadow d-flex flex-row align-items-center px-3">
                        <div class="card-body">
                            <p class="card-text mb-1">Total Bulletins:</p>
                            <h3 id="bulletinCounterHeading" runat="server" purecounter-start="0" data-purecounter-end="1" data-purecounter-duration="1" class="card-title purecounter">1</h3>
                        </div>
                        <div class="card-icon rounded-3 d-flex justify-content-center align-items-center">
                            <i class="fa-solid fa-book-atlas fa-2x text-light"></i>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-lg-4">
                    <div class="card shadow d-flex flex-row align-items-center px-3">
                        <div class="card-body">
                            <p class="card-text mb-1">Total Photos:</p>
                            <h3 id="photoCounterHeading" runat="server" purecounter-start="0" data-purecounter-end="1" data-purecounter-duration="1" class="card-title purecounter">1</h3>
                        </div>
                        <div class="card-icon rounded-3 d-flex justify-content-center align-items-center">
                            <i class="fa-solid fa-image fa-2x text-light"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
