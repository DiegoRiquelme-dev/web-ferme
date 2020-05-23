using CapaEntidades;
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
    public partial class inicioSesion : System.Web.UI.Page
    {
        usuario us = new usuario();
        Modelo mod = new Modelo();
        string rut, correo, direccion, password, nombre, apellido, verusuario, verRut;
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
                linklogout.Visible = false;
                linkperfil.Visible = false;
                linkproveedor.Visible = false;
               
            }
            if (us.id_rol == 1)
            {
                
                linkproveedor.Visible = false;
            }

            // vista para empleado -> backoffice puede generar ordenes de compra
            if (us.id_rol == 2)
            {
                linkproveedor.Visible = false;
                linkcarro.Visible = false;
            }
            // vista para Vendedor -> Genera Ventas -> crear ventana ventas?
            if (us.id_rol == 3)
            {
                linkproveedor.Visible = false;
                linkcarro.Visible = false;
            }
            // vista para Proveedor -> Solo puede ver [Vista Proveedores (ordenes de compra pendientes + historial)]
            if (us.id_rol == 4)
            {
                linkhome.Visible = false;
                linkproducto.Visible = false;
                linkcarro.Visible = false;
            }
            // vista para ADM FULL -> provilegios en todo BackOffice
            if (us.id_rol == 5)
            {
                linkproveedor.Visible = false;
            }
        }

        protected void btn_Log (object sender, EventArgs e) 
        {
            //recuperar usuario
            usuario u = new usuario();
            u.username = txtlogUsuario.Text;
            u = mod.RecuperarUsuarioXnombre(u);
            if (u.username == txtlogUsuario.Text)
            {
                //verificar contraseña.
                if (u.password == txtlogpass.Text)
                {
                    Session.Add("User", u);
                    Response.Redirect("Perfil.aspx");
                }
                else
                {
                    this.lblmensaje.Text = "Error, Pasword incorrecta";
                }
            }
            else 
            {
                this.lblmensaje.Text = "Error, usuario no encontrado";
            }
            



            //ingresar.
        }


        protected void btn_CreateUser(object sender, EventArgs e) 
        {
            usuario usu = new usuario();

            if (txtRut.Text.Length > 0 && txtApellido.Text.Length > 0 && txtconfirmar.Text == txtContraseña.Text && txtContraseña.Text.Length > 0
                && txtUsuario.Text.Length > 0)
            {
                //verificar rut existente;
                verRut = mod.VerificarRut(txtRut.Text); // busca el rut en nuestros registros.

                if (txtRut.Text == verRut)
                {
                    this.lblmensaje.Text = "Error, El rut ingresado ya se encuentra en nuestros registros.";
                }
                else
                {
                    //recuperar usuario y verificar si existe
                    verusuario = mod.VerUsuario(txtUsuario.Text); //verifica si existe el usuario
                    if (txtUsuario.Text == verusuario)
                    {
                        this.lblmensaje.Text = "El Nombre " + txtUsuario + " ya existe, intente con otro";
                    }
                    else
                    {
                        usu.rut = this.txtRut.Text;
                        usu.username = this.txtUsuario.Text;
                        usu.nombre = txtNombre.Text;
                        usu.apellido = txtApellido.Text;
                        usu.correo = txtCorreo.Text;
                        usu.direccion = "Registrar Dirección ";
                        usu.telefono = "Ingresar número";
                        usu.password = txtContraseña.Text;
                        usu.fecha_nacimiento = DateTime.Now;

                        mod.CrearUsuario(usu); //llama al metodo y crea al usuario cliente.
                        Session.Add("User", usu);

                        Response.Redirect("Perfil.aspx");
                    }
                }
            }
            else 
            {
                lblmensaje.Text = "Error verifique los campos";
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

    }
}