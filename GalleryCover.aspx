<%@ Page Title="" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="GalleryCover.aspx.cs" Inherits="Paamel_Foundation_Website.GalleryCover" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        @media (max-width: 576px) {
    .card {
        width: 100%; /* Ensures the card takes full width on very small screens */
    }

}


        .album-cover{
            max-width: 600px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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

<div class="container">
    <div class="text-center text-info mt-4">
        <h2 class="text-header fs-3 fw-bold mb-2 text-center text-uppercase text-secondary-blue">Gallery</h2>
    </div>

    <div class="d-flex justify-content-center">
        <div class="row justify-content-center">
            <asp:GridView ID="GridView1" runat="server" CssClass="border-0" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <div class="col-12 album-cover mb-4 d-flex justify-content-center">
                                <div class="card shadow p-2 align-items-center" style="width: 100%;">
                                    <div class="text-center">
                                        <a href='<%# "AlbumImage.aspx?Id=" + Eval("Id") %>'>
                                            <img src='<%# Eval("AlbumCover") %>' alt="Image" class="img-fluid mb-3" />
                                        </a>
                                        <h5 class="mt-2 text-secondary-blue"><%# Eval("Title") %></h5>
                                        <h6>Published on: <%# Eval("Date", "{0:dd/MM/yyyy}") %></h6>
                                        <p>Total Images: <%# Eval("ImageCount") %></p>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</div>


    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:PaamelConnectionString %>' ProviderName='<%$ ConnectionStrings:PaamelConnectionString.ProviderName %>'
       SelectCommand="
        SELECT a.Id, a.Date, a.Title, a.AlbumCover, COUNT(p.Id) AS ImageCount 
        FROM Album a
        LEFT JOIN AlbumPic p ON a.Id = p.Album_Id 
        GROUP BY a.Id, a.Date, a.Title, a.AlbumCover
        ORDER BY a.Date DESC"></asp:SqlDataSource>
</asp:Content>
