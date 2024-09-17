<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Paamel_Foundation_Website.Admin_Layout.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <style type="text/css">
        .container {
            min-height: 95vh;
        }

        .card {
            max-width: 600px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                <div class="container d-flex justify-content-center align-items-center">
                    <div class="card mt-5 shadow rounded border p-3 w-100">
                        <div class="card-body">
                        <div class="row">
                            <div class="form-group mb-3 col-6">
                                <asp:Label ID="Label1" runat="server" Text="Label" CssClass="form-label"></asp:Label>
                                <asp:TextBox ID="Text1" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group mb-3 col-6">
                                <asp:Label ID="Label2" runat="server" Text="Label" CssClass="form-label"></asp:Label>
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                         
                        <div class="form-group mb-3">
                            <asp:Label ID="Label3" runat="server" Text="Label" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group text-center">
                            <asp:Button ID="Button1" runat="server" Text="Button" CssClass="btn btn-success" />
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</body>
</html>
