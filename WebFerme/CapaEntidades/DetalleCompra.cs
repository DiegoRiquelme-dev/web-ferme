using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidad
{
    public class DetalleCompra
    {
        public int ordenCompra { get; set; }
        public int id_producto { get; set; }
        public DateTime fecha { get; set; }
        public int cantidad_prod { get; set; }
    }
}
