<%@ Page Title="" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="AlbumImage.aspx.cs" Inherits="Paamel_Foundation_Website.AlbumImage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="breadcrumb bg-primary-gray text-header py-2">
        <div class="container d-flex flex-column flex-md-row">
            <p class="mb-1 mb-md-0">You are here: /</p>
            <ul class="list-none mb-0 p-0 ps-md-2 d-flex gap-1 flex-wrap">
                <li>
                    <a href="./Index.aspx" class="text-secondary-green no-underline text-bs-primary-hover">Home</a>
                </li>
                <li>
                    <a href="GalleryCover.aspx" class="text-secondary-green no-underline text-bs-primary-hover">Gallery</a>
                </li>
                <li>
                    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>

                           <%# Eval("Title") %>

                        </ItemTemplate>
                    </asp:FormView>
                </li>
            </ul>
        </div>
    </section>


    <div class="site-section mt-5">
        <div class="container mt-5">
            <div class="row">
                <asp:FormView ID="HeaderFormView" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <h2 class="text-header text-uppercase fw-bold text-center text-secondary-blue"><%# Eval("Title") %></h2>

                    </ItemTemplate>
                </asp:FormView>
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">

                    <ItemTemplate>

                        <div id="main-content" class="col-12 col-md-4 col-lg-3 mb-4 mt-3 ">
                            <a href='<%# Eval("Image") %>' class="thumbnail-link " data-gallery="example-gallery" data-toggle="lightbox" onclick="showImage(this); return false;">
                                <img src='<%# Eval("Image") %>' class="w-100 shadow-1-strong rounded mb-4" alt="Thumbnail" />
                            </a>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
            </div>
        </div>
    </div>
    <asp:SqlDataSource
        runat="server"
        ID="SqlDataSource1"
        ConnectionString='<%$ ConnectionStrings:PaamelConnectionString %>'
        ProviderName='<%$ ConnectionStrings:PaamelConnectionString.ProviderName %>'
        SelectCommand="
        SELECT ap.*, a.Title
        FROM [AlbumPic] ap
        JOIN [Album] a ON ap.Album_Id = a.Id
        WHERE ap.Album_Id = @albumid
        ORDER BY ap.Id DESC">
        <SelectParameters>
            <asp:QueryStringParameter Name="albumid" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
