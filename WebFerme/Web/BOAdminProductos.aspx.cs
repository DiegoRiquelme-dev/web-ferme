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
    public partial class BOAdminProductos : System.Web.UI.Page
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
                if (us.id_rol != 2 || us.id_rol != 3 || us.id_rol != 5)
                {

                }
                else
                { Response.Redirect("home.aspx"); }
            }
            else
            {
                Response.Redirect("home.aspx");
            }
            if (us.id_rol == 1)
            {
                Response.Redirect("home.aspx");
            }
            // vista para empleado -> backoffice puede generar ordenes de compra

            if (us.id_rol == 2)
            {
                linkproveedor.Visible = false;
                linkcarro.Visible = false;
                linkcarro.Visible = false;
                linklateraladmProducto.Visible = false;
                linklateralAdmUsuario.Visible = false;
                linklateralBolyFac.Visible = false;
                linklateralEstadisticas.Visible = false;
                linklateralVentas.Visible = false;

            }
            // vista para Vendedor -> Genera Ventas -> crear ventana ventas?
            if (us.id_rol == 3)
            {
                linkproveedor.Visible = false;
                linkcarro.Visible = false;
                linklateraladmProducto.Visible = false;
                linklateralAdmUsuario.Visible = false;
                linklateralBolyFac.Visible = false;
                linklateralEstadisticas.Visible = false;
                linklateralOrdenCompra.Visible = false;
            }
            // vista para Proveedor -> Solo puede ver [Vista Proveedores (ordenes de compra pendientes + historial)]
            if (us.id_rol == 4)
            {
                linkhome.Visible = false;
                linkproducto.Visible = false;
                linkcarro.Visible = false;
                linkBackOffice.Visible = false;
                Response.Redirect("proveedores.aspx");
            }
            // vista para ADM FULL -> provilegios en todo BackOffice
            if (us.id_rol == 5)
            {
                linkproveedor.Visible = false;
            }
            // crear las vistas del BackOffice (BO) en el menu lateral.
        }//termino del load_page.

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
        protected void btn_Nosotros(object sender, EventArgs e)
        {
            Response.Redirect("nosotros.aspx");
        }
        protected void btn_logout(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Home.aspx");
        }
        protected void btn_BackOffice(object sender, EventArgs e)
        {
            Response.Redirect("BackOffice.aspx");
        }
        protected void btn_linklateralAdmUsuario(object sender, EventArgs e)
        {
            Response.Redirect("BOAdminUsuarios.aspx");
        }
        protected void btn_linklateraladmProducto(object sender, EventArgs e)
        {
            Response.Redirect("BOAdminProductos.aspx");
        }
        protected void btn_linklateralBolyFac(object sender, EventArgs e)
        {
            Response.Redirect("BOBoletasFacturas.aspx");
        }
        protected void btn_linklateralEstadisticas(object sender, EventArgs e)
        {
            Response.Redirect("BOEst.aspx");
        }
        protected void btn_linklateralOrdenCompra(object sender, EventArgs e)
        {
            Response.Redirect("BOOrdenCompra.aspx");
        }
        protected void btn_linklateralVentas(object sender, EventArgs e)
        {
            Response.Redirect("BOVentas.aspx");
        }
        protected void btn_CarritoCompra(object sender, EventArgs e)
        {
            Response.Redirect("CarritoCompras.aspx");
        }
    }
}