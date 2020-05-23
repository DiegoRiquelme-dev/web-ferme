using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace CapaDatos
{
    public class conexion
    {
		public SqlConnection con()
		{					 // source es el nombre de la conexion DBA -- catalog el nombre de la database
			string consulta = "Data Source=AGEOHYEAH\\SQLEXPRESS;Initial Catalog=FERMEDB;Integrated Security=True";
			SqlConnection con = new SqlConnection(consulta);
			return con;
		}
	}
}
