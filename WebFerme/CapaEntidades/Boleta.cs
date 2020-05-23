using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidad
{
    public class Boleta
    {
        public int nro_boeta { get; set; }
        public DateTime fecha_boleta { get; set; }
        public int valor_boleta { get; set; }
        public string iva_boleta { get; set; }
    }
}
