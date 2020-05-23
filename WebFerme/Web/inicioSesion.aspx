<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="inicioSesion.aspx.cs" Inherits="Web.inicioSesion" %>
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
                        <asp:LinkButton ID="linkcarro" onclick="btn_CarritoCompra" runat="server">
                            <ion-icon name="cart-sharp" size="large" ></ion-icon>
                        </asp:LinkButton>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
	<div class="container">
		<div class="row">
            <div class="login-reg-panel" style="margin-top: 260px;">
				<asp:Label ID="lblmensaje" runat="server" Text=""></asp:Label>
		<div class="login-info-box">
			<h2>¿ Tienes una cuenta ?</h2>
			<p>Si tienes cuenta presiona el botón Login </p>
			<label id="label-register" for="log-reg-show">Login</label>
			<input type="radio" name="active-log-panel" id="log-reg-show"  checked="checked">
		</div>
							
		<div class="register-info-box">
			<h2>¿ No tienes una cuenta ?</h2>
			<p>Crea un usuario presionando el boton Registro</p>
			<label id="label-login" for="log-login-show">Registro</label>
			<input type="radio" name="active-log-panel" id="log-login-show">
		</div>
							
		<div class="white-panel">
			<div class="login-show">
				<h2>LOGIN</h2>
				<asp:TextBox runat="server" placeholder="Usuario" class="registro" ID="txtlogUsuario" ></asp:TextBox>
				<asp:TextBox runat="server" placeholder="Password" class="registro" TextMode="Password" ID="txtlogpass" ></asp:TextBox>
				<asp:Button ID="btn_Login" Text="Ingresa" class="btn btn-secondary btn-lg active" runat="server" OnClick="btn_Log" />
				<a href="#">Forgot password?</a>
			</div>
			<div class="register-show">
				<h2>REGISTRO</h2>
				<asp:TextBox ID="txtRut" runat="server" class="registro" placeholder="Rut" oninput="checkRut(this)" MaxLength="10" ></asp:TextBox>
				<asp:TextBox ID="txtUsuario" runat="server" class="registro" placeholder="Usuario"></asp:TextBox>
				<asp:TextBox ID="txtCorreo" runat="server" class="registro" placeholder="Correo"></asp:TextBox>
				<asp:TextBox ID="txtNombre" runat="server" class="registro" placeholder="Nombre"></asp:TextBox>
				<asp:TextBox ID="txtApellido" runat="server" class="registro" placeholder="Apellido"></asp:TextBox>
				<asp:TextBox ID="txtContraseña" runat="server" class="registro" TextMode="Password" placeholder="Contraseña"></asp:TextBox>
				<asp:TextBox ID="txtconfirmar" runat="server" class="registro" TextMode="Password" placeholder="Confirme Contraseña"></asp:TextBox>
				<asp:Button ID="btnRegi" Text="Registrate" class="btn btn-secondary btn-lg active" runat="server" OnClick="btn_CreateUser" />
			</div>
		</div>
	</div>
		</div>
	</div>
	
    
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
    <script type="text/javascript" src="Scripts/jquery-3.0.0.min.js"></script>
	<script type="text/javascript" src="Scripts/funciones.js"></script>
	<script type="text/javascript" src="Scripts/js/ValidarRUT.js"></script>
	<link rel="stylesheet" href="Content/login.css">
	<script src="https://unpkg.com/ionicons@5.0.0/dist/ionicons.js"></script>
</asp:Content>
