<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="productos.aspx.cs" Inherits="Web.productos" %>

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

<div class="container">

<br>  <H1 class="text-center">Productos</H1>
<hr>
<div class="row">
	<div class="col-md-3">
			<aside class="wedget__categories poroduct--cat">
        						<h3 class="wedget__title">Categorias</h3>
									<br />
        						<ul>
        							<li><a href="#">Electricidad <span>(3)</span></a></li>
        							<li><a href="#">Pinturas <span>(4)</span></a></li>
        							<li><a href="#">Herramientas <span>(6)</span></a></li>

        						</ul>
        					</aside>
	</div>
<div class="col-md-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="imagen/caiman.jpg"></div>
		<figcaption class="info-wrap">
				<h4 class="title">Caiman</h4>
				<p class="desc">Some small description goes here</p>
				<div class="rating-wrap">
					<div class="label-rating">132 reviews</div>
					<div class="label-rating">154 orders </div>
				</div> <!-- rating-wrap.// -->
		</figcaption>
		<div class="bottom-wrap">
			<a href="" class="btn btn-sm btn-primary float-right">Agregar</a>	
			<div class="price-wrap h5">
				<span class="price-new">$1280</span> <del class="price-old">$1980</del>
			</div> <!-- price-wrap.// -->
		</div> <!-- bottom-wrap.// -->
	</figure>
</div> <!-- col // -->
<div class="col-md-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="imagen/cañerias de cobre.jpg"> </div>
		<figcaption class="info-wrap">
				<h4 class="title">cañerias de cobre</h4>
				<p class="desc">Some small description goes here</p>
				<div class="rating-wrap">
					<div class="label-rating">132 reviews</div>
					<div class="label-rating">154 orders </div>
				</div> <!-- rating-wrap.// -->
		</figcaption>
		<div class="bottom-wrap">
				<a href="" class="btn btn-sm btn-primary float-right">Agregar</a>
				<div class="price-wrap h5">
					<span class="price-new">$1280</span> <del class="price-old">$1980</del>
				</div> <!-- price-wrap.// -->
		</div> <!-- bottom-wrap.// -->
	</figure>
</div> <!-- col // -->
<div class="col-md-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="imagen/cable azul.jpg"></div>
		<figcaption class="info-wrap">
				<h4 class="title">Cable azul</h4>
				<p class="desc">Some small description goes here</p>
				<div class="rating-wrap">
					<div class="label-rating">132 reviews</div>
					<div class="label-rating">154 orders </div>
				</div> <!-- rating-wrap.// -->
		</figcaption>
		<div class="bottom-wrap">
				<a href="" class="btn btn-sm btn-primary float-right">Agregar</a>
				<div class="price-wrap h5">
					<span class="price-new">$1280</span> <del class="price-old">$1980</del>
				</div> <!-- price-wrap.// -->
		</div> <!-- bottom-wrap.// -->
	</figure>
</div> <!-- col // -->
</div> <!-- row.// -->



<div class="container">

<hr>
<div class="row">
	<div class="col-md-3">
		
	</div>
<div class="col-md-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="imagen/enchufes.jpg"></div>
		<figcaption class="info-wrap">
				<h4 class="title">Caiman</h4>
				<p class="desc">Some small description goes here</p>
				<div class="rating-wrap">
					<div class="label-rating">132 reviews</div>
					<div class="label-rating">154 orders </div>
				</div> <!-- rating-wrap.// -->
		</figcaption>
		<div class="bottom-wrap">
			<a href="" class="btn btn-sm btn-primary float-right">Agregar</a>	
			<div class="price-wrap h5">
				<span class="price-new">$1280</span> <del class="price-old">$1980</del>
			</div> <!-- price-wrap.// -->
		</div> <!-- bottom-wrap.// -->
	</figure>
</div> <!-- col // -->
<div class="col-md-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="imagen/codo cobre.jpg"> </div>
		<figcaption class="info-wrap">
				<h4 class="title">cañerias de cobre</h4>
				<p class="desc">Some small description goes here</p>
				<div class="rating-wrap">
					<div class="label-rating">132 reviews</div>
					<div class="label-rating">154 orders </div>
				</div> <!-- rating-wrap.// -->
		</figcaption>
		<div class="bottom-wrap">
				<a href="" class="btn btn-sm btn-primary float-right">Agregar</a>	
				<div class="price-wrap h5">
					<span class="price-new">$1280</span> <del class="price-old">$1980</del>
				</div> <!-- price-wrap.// -->
		</div> <!-- bottom-wrap.// -->
	</figure>
</div> <!-- col // -->
<div class="col-md-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="imagen/pasacables.jpg"></div>
		<figcaption class="info-wrap">
				<h4 class="title">Cable azul</h4>
				<p class="desc">Some small description goes here</p>
				<div class="rating-wrap">
					<div class="label-rating">132 reviews</div>
					<div class="label-rating">154 orders </div>
				</div> <!-- rating-wrap.// -->
		</figcaption>
		<div class="bottom-wrap">
				<a href="" class="btn btn-sm btn-primary float-right">Agregar</a>	
				<div class="price-wrap h5">
					<span class="price-new">$1280</span> <del class="price-old">$1980</del>
				</div> <!-- price-wrap.// -->
		</div> <!-- bottom-wrap.// -->
	</figure>
</div> <!-- col // -->
</div> <!-- row.// -->

	<div class="container">

<hr>
<div class="row">
	<div class="col-md-3">
	</div>
<div class="col-md-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="imagen/pintura.jpg"></div>
		<figcaption class="info-wrap">
				<h4 class="title">Caiman</h4>
				<p class="desc">Some small description goes here</p>
				<div class="rating-wrap">
					<div class="label-rating">132 reviews</div>
					<div class="label-rating">154 orders </div>
				</div> <!-- rating-wrap.// -->
		</figcaption>
		<div class="bottom-wrap">
			<a href="" class="btn btn-sm btn-primary float-right">Agregar</a>	
			<div class="price-wrap h5">
				<span class="price-new">$1280</span> <del class="price-old">$1980</del>
			</div> <!-- price-wrap.// -->
		</div> <!-- bottom-wrap.// -->
	</figure>
</div> <!-- col // -->
<div class="col-md-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="imagen/tricolor.jpg"> </div>
		<figcaption class="info-wrap">
				<h4 class="title">cañerias de cobre</h4>
				<p class="desc">Some small description goes here</p>
				<div class="rating-wrap">
					<div class="label-rating">132 reviews</div>
					<div class="label-rating">154 orders </div>
				</div> <!-- rating-wrap.// -->
		</figcaption>
		<div class="bottom-wrap">
				<a href="" class="btn btn-sm btn-primary float-right">Agregar</a>
				<div class="price-wrap h5">
					<span class="price-new">$1280</span> <del class="price-old">$1980</del>
				</div> <!-- price-wrap.// -->
		</div> <!-- bottom-wrap.// -->
	</figure>
</div> <!-- col // -->
<div class="col-md-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="imagen/tricolor2.jpg"></div>
		<figcaption class="info-wrap">
				<h4 class="title">Cable azul</h4>
				<p class="desc">Some small description goes here</p>
				<div class="rating-wrap">
					<div class="label-rating">132 reviews</div>
					<div class="label-rating">154 orders </div>
				</div> <!-- rating-wrap.// -->
		</figcaption>
		<div class="bottom-wrap">
				<a href="" class="btn btn-sm btn-primary float-right">Agregar</a>	
				<div class="price-wrap h5">
					<span class="price-new">$1280</span> <del class="price-old">$1980</del>
				</div> <!-- price-wrap.// -->
		</div> <!-- bottom-wrap.// -->
	</figure>
</div> <!-- col // -->
</div> <!-- row.// -->

    <style>

        .card-product .img-wrap {
    border-radius: 3px 3px 0 0;
    overflow: hidden;
    position: relative;
    height: 220px;
    text-align: center;
}
.card-product .img-wrap img {
    max-height: 100%;
    max-width: 100%;
    object-fit: cover;
}
.card-product .info-wrap {
    overflow: hidden;
    padding: 15px;
    border-top: 1px solid #eee;
}
.card-product .bottom-wrap {
    padding: 15px;
    border-top: 1px solid #eee;
}

.label-rating { margin-right:10px;
    color: #333;
    display: inline-block;
    vertical-align: middle;
}

.card-product .price-old {
    color: #999;
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
