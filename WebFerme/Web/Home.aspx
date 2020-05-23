<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Web.Home" %>

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
                        <asp:LinkButton ID="linkcarro" OnClick="btn_CarritoCompra" runat="server">
                            <ion-icon name="cart-sharp" size="large" ></ion-icon>
                        </asp:LinkButton>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="imagen/2-julio.jpg" style="width: 450px; height: 450px;" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagen/tricolor1920x950-1.png" style="width: 450px; height: 450px;" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagen/fondo1920x950-2.png" style="width: 450px; height: 450px;" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>


    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>Produtos <b>Destacados</b></h2>
                <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="0">
                    <!-- Carousel indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>
                    <!-- Wrapper for carousel items -->
                    <div class="carousel-inner">
                        <div class="item carousel-item active">
                            <div class="row">
                                <div class="col-sm-3">
                                    <div class="thumb-wrapper">
                                        <div class="img-box">
                                            <img src="imagen/cable azul.jpg" class="img-responsive img-fluid" alt="">
                                        </div>
                                        <div class="thumb-content">
                                            <h4>Cable Azul</h4>
                                            <p class="item-price"><strike>$4.000</strike><span>$3.500</span></p>
                                            <div class="star-rating">
                                                <ul class="list-inline">
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                </ul>
                                            </div>
                                            <a href="#" class="btn btn-primary">Agregar al carro</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="thumb-wrapper">
                                        <div class="img-box">
                                            <img src="imagen/cable rojo.jpg" class="img-responsive img-fluid" alt="">
                                        </div>
                                        <div class="thumb-content">
                                            <h4>Cable Rojo</h4>
                                            <p class="item-price"><strike>$4.000</strike><span>$3.500</span></p>
                                            <div class="star-rating">
                                                <ul class="list-inline">
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                </ul>
                                            </div>
                                            <a href="#" class="btn btn-primary">Agregar al carro</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="thumb-wrapper">
                                        <div class="img-box">
                                            <img src="imagen/caiman(1).jpg" class="img-responsive img-fluid" alt="">
                                        </div>
                                        <div class="thumb-content">
                                            <h4>Alicate Caiman</h4>
                                            <p class="item-price"><strike>$9.990</strike><span>$8.990</span></p>
                                            <div class="star-rating">
                                                <ul class="list-inline">
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star-half-o"></i></li>
                                                </ul>
                                            </div>
                                            <a href="#" class="btn btn-primary">Agregar al carro</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="thumb-wrapper">
                                        <div class="img-box">
                                            <img src="imagen/cable azul.jpg" class="img-responsive img-fluid" alt="">
                                        </div>
                                        <div class="thumb-content">
                                            <h4>Cable Azul</h4>
                                            <p class="item-price"><strike>$4.000</strike><span>$3.500</span></p>
                                            <div class="star-rating">
                                                <ul class="list-inline">
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                </ul>
                                            </div>
                                            <a href="#" class="btn btn-primary">Agregar al carro</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item carousel-item">
                            <div class="row">
                                <div class="col-sm-3">
                                    <div class="thumb-wrapper">
                                        <div class="img-box">
                                            <img src="imagen/cable rojo.jpg" class="img-responsive img-fluid" alt="">
                                        </div>
                                        <div class="thumb-content">
                                            <h4>Cable Rojo</h4>
                                            <p class="item-price"><strike>$4.000</strike><span>$3.500</span></p>
                                            <div class="star-rating">
                                                <ul class="list-inline">
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                </ul>
                                            </div>
                                            <a href="#" class="btn btn-primary">Agregar al carro</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="thumb-wrapper">
                                        <div class="img-box">
                                            <img src="imagen/caiman(1).jpg" class="img-responsive img-fluid" alt="">
                                        </div>
                                        <div class="thumb-content">
                                            <h4>Alicate Caiman</h4>
                                            <p class="item-price"><strike>$9.990</strike><span>$8.990</span></p>
                                            <div class="star-rating">
                                                <ul class="list-inline">
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star-half-o"></i></li>
                                                </ul>
                                            </div>
                                            <a href="#" class="btn btn-primary">Agregar al carro</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="thumb-wrapper">
                                       <div class="img-box">
                                            <img src="imagen/cable azul.jpg" class="img-responsive img-fluid" alt="">
                                        </div>
                                        <div class="thumb-content">
                                            <h4>Cable Azul</h4>
                                            <p class="item-price"><strike>$4.000</strike><span>$3.500</span></p>
                                            <div class="star-rating">
                                                <ul class="list-inline">
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                </ul>
                                            </div>
                                            <a href="#" class="btn btn-primary">Agregar al carro</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="thumb-wrapper">
                                        <div class="img-box">
                                            <img src="imagen/cable rojo.jpg" class="img-responsive img-fluid" alt="">
                                        </div>
                                        <div class="thumb-content">
                                            <h4>Cable Rojo</h4>
                                            <p class="item-price"><strike>$4.000</strike><span>$3.500</span></p>
                                            <div class="star-rating">
                                                <ul class="list-inline">
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                </ul>
                                            </div>
                                            <a href="#" class="btn btn-primary">Agregar al carro</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item carousel-item">
                            <div class="row">
                                <div class="col-sm-3">
                                    <div class="thumb-wrapper">
                                        <div class="img-box">
                                            <img src="imagen/caiman(1).jpg" class="img-responsive img-fluid" alt="">
                                        </div>
                                        <div class="thumb-content">
                                            <h4>Alicate Caiman</h4>
                                            <p class="item-price"><strike>$9.990</strike><span>$8.990</span></p>
                                            <div class="star-rating">
                                                <ul class="list-inline">
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star-half-o"></i></li>
                                                </ul>
                                            </div>
                                            <a href="#" class="btn btn-primary">Agregar al carro</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="thumb-wrapper">
                                        <div class="img-box">
                                            <img src="imagen/cable azul.jpg" class="img-responsive img-fluid" alt="">
                                        </div>
                                        <div class="thumb-content">
                                            <h4>Cable Azul</h4>
                                            <p class="item-price"><strike>$4.000</strike><span>$3.500</span></p>
                                            <div class="star-rating">
                                                <ul class="list-inline">
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                </ul>
                                            </div>
                                            <a href="#" class="btn btn-primary">Agregar al carro</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="thumb-wrapper">
                                         <div class="img-box">
                                            <img src="imagen/cable rojo.jpg" class="img-responsive img-fluid" alt="">
                                        </div>
                                        <div class="thumb-content">
                                            <h4>Cable Rojo</h4>
                                            <p class="item-price"><strike>$4.000</strike><span>$3.500</span></p>
                                            <div class="star-rating">
                                                <ul class="list-inline">
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                </ul>
                                            </div>
                                            <a href="#" class="btn btn-primary">Agregar al carro</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="thumb-wrapper">
                                        <div class="img-box">
                                            <img src="imagen/caiman(1).jpg" class="img-responsive img-fluid" alt="">
                                        </div>
                                        <div class="thumb-content">
                                            <h4>Alicate Caiman</h4>
                                            <p class="item-price"><strike>$9.990</strike><span>$8.990</span></p>
                                            <div class="star-rating">
                                                <ul class="list-inline">
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star-half-o"></i></li>
                                                </ul>
                                            </div>
                                            <a href="#" class="btn btn-primary">Agregar al carro</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Carousel controls -->
                    <a class="carousel-control left carousel-control-prev" href="#myCarousel" data-slide="prev">
                        <i class="fa fa-angle-left"></i>
                    </a>
                    <a class="carousel-control right carousel-control-next" href="#myCarousel" data-slide="next">
                        <i class="fa fa-angle-right"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="card-group">
                <div class="card">
                    <img class="card-img-top" src="imagen/cajaelectrica.jpg">
                    <div class="card-body">
                        <h5 class="card-title">Caja Embutida</h5>
                        <p class="card-text">Caja de conexión, caja de junción, caja de derivación, caja de empalmes o caja escrotal​ es un contenedor de conexiones eléctricas, por lo general destinada a ocultarlas de la vista y desalentar la manipulación</p>
                        <p class="card-text"><small class="text-muted">Ultima actualizacion 3 minutos atras</small></p>
                    </div>
                </div>
                <div class="card">
                    <img class="card-img-top" src="imagen/clavos.jpg" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Clavos de 1"</h5>
                        <p class="card-text">Un clavo, puntilla o punto es un objeto delgado y alargado con punta filosa hecho de un metal duro (por lo general acero), utilizado para sujetar dos o más objetos. Un clavo puede ser "clavado" sobre el material a trabajar utilizando un martillo.</p>
                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    </div>
                </div>
                <div class="card">
                    <img class="card-img-top" src="imagen/destornillador.jpg" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Destornillador de Cruz</h5>
                        <p class="card-text">Desarmador (destornillador) de cruz (punta phillips) Esta es una herramienta auxiliar de ensamble. Básicamente es una barra cilíndrica o cuadrada sujeta a un mango de madera o plástico que termina en una punta, en este caso en forma de cruz.</p>
                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container banner">
        <div class="row">
            <div class="card bg-dark text-white">
                <img class="card-img" src="https://hardwaresfera.com/wp-content/uploads/2019/09/hdmi-2.1-vrr-780x320.jpg" style="width: 1200px" alt="Card image">
                <div class="card-img-overlay">
                    <h5 class="card-title"></h5>
                    <p class="card-text"></p>
                    <p class="card-text"></p>
                </div>
            </div>

        </div>
    </div>



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
        <div class="row no-gutters social-container">
            <div class="col"><a class="social-inner" href="#"><span class="icon mdi mdi-facebook"></span><span>Facebook</span></a></div>
            <div class="col"><a class="social-inner" href="#"><span class="icon mdi mdi-instagram"></span><span>instagram</span></a></div>
            <div class="col"><a class="social-inner" href="#"><span class="icon mdi mdi-twitter"></span><span>twitter</span></a></div>
            <div class="col"><a class="social-inner" href="#"><span class="icon mdi mdi-youtube-play"></span><span>google</span></a></div>
        </div>
    </footer>

    <script src="https://unpkg.com/ionicons@5.0.0/dist/ionicons.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="Content/styles.css">
    <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
    <script type="text/javascript" src="Scripts/jquery-3.0.0.min.js"></script>

</asp:Content>
