<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Layout/Admin.Master" AutoEventWireup="true" CodeBehind="CreateLogin.aspx.cs" Inherits="Paamel_Foundation_Website.Admin_Layout.CreateLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container pt-5">
        <div class="card shadow mx-auto" style="max-width: 600px;">
            <div class="card-body">
                <h2 class="text-center">Create Login</h2>
                <div class="mb-3">
                    <label class="form-label">User Name</label>
                    <asp:TextBox ID="usernametxt" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ControlToValidate="usernametxt"
                        ErrorMessage="User name is required."
                        CssClass="text-danger"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>
                </div>
                <div class="mb-3">
                    <label class="form-label">Password</label>
                    <asp:TextBox ID="passwordtxt" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ControlToValidate="passwordtxt"
                        ErrorMessage="Password is required."
                        CssClass="text-danger"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="PasswordValidator" runat="server"
                        ControlToValidate="passwordtxt"
                        ErrorMessage="Password must be at least 6 characters and contain at least one special character."
                        CssClass="text-danger"
                        Display="Dynamic"
                        ValidationExpression='^(?=.*[!@#$%^&*(),.?":{}|<>]).{6,}$'>
</asp:RegularExpressionValidator> 
                </div>
                <div class="mb-3">
                    <label class="form-label">Confirm Password</label>
                    <asp:TextBox ID="confirmpassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ControlToValidate="confirmpassword"
                        ErrorMessage="Confirm password is required."
                        CssClass="text-danger"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server"
                        ControlToValidate="confirmpassword"
                        ControlToCompare="passwordtxt"
                        ErrorMessage="Passwords do not match."
                        CssClass="text-danger"
                        Display="Dynamic">
                    </asp:CompareValidator>
                </div>
                <div class="text-center">
                    <asp:Button ID="Done" runat="server" OnClick="Done_Click" CssClass="btn btn-success" Text="Submit" />
                </div>
            </div>
        </div>
    </div>


  


</asp:Content>
