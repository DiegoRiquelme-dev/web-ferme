using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaEntidades;
using CapaModelo;

namespace Web
{
    public partial class Perfil : System.Web.UI.Page
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
                linksesion.Visible = false;

            }
            else
            {
                Response.Redirect("inicioSesion.aspx");
                this.linksesion.Visible = false;
            }
            //usuario no logeado.
            if (us.id_rol != 1 || us.id_rol != 2 || us.id_rol != 3 || us.id_rol != 4 || us.id_rol != 5)
            {

            }
            else {
                linkproveedor.Visible = false;
                linkBackOffice.Visible = false;
                linkperfil.Visible = false;
                linklogout.Visible = false;
            }
            // vistas solo del cliente comun.
            if (us.id_rol == 1)
            {
                linkproveedor.Visible = false;
                linkBackOffice.Visible = false;
            }
            // vista para empleado -> backoffice puede generar ordenes de compra
            if (us.id_rol == 2)
            {
                linkproveedor.Visible = false;
            }
            // vista para Vendedor -> Genera Ventas -> crear ventana ventas?
            if (us.id_rol == 3)
            {
                linkproveedor.Visible = false;
            }
            // vista para Proveedor -> Solo puede ver [Vista Proveedores (ordenes de compra pendientes + historial)]
            if (us.id_rol == 4)
            {
                linkhome.Visible = false;
                linkproducto.Visible = false;
                linkBackOffice.Visible = false;
                linkNosotros.Visible = false;
            }
            // vista para ADM FULL -> provilegios en todo BackOffice
            if (us.id_rol == 5)
            {
                linkproveedor.Visible = false;
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
        protected void btn_BackOffice(object sender, EventArgs e)
        {
            Response.Redirect("BackOffice.aspx");
        }
    }
}