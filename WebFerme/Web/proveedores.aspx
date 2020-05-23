<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="proveedores.aspx.cs" Inherits="Web.proveedores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img src="imagen/icono294x132.png" style="width: 147px; height: 66px;" alt="">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <asp:LinkButton CssClass="nav-link" ID="linkhome" runat="server" Text="HOME" OnClick="btn_home"></asp:LinkButton>
                    </li>
                    <li class="nav-item">
                        <asp:LinkButton CssClass="nav-link" ID="linkproducto" runat="server" Text="PRODUCTOS" OnClick="btn_productos"></asp:LinkButton>
                    </li>
                    <li class="nav-item">
                        <asp:LinkButton CssClass="nav-link" ID="linkNosotros" runat="server" Text="NOSOTROS" OnClick="btn_Nosotros"></asp:LinkButton>
                    </li>
                    <li class="nav-item">
                        <asp:LinkButton CssClass="nav-link" ID="linkproveedor" runat="server" Text="PROVEEDORES" OnClick="btn_proveedores"></asp:LinkButton>
                    </li>
                    <li class="nav-item">
                        <asp:LinkButton CssClass="nav-link" ID="linksesion" runat="server" OnClick="btn_login" Text="INICIAR SESION"></asp:LinkButton>
                    </li>
                    <li class="nav-item">
                        <asp:LinkButton CssClass="nav-link" ID="linkperfil" OnClick="btn_perfil" runat="server" Text="PERFIL"></asp:LinkButton>
                    </li>
                    <li class="nav-item">
                        <asp:LinkButton CssClass="nav-link" ID="linklogout" OnClick="btn_logout" runat="server" Text="CERRAR SESION"></asp:LinkButton>
                    </li>
                    <li class="nav-item">
                        <asp:LinkButton ID="linkcarro" runat="server">
                            <ion-icon name="cart-sharp" size="large" ></ion-icon>
                        </asp:LinkButton>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <script src="https://unpkg.com/ionicons@5.0.0/dist/ionicons.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="Content/styles.css">
    <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
    <script type="text/javascript" src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="https://unpkg.com/ionicons@5.0.0/dist/ionicons.js"></script>
    <style>
* {
  box-sizing: border-box;
}

#myInput {
  background-image: url('/css/searchicon.png');
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}

#myTable {
  border-collapse: collapse;
  width: 100%;
  border: 1px solid #ddd;
  font-size: 18px;
}

#myTable th, #myTable td {
  text-align: left;
  padding: 12px;
}

#myTable tr {
  border-bottom: 1px solid #ddd;
}

#myTable tr.header, #myTable tr:hover {
  background-color: #f1f1f1;
}
</style>
<div class="container">
    <div class="row">
        <h2 style="text-align:center">Productos!</h2>
<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">  
<table id="myTable">
  <tr class="header">
    <th scope="col">Nombre</th>
    <th scope="col">Valor</th>
      <th scope="col">Agrega</th>
  </tr>
  <tr>
    <td>Tornillos</td>
    <td>$600.000</td>
    <td><button class="btn"><i class="fa fa-plus"></i></button></td>
  </tr>
  <tr>
    <td>Clavos</td>
    <td>$650.000</td>
    <td><button class="btn"><i class="fa fa-plus"></i></button></td>
  </tr>
  <tr>
    <td>Pintura</td>
    <td>$50.000</td>
    <td><button class="btn"><i class="fa fa-plus"></i></button></td>
  </tr>
  <tr>
    <td>Pintura tricolor</td>
    <td>$1.000</td>
    <td><button class="btn"><i class="fa fa-plus"></i></button></td>
  </tr>
  <tr>
    <td>Cañeria de cobre</td>
    <td>$2.000</td>
    <td><button class="btn"><i class="fa fa-plus"></i></button></td>
  </tr>
  <tr>
    <td>Codo de cobre</td>
    <td>$50.000</td>
    <td><button class="btn"><i class="fa fa-plus"></i></button></td>
  </tr>
  <tr>
    <td>Brocha</td>
    <td>$4.000</td>
    <td><button class="btn"><i class="fa fa-plus"></i></button></td>
  </tr>
  <tr>
    <td>Destornillador</td>
    <td>$1.500</td>
     <td><button class="btn"><i class="fa fa-plus"></i></button></td>
  </tr>
</table>
    </div>
</div>


<script>
    function myFunction() {
        var input, filter, table, tr, td, i, txtValue;
        input = document.getElementById("myInput");
        filter = input.value.toUpperCase();
        table = document.getElementById("myTable");
        tr = table.getElementsByTagName("tr");
        for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[0];
            if (td) {
                txtValue = td.textContent || td.innerText;
                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
    }
</script>

    <script src="https://unpkg.com/ionicons@5.0.0/dist/ionicons.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="Content/styles.css">
    <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
    <script type="text/javascript" src="Scripts/jquery-3.0.0.min.js"></script>
</asp:Content>

