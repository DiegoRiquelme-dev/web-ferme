using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Net.Mail;
using System.IO;
using CapaEntidades;
using CapaDatos;

namespace CapaModelo
{

     public class Modelo
    {
        //Se establece la conexion con la base de datos
        SqlConnection con = new SqlConnection();
        conexion conex = new conexion();

        // Crear Usuario Cliente
        public int CrearUsuario(usuario u) 
        {
            int x = 0;
            String query = "insert into usuario values( '"+u.rut+"', '"+u.nombre+ "','" + u.apellido + "','" + u.correo +"'," +
                " '" + u.direccion+ "','" + u.password + "', "+ DateTime.Now.ToString("MM/dd/yyyy") + " ,'" + u.telefono + "','" + u.username + "',"+1+" )";

            con = conex.con();
            {
                con.Open();
                SqlCommand cdm = new SqlCommand(query, con);
                SqlDataReader sreader = cdm.ExecuteReader();
                con.Close();
            }
            return x;
        }

        // Crear Usuario Cliente
        public int IniciarSesion(usuario u)
        {
            int x = 0;
            String query = "insert into usuario values( '" + u.rut + "', '" + u.nombre + "','" + u.apellido + "','" + u.correo + "'," +
                " '" + u.direccion + "','" + u.password + "'," + u.fecha_nacimiento + ",'" + u.telefono + "','" + u.username + "'," + 1 + " )";

            con = conex.con();
            {
                con.Open();
                SqlCommand cdm = new SqlCommand(query, con);
                SqlDataReader sreader = cdm.ExecuteReader();

                x = x + cdm.ExecuteNonQuery();
            }
            return x;
        }


        // Verificar Existencia de Rut
        public string VerificarRut(string rut) 
        {
            rut = "no";
            String query = "select rut from usuario where rut = '"+rut+"'";

            con = conex.con();
            {
                con.Open();
                SqlCommand cdm = new SqlCommand(query, con);
                SqlDataReader sreader = cdm.ExecuteReader();
                while (sreader.Read())
                {
                    rut = (string)(sreader[0]);
                    break;
                }
            }
            return rut;
        }
        

        //Verificar Existencia de Usuario
        public string VerUsuario(string usu)
        {
            usu = "no";
            String query = "select user_name from usuario where user_name = '" + usu + "' ;";

            con = conex.con();
            {
                con.Open();
                SqlCommand cdm = new SqlCommand(query, con);
                SqlDataReader sreader = cdm.ExecuteReader();
                while (sreader.Read())
                {
                    usu = (string)(sreader[0]);
                    break;
                }
            }
            return usu;
        }

        //RecuperarUsuarioXnombre
        public usuario RecuperarUsuarioXnombre(usuario u) 
        {
            usuario d = new usuario();
            String query = "select * from usuario where user_name = '"+u.username+"';";

            con = conex.con();
            {
                con.Open();
                SqlCommand cdm = new SqlCommand(query, con);
                SqlDataReader sreader = cdm.ExecuteReader();
                while (sreader.Read())
                {
                    d.rut = (string)(sreader[0]);
                    d.nombre = (string)(sreader[1]);
                    d.apellido = (string)(sreader[2]);
                    d.correo = (string)(sreader[3]);
                    d.direccion = (string)(sreader[4]);
                    d.password = (string)(sreader[5]);
                    d.fecha_nacimiento = (DateTime)(sreader[6]);
                    d.telefono = (string)(sreader[7]);
                    d.username = (string)(sreader[8]);
                    d.id_rol = (int) (sreader[9]);
                    break;
                }
            }
            return d;
        }

        // recuperar todos los usuarios de la base de datos y los ordeno alfabeticamente
        public List<usuario> RecuperarTodosUsuarios() 
        {
            List<usuario> _list = new List<usuario>();
            String query = "select * from usuario order by rol_id_rol desc, user_name asc;";
            con = conex.con();
            {
                con.Open();
                SqlCommand cdm = new SqlCommand(query, con);
                SqlDataReader sreader = cdm.ExecuteReader();
                while (sreader.Read())
                {
                    usuario d = new usuario();

                    d.rut = (string)(sreader[0]);
                    d.nombre = (string)(sreader[1]);
                    d.apellido = (string)(sreader[2]);
                    d.correo = (string)(sreader[3]);
                    d.direccion = (string)(sreader[4]);
                    d.password = (string)(sreader[5]);
                    d.fecha_nacimiento = (DateTime)(sreader[6]);
                    d.telefono = (string)(sreader[7]);
                    d.username = (string)(sreader[8]);
                    d.id_rol = (int)(sreader[9]);

                    _list.Add(d);
                }
            }

            con.Close();
            return _list;
        }



    }
}
