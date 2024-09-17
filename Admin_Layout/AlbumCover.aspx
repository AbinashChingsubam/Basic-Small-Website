<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Layout/Admin.Master" AutoEventWireup="true" CodeBehind="AlbumCover.aspx.cs" Inherits="Paamel_Foundation_Website.Admin_Layout.AlbumCover" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container pt-5">
        <div class="card shadow mx-auto" style="max-width: 600px;">
            <div class="card-body">
                <h2 class="text-center">Album Cover Upload</h2>
                <div class="mb-3">
                    <asp:Label ID="dateLb" CssClass="form-label" runat="server" Text="Date"></asp:Label>
                    <asp:TextBox ID="datetxt" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="mb-3">
                    <asp:Label ID="Label1" CssClass="form-label" runat="server" Text="Title"></asp:Label>
                    <asp:TextBox ID="titletxt" runat="server" CssClass="form-control"></asp:TextBox>

                </div>
                <div class="mb-3">
                    <label for="formFile" class="form-label">Album Cover</label>
                    <asp:FileUpload ID="FileUpload1" type="file" CssClass="form-control" runat="server" />

                </div>
                <div class="text-center">
                    <asp:Button ID="Submit" OnClick="Submit_Click" runat="server" CssClass="btn btn-primary" Text="Create" />

                </div>
            </div>
        </div>
    </div>

</asp:Content>
