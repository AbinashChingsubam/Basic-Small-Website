<%@ Page Title="" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Paamel_Foundation_Website.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container" style="margin-top: 110px;margin-bottom: 110px;">
        <div class="card shadow mx-auto" style="max-width: 600px;">
            <div class="card-body">
                <h2 class="text-center">Login</h2>
                <div class="mb-3">
                    <label class="form-label">User Name</label>
                    <asp:TextBox ID="usernametxt" runat="server" CssClass="form-control"></asp:TextBox>

                </div>
                <div class="mb-3">
                    <label  class="form-label">Password</label>
                    <asp:TextBox ID="passwordtxt" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>

                </div>
                <div class="text-center">
                    <asp:Button ID="Submit" runat="server" OnClick="Submit_Click"  CssClass="btn btn-success" Text="Submit" />

                </div>
            </div>
        </div>
    </div>


</asp:Content>
