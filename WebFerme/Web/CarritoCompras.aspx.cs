using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaModelo;
using CapaEntidades;

namespace Web
{
    public partial class CarritoCompras : System.Web.UI.Page
    {
        usuario us = new usuario();
        Modelo mod = new Modelo();
        string rut, correo, direccion, password, nombre, apellido;
        int rol, telefono;
        DateTime fecha_na;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)// se verifica la sesion de usuario
            {
                us = (usuario)Session["User"];//trae los datos del usuario y los deja en la varible us.
                rut = us.rut;
                nombre = us.nombre;
                apellido = us.apellido;
                correo = us.correo;
                direccion = us.direccion;
                password = us.password;
                fecha_na = us.fecha_nacimiento;
                rol = us.id_rol;

                //vistas bloqueadas
                linksesion.Visible = false;

            }
            else
            {
                //vistas bloqueadas
                linklogout.Visible = false;
                linkperfil.Visible = false;
            }
        }
        protected void btn_home(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
        protected void btn_productos(object sender, EventArgs e)
        {
            Response.Redirect("productos.aspx");
        }
        protected void btn_proveedores(object sender, EventArgs e)
        {
            Response.Redirect("proveedores.aspx");
        }
        protected void btn_login(object sender, EventArgs e)
        {
            Response.Redirect("inicioSesion.aspx");
        }
        protected void btn_perfil(object sender, EventArgs e)
        {
            Response.Redirect("Perfil.aspx");
        }
        protected void btn_logout(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Home.aspx");
        }
        protected void btn_Nosotros(object sender, EventArgs e)
        {
            Response.Redirect("nosotros.aspx");
        }
        protected void btn_CarritoCompra(object sender, EventArgs e)
        {
            Response.Redirect("CarritoCompras.aspx");
        }
        protected void btn_Checkout(object sender, EventArgs e)
        {
            Response.Redirect("Checkout.aspx");
        }
    }
}