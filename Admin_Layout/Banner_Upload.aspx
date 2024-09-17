<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Layout/Admin.Master" AutoEventWireup="true" CodeBehind="Banner_Upload.aspx.cs" Inherits="Paamel_Foundation_Website.Admin_Layout.Banner_Upload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container pt-5">
        <div class="card shadow mx-auto" style="max-width: 600px;">
            <div class="card-body">
                <h2 class="text-center">Banner Upload</h2>
                <div class="mb-3">
                    <label for="formFile" class="form-label">Upload your Banner</label>
                    <asp:FileUpload ID="FileUpload1" type="file" CssClass="form-control" runat="server" />

                </div>
                <div class="text-center">
                    <asp:Button ID="Upload" runat="server" OnClick="Upload_Click" CssClass="btn btn-primary" Text="Submit" />

                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-hover mt-5"
            AllowPaging="True" PageSize="6"
            PagerStyle-CssClass="pagination " AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>

                <asp:TemplateField HeaderText="SL No.">
                    <ItemTemplate>
                        <%# Container.DisplayIndex + 1 %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="File">
                    <HeaderTemplate>
                        Image
           
                    </HeaderTemplate>

                    <ItemTemplate>
                        <a href='<%# Eval("ImageBanner") %>' data-lightbox="image-1" data-title="My caption">
                            <img src='<%# Eval("ImageBanner") %>' alt="Image" style="width: 100px; height: auto;" />
                        </a>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Delete" OnClientClick="return confirm('Are you sure you want to delete?');"><i class="bi bi-trash3-fill"></i></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:PaamelConnectionString %>' SelectCommand="SELECT * FROM [Banner] ORDER BY Id DESC" DeleteCommand="Delete from [Banner] where Id=@id"></asp:SqlDataSource>
    </div>
</asp:Content>
