using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidad
{
    public class Factura
    {
        public int nro_factura { get; set; }
        public DateTime fecha_factura { get; set; }
        public int valor_factura { get; set; }
        public string iva_factura { get; set; }
    }
}
