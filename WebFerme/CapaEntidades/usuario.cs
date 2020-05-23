using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidades
{
    public class usuario

    {
        public string rut { get; set; }
        public string nombre { get; set; }
        public string apellido { get; set; }
        public string correo { get; set; }
        public string direccion { get; set; }
        public string password { get; set; }
        public DateTime fecha_nacimiento { get; set; }
        public string telefono { get; set; }
        public string username { get; set; }
        public int id_rol { get; set; }
    }
}
