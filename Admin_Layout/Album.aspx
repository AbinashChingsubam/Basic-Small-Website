<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Layout/Admin.Master" AutoEventWireup="true" CodeBehind="Album.aspx.cs" Inherits="Paamel_Foundation_Website.Admin_Layout.Album" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .row.d-flex.align-items-stretch {
            height: 100%;
        }

        .card.h-100 {
            height: 80%;
        }

        .card-body.d-flex.align-items-center {
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .album-container div {
            overflow-x: auto;
        }

      /*  .album-container table {
            min-width: 500px;
        }*/

        .album-container img {
            width: 250px;
        }

        .slno {
            display: block;
            min-width:50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container pt-5">
        <div class="row d-flex align-items-stretch">
            <!-- Form Section -->
            <div class="col-md-6 mb-3 mb-md-0">
                <div class="card shadow mb-4 h-100">
                    <div class="card-body d-flex flex-column">
                        <h2 class="text-center">Upload Image</h2>

                        <div class="mb-3">
                            <asp:Label ID="Label" CssClass="form-label" runat="server" Text="Description"></asp:Label>
                            <asp:TextBox ID="Desctxt" TextMode="MultiLine" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>

                        <div class="mb-3">
                            <label for="formFile" class="form-label">Album Image</label>
                            <asp:FileUpload ID="FileUpload1" type="file" multiple="multiple" CssClass="form-control" runat="server" />
                        </div>

                        <div class="text-center mt-auto">
                            <asp:Button ID="Submit" OnClick="Submit_Click" runat="server" CssClass="btn btn-primary" Text="Submit" />
                             <asp:Button ID="Back" OnClick="Back_Click" runat="server" CssClass="btn btn-danger" Text="Back" />
                        </div>
                    </div>
                </div>
            </div>

            <!-- Image Grid Section -->
            <div class="col-md-6">
                <div class="card shadow h-100">
                    <div class="card-body d-flex align-items-center">
                        <asp:GridView ID="GridView1" runat="server" CssClass="table-borderless border-0 w-100" OnRowCommand="GridView1_RowCommand" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1"  >
                            <Columns>
                                <asp:TemplateField>
                                    <HeaderTemplate>
                                        <h3 class="text-center me-4">Cover Image
                                   <%-- <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-link position-absolute top-0 end-0 m-3"><i class="bi bi-pencil "></i></asp:LinkButton>
                                   --%>  </h3>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <a href='<%# Eval("AlbumCover") %>' data-lightbox="image-1" data-title="My caption">
                                            <img src='<%# Eval("AlbumCover") %>' alt="Image" class="img-fluid mb-3" />
                                        </a>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                                    </EditItemTemplate>

                                </asp:TemplateField>

                                <asp:TemplateField>
                                    <ItemTemplate>

                                        <asp:LinkButton ID="EditButton" runat="server" CommandName="EditRow"
                                            CommandArgument='<%# Container.DataItemIndex %>' CssClass="btn btn-primary ms-2">
    <i class="bi bi-pencil"></i>
</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:PaamelConnectionString %>'
        ProviderName='<%$ConnectionStrings:PaamelConnectionString.ProviderName %>'
        SelectCommand="SELECT * FROM [Album] where Id=@id ORDER BY Id DESC">
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>


    <div class="container mt-3 mb-4">

        <div class="album-container">
            <asp:GridView ID="GridView2" AllowPaging="true" PageSize="6" CssClass="table table-border table-hover mt-3 m" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label ID="lblSerialNumber" runat="server" Text='<%# Container.DataItemIndex + 1 %>' CssClass="fw-bold mt-3 slno"></asp:Label>

                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <h2 class="fs-4 text-center">Album Image</h2>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <div class="col mb-4">
                                <a href='<%# Eval("Image") %>' class="rounded" onclick="showImage(this); return false;">
                                    <img src='<%# Eval("Image") %>' class="img-thumbnail" alt="Thumbnail" />
                                </a>
                            </div>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <h2 class="fs-4 text-center">Delete</h2>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-danger me-3 mt-5" CommandName="Delete" OnClientClick="return confirm('Are you sure you want to delete?');"><i class="bi bi-trash"></i></asp:LinkButton>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>

    <asp:SqlDataSource
        runat="server"
        ID="SqlDataSource2"
        ConnectionString='<%$ ConnectionStrings:PaamelConnectionString %>'
        ProviderName='<%$ ConnectionStrings:PaamelConnectionString.ProviderName %>'
        SelectCommand="SELECT * FROM [AlbumPic] WHERE Album_Id = @albumid ORDER BY Id DESC"
        DeleteCommand="DELETE FROM [AlbumPic] WHERE Id = @id">
        <DeleteParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
        </DeleteParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="albumid" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

