using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidad
{
    public class rec_producto
    {
        public int id_recepcion { get; set; }
        public int estado_recepcion{ get; set; }
        public int cantidad_producto { get; set; }
        public string despachador { get; set; }
        public string usuario_rut { get; set; }
        public int id_ordenCompra { get; set; }
        public int id_estado_recepcion { get; set; }
    }
}
