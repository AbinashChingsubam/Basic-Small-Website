<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Layout/Admin.Master" AutoEventWireup="true" CodeBehind="UpdateCoverImage.aspx.cs" Inherits="Paamel_Foundation_Website.Admin_Layout.UpdateCoverImage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .imgcar{
            margin-left:4rem;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container pt-5 mb-5">
        <div class="card shadow mx-auto" style="max-width: 600px;">
            <div class="card-body">
                <h2 class="text-center">Album Cover Update</h2>
                <div class="mb-3">
                    <asp:Label ID="dateLb" CssClass="form-label" runat="server" Text="Date"></asp:Label>
                    <asp:TextBox ID="datetxt" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="mb-3">
                    <asp:Label ID="Label1" CssClass="form-label" runat="server" Text="Title"></asp:Label>
                    <asp:TextBox ID="titletxt" runat="server" CssClass="form-control"></asp:TextBox>

                </div>
                <div class="mb-3">
                    <label for="formFile" class="form-label">Current Album Cover:</label>
                    <asp:Image ID="currentCoverImage" runat="server" CssClass="img-thumbnail imgcar mt-2   w-75" Visible="false" />

                    <label for="formFile" class="form-label mt-3">Upload New Album Cover (Optional)</label>
                    <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
                </div>
                <div class="text-center">
                    <asp:Button ID="Update" OnClick="Update_Click" runat="server" CssClass="btn btn-primary" Text="Update" />
                    <asp:Button ID="Cancel" OnClick="Cancel_Click" runat="server" CssClass="btn btn-danger" Text="Cancel" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
