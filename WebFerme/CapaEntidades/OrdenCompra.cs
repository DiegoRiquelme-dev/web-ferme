using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidad
{
    public class OrdenCompra
    {
        public int id_oc { get; set; }
        public DateTime fecha_emision { get; set; }
        public int cantidad_producto { get; set; }
        public int precio_total { get; set; }
        public string rut_prov{ get; set; }
        public int id_recepcion { get; set; }
        public int id_proveedor { get; set; }
        public int id_estadoCompra { get; set; }
    }
}
