<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="BOEst.aspx.cs" Inherits="Web.BOEst" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
        <div class="container">
            <a href="#">
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
                        <asp:LinkButton CssClass="nav-link" ID="linkBackOffice" OnClick="btn_BackOffice" runat="server" Text="Back Office"></asp:LinkButton>
                    </li>
                   <li class="nav-item">
                        <asp:LinkButton ID="linkcarro" onclick="btn_CarritoCompra" runat="server">
                            <ion-icon name="cart-sharp" size="large" ></ion-icon>
                        </asp:LinkButton>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

        <!-- link de la barra lateral   ||  https://bootsnipp.com/snippets/djjrN  ||  -->

        <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

        <!------ Include the above in your HEAD tag ---------->

        <nav class="navbar navbar-inverse sidebar" role="navigation">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-sidebar-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">BackOffice</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-sidebar-navbar-collapse-1">
                                        <ul class="nav navbar-nav">
                        <li class="active">
                            <asp:LinkButton runat="server" ID="linklateralAdmUsuario" Text="Adm Usuarios" class="btn btn-default btn-lg" OnClick="btn_linklateralAdmUsuario"></asp:LinkButton>
                        </li>
                        <li class="active">
                            <asp:LinkButton runat="server" ID="linklateraladmProducto" Text="Adm Producto" class="btn btn-default btn-lg" OnClick="btn_linklateraladmProducto" ></asp:LinkButton>
                        </li>
                        <li class="active">
                            <asp:LinkButton runat="server" ID="linklateralBolyFac" Text="Boletas y Facturas" class="btn btn-default btn-lg" OnClick="btn_linklateralBolyFac"></asp:LinkButton>
                        </li>
                        <li class="active">
                            <asp:LinkButton runat="server" ID="linklateralEstadisticas" Text="Estadísticas" class="btn btn-default btn-lg" OnClick="btn_linklateralEstadisticas"></asp:LinkButton>
                        </li>
                        <li class="active">
                            <asp:LinkButton runat="server" ID="linklateralOrdenCompra" Text="Orden de Compra" class="btn btn-default btn-lg" OnClick="btn_linklateralOrdenCompra"></asp:LinkButton>
                        </li>
                        <li class="active">
                            <asp:LinkButton runat="server" ID="linklateralVentas" Text="Ventas" class="btn btn-default btn-lg" OnClick="btn_linklateralVentas"></asp:LinkButton>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
     <div class="container">
        <div class="row">
            <h1 style="padding-left: 350px">Estadisticas</h1>
            </div>
         </div>
    <script>
        function htmlbodyHeightUpdate() {
            var height3 = $(window).height()
            var height1 = $('.nav').height() + 50
            height2 = $('.main').height()
            if (height2 > height3) {
                $('html').height(Math.max(height1, height3, height2) + 10);
                $('body').height(Math.max(height1, height3, height2) + 10);
            }
            else {
                $('html').height(Math.max(height1, height3, height2));
                $('body').height(Math.max(height1, height3, height2));
            }

        }
        $(document).ready(function () {
            htmlbodyHeightUpdate()
            $(window).resize(function () {
                htmlbodyHeightUpdate()
            });
            $(window).scroll(function () {
                height2 = $('.main').height()
                htmlbodyHeightUpdate()
            });
        });
    </script>
    <style>
        body, html {
            height: 100%;
        }

        /* remove outer padding */
        .main .row {
            padding: 0px;
            margin: 0px;
        }

        /*Remove rounded coners*/

        nav.sidebar.navbar {
        }

        nav.sidebar, .main {
            -webkit-transition: margin 200ms ease-out;
            -moz-transition: margin 200ms ease-out;
            -o-transition: margin 200ms ease-out;
            transition: margin 200ms ease-out;
        }

        /* Add gap to nav and right windows.*/
        .main {
            padding: 10px 10px 0 10px;
        }

        /* .....NavBar: Icon only with coloring/layout.....*/

        /*small/medium side display*/
        @media (min-width: 768px) {

            /*Allow main to be next to Nav*/
            .main {
                position: absolute;
                width: calc(100% - 40px); /*keeps 100% minus nav size*/
                margin-left: 40px;
                float: right;
            }

            /*lets nav bar to be showed on mouseover*/
            nav.sidebar:hover + .main {
                margin-left: 200px;
            }

            /*Center Brand*/
            nav.sidebar.navbar.sidebar > .container .navbar-brand, .navbar > .container-fluid .navbar-brand {
                margin-left: 0px;
            }
            /*Center Brand*/
            nav.sidebar .navbar-brand, nav.sidebar .navbar-header {
                text-align: center;
                width: 100%;
                margin-left: 0px;
            }

            /*Center Icons*/
            nav.sidebar a {
                padding-right: 13px;
            }

            /*adds border top to first nav box */
            nav.sidebar .navbar-nav > li:first-child {
                border-top: 1px #e5e5e5 solid;
            }

            /*adds border to bottom nav boxes*/
            nav.sidebar .navbar-nav > li {
                border-bottom: 1px #e5e5e5 solid;
            }

            /* Colors/style dropdown box*/
            nav.sidebar .navbar-nav .open .dropdown-menu {
                position: static;
                float: none;
                width: auto;
                margin-top: 0;
                background-color: transparent;
                border: 0;
                -webkit-box-shadow: none;
                box-shadow: none;
            }

            /*allows nav box to use 100% width*/
            nav.sidebar .navbar-collapse, nav.sidebar .container-fluid {
                padding: 0 0px 0 0px;
            }

            /*colors dropdown box text */
            .navbar-inverse .navbar-nav .open .dropdown-menu > li > a {
                color: #777;
            }

            /*gives sidebar width/height*/
            nav.sidebar {
                width: 200px;
                height: 100%;
                margin-left: -160px;
                float: left;
                z-index: 8000;
                margin-bottom: 0px;
            }

                /*give sidebar 100% width;*/
                nav.sidebar li {
                    width: 100%;
                }

                /* Move nav to full on mouse over*/
                nav.sidebar:hover {
                    margin-left: 0px;
                }
            /*for hiden things when navbar hidden*/
            .forAnimate {
                opacity: 0;
            }
        }

        /* .....NavBar: Fully showing nav bar..... */

        @media (min-width: 1330px) {

            /*Allow main to be next to Nav*/
            .main {
                width: calc(100% - 200px); /*keeps 100% minus nav size*/
                margin-left: 200px;
            }

            /*Show all nav*/
            nav.sidebar {
                margin-left: 0px;
                float: left;
            }
                /*Show hidden items on nav*/
                nav.sidebar .forAnimate {
                    opacity: 1;
                }
        }

        nav.sidebar .navbar-nav .open .dropdown-menu > li > a:hover, nav.sidebar .navbar-nav .open .dropdown-menu > li > a:focus {
            color: #CCC;
            background-color: transparent;
        }

        nav:hover .forAnimate {
            opacity: 1;
        }

        section {
            padding-left: 15px;
        }
    </style>

    <script src="https://unpkg.com/ionicons@5.0.0/dist/ionicons.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
    <script type="text/javascript" src="Scripts/jquery-3.0.0.min.js"></script>

</asp:Content>
