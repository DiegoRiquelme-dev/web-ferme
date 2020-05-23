using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidad
{
    public class venta
    {
        public int id_venta { get; set; }
        public DateTime fecha_venta { get; set; }
        public string tipo_venta { get; set; }
        public string usuario_rut { get; set; }
        public int factura_nro { get; set; }
        public int boleta_nro { get; set; }
        public int id_despacho { get; set; }

    }
}
