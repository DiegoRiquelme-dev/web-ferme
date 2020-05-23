using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidad
{
    public class detalleVenta
    {
        public int id_venta { get; set; }
        public int id_producto { get; set; }
        public DateTime boleta_nro { get; set; }
        public int cantidad_producto { get; set; }
    }
}
