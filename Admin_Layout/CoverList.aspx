<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Layout/Admin.Master" AutoEventWireup="true" CodeBehind="CoverList.aspx.cs" Inherits="Paamel_Foundation_Website.Admin_Layout.CoverList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .gridview-slno {
            text-align: center;
            min-width: 100px;
        }

        .gridview-title {
            text-align: center;
            min-width: 150px;
        }

        .gridview-image img {
            max-width: 300px;
            /*Increase image size on small screens height: auto;*/
        }

        .gridview-label, .gridview-buttons {
            text-align: center;
            margin-top: 0.5rem;
        }

        .photo-container div {
            overflow-x: auto;
        }

        h3 {
            font-size: 1.3rem;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



<div class="container photo-container pt-5">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="true" PageSize="6" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:TemplateField>
                <HeaderTemplate>
                    <h3>Serial No.</h3>
                </HeaderTemplate>
                <ItemTemplate>
                    <div class="gridview-slno">
                        <asp:Label ID="lblSerialNumber" runat="server" Text='<%# Container.DataItemIndex + 1 %>' CssClass="fw-bold ms-3"></asp:Label>
                    </div>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>

            <asp:TemplateField>
                <HeaderTemplate>
                    <h3>Title</h3>
                </HeaderTemplate>
                <ItemTemplate>
                    <div class="gridview-title">
                        <%# Eval("Title") %>
                    </div>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>

            <asp:TemplateField>
                <HeaderTemplate>
                    <h3>Cover Image</h3>
                </HeaderTemplate>
                <ItemTemplate>
                     <div class="gridview-image">
                        <a href='<%# Eval("AlbumCover") %>' data-lightbox="image-1" data-title="My caption">
                            <img src='<%# Eval("AlbumCover") %>' alt="Image" class="img-fluid" />
                        </a>
                    </div>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>

            <asp:TemplateField>
                <HeaderTemplate>
                    <h3>Edit</h3>
                </HeaderTemplate>
                <ItemTemplate>
                    <div class="gridview-buttons">
                        <a href='<%# "Album.aspx?id=" + Eval("Id") %>' class="btn btn-primary btn-sm">
                            <i class="bi bi-pencil-square"></i> 
                        </a>
                    </div>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>

            <asp:TemplateField>
                <HeaderTemplate>
                    <h3>Delete</h3>
                </HeaderTemplate>
                <ItemTemplate>
                    <div class="gridview-buttons">
                        <asp:LinkButton ID="btnDelete" runat="server" CommandName="Delete" CssClass="btn btn-danger btn-sm"
                            OnClientClick="return confirm('Are you sure you want to delete all the image and cover?');">
                            <i class="bi bi-trash"></i> 
                        </asp:LinkButton>
                    </div>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>

        </Columns>
    </asp:GridView>

    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:PaamelConnectionString %>' ProviderName='<%$ ConnectionStrings:PaamelConnectionString.ProviderName %>'
        SelectCommand="SELECT * FROM [Album] ORDER BY Id DESC" 
        DeleteCommand="DELETE FROM [Album] WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="id" Type="Int32" />
        </DeleteParameters>
    </asp:SqlDataSource>
</div>







</asp:Content>
