<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="nosotros.aspx.cs" Inherits="Web.nosotros" %>

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

    <div class="aboutus-section">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="aboutus">
                        <h2 class="aboutus-title">Nosotros</h2>
                        <p class="aboutus-text">FERME inicia como un pequeño deposito de maderas ubicado en Maipú, siempre le apostamos al exito del negocio pero poco dimensionamos el crecimiento en cuanto a los productos ofertados y la excelente relación que se consolido con nuestros clientes que experimientamos al transcurrir el tiempo.</p>
                        <p class="aboutus-text">FERME adquierio una propiedad en Cerrillos, con el fin de iniciar la historia de una gran sucursal. Proposito que se fue concretando con el apoyo de los clientes, vecinos y el esfuerzo de nuestro recurso más valioso, ¨El Equipo de Trabajo ¨.</p>
                        <p class="aboutus-text">Enfocados desde el comienzo en brindar la mejor atención, con asesoria oportuna, demostrando responsabilidad y eficiencia fue la clave para hacer de FERME, tu ferreteria de confianza.</p>
                        <a class="aboutus-more" href="#">leer más</a>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="aboutus-banner">
                        <img src="http://themeinnovation.com/demo2/html/build-up/img/home1/about1.jpg" alt="">
                    </div>
                </div>
                <div class="col-md-5 col-sm-6 col-xs-12">
                    <div class="feature">
                        <div class="feature-box">
                            <div class="clearfix">
                                <div class="iconset">
                                    <span class="glyphicon glyphicon-cog icon"></span>
                                </div>
                                <div class="feature-content">
                                    <h4>Nuestra Empresa</h4>
                                    <p>Ferretería FERME fue fundada en Mayo del año 1988 en la comuna de Maipú. Nuestro continuo progreso e innovación nos ha situado como referente en el mercado de ferreterías de la región.</p>
                                </div>
                            </div>
                        </div>
                        <div class="feature-box">
                            <div class="clearfix">
                                <div class="iconset">
                                    <span class="glyphicon glyphicon-cog icon"></span>
                                </div>
                                <div class="feature-content">
                                    <h4>Nuestra Misión</h4>
                                    <p>Ferretería FERME trabaja para brindar a sus clientes la mayor diversidad en materiales de construcción y ferretería en general, comprometidos a mantener la preferencia y satisfacción de nuestros clientes; en beneficio de todos, permitiéndonos mejorar cada día la calidad de los productos y servicios que ofrecemos.</p>
                                </div>
                            </div>
                        </div>
                        <div class="feature-box">
                            <div class="clearfix">
                                <div class="iconset">
                                    <span class="glyphicon glyphicon-cog icon"></span>
                                </div>
                                <div class="feature-content">
                                    <h4>Nuestra Visión</h4>
                                    <p>Mantener un sólido posicionamiento y liderazgo comercial en cuanto a la venta de materiales de construcción y ferretería en general, superando las expectativas de calidad y servicio de nuestros clientes en el mercado a nivel nacional, siendo reconocidos como comercializadores y distribuidores, de alto prestigio y confiabilidad.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <style>
        body {
    font-family: 'Roboto';font-size: 16px;
}

.aboutus-section {
    padding: 90px 0;
}
.aboutus-title {
    font-size: 30px;
    letter-spacing: 0;
    line-height: 32px;
    margin: 0 0 39px;
    padding: 0 0 11px;
    position: relative;
    text-transform: uppercase;
    color: #000;
}
.aboutus-title::after {
    background: #fdb801 none repeat scroll 0 0;
    bottom: 0;
    content: "";
    height: 2px;
    left: 0;
    position: absolute;
    width: 54px;
}
.aboutus-text {
    color: #606060;
    font-size: 13px;
    line-height: 22px;
    margin: 0 0 35px;
}

a:hover, a:active {
    color: #ffb901;
    text-decoration: none;
    outline: 0;
}
.aboutus-more {
    border: 1px solid #fdb801;
    border-radius: 25px;
    color: #fdb801;
    display: inline-block;
    font-size: 14px;
    font-weight: 700;
    letter-spacing: 0;
    padding: 7px 20px;
    text-transform: uppercase;
}
.feature .feature-box .iconset {
    background: #fff none repeat scroll 0 0;
    float: left;
    position: relative;
    width: 18%;
}
.feature .feature-box .iconset::after {
    background: #fdb801 none repeat scroll 0 0;
    content: "";
    height: 150%;
    left: 43%;
    position: absolute;
    top: 100%;
    width: 1px;
}

.feature .feature-box .feature-content h4 {
    color: #0f0f0f;
    font-size: 18px;
    letter-spacing: 0;
    line-height: 22px;
    margin: 0 0 5px;
}


.feature .feature-box .feature-content {
    float: left;
    padding-left: 28px;
    width: 78%;
}
.feature .feature-box .feature-content h4 {
    color: #0f0f0f;
    font-size: 18px;
    letter-spacing: 0;
    line-height: 22px;
    margin: 0 0 5px;
}
.feature .feature-box .feature-content p {
    color: #606060;
    font-size: 13px;
    line-height: 22px;
}
.icon {
    color : #f4b841;
    padding:0px;
    font-size:40px;
    border: 1px solid #fdb801;
    border-radius: 100px;
    color: #fdb801;
    font-size: 28px;
    height: 70px;
    line-height: 70px;
    text-align: center;
    width: 70px;
}

    </style>
    
    <footer class="section footer-classic context-dark bg-image" style="background: #343a40!important;">
        <div class="container">
            <div class="row row-30">
                <div class="col-md-4 col-xl-5">
                    <div class="pr-xl-4">
                        <a class="brand" href="index.html">
                            <img class="brand-logo-light" src="images/agency/logo-inverse-140x37.png" alt="" width="140" height="37" srcset="images/agency/logo-retina-inverse-280x74.png 2x"></a>
                        <p>Estamos comprometidos al servicio de nuestro clientes con disponibilidad de productos para todos sus requerimientos de construccion</p>
                        <!-- Rights-->
                        <p class="rights"><span>©  </span><span class="copyright-year">2020</span><span> </span><span> </span><span>Todos los derechos reservados.</span></p>
                    </div>
                </div>
                <div class="col-md-4">
                    <h5>Contacto</h5>
                    <dl class="contact-list">
                        <dt>Direccion</dt>
                        <dd>El navegante #7692, Maipu Chile</dd>
                    </dl>
                    <dl class="contact-list">
                        <dt>Email:</dt>
                        <dd><a href="mailto:#">contacto@ferme.cl</a></dd>
                    </dl>
                    <dl class="contact-list">
                        <dt>Telefonos:</dt>
                        <dd><a href="tel:#">+569 5557659</a> <span>or</span> <a href="tel:#">+569 8885892</a>
                        </dd>
                    </dl>
                </div>
                <div class="col-md-4 col-xl-3">
                    <h5>Links</h5>
                    <ul class="nav-list">
                        <li><a href="nosotros.aspx">Nosotros</a></li>
                        <li><a href="productos.aspx">Productos</a></li>
                        <li><a href="Home.aspx">Home</a></li>
                    </ul>
                </div>
            </div>
        </div>
       
    </footer>

        <script src="https://unpkg.com/ionicons@5.0.0/dist/ionicons.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="Content/styles.css">
    <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
    <script type="text/javascript" src="Scripts/jquery-3.0.0.min.js"></script>

</asp:Content>