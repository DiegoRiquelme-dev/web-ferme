using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidad
{
    public class Producto
    {
        public int id_producto { get; set; }
        public string nombre { get; set; }
        public int stock { get; set; }
        public int stock_critico { get; set; }
        public string marca { get; set; }
        public int precio { get; set; }
        public int id_eprov { get; set; }
        public int estado_prod { get; set; }

    }
}
