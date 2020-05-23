using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidad
{
    public class Cliente
    {
        public int id_cliente { get; set; }
        public string rut { get; set; }
        public string nombre{ get; set; }
        public string apellido{ get; set; }
        public int telefono{ get; set; }
        public string correo { get; set; }
        public int password { get; set; }
        public DateTime fecha_nac { get; set; }
        public int id_venta { get; set; }

    }
}
