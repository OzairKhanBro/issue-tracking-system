using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Phase1
{
    public class Database
    {
        private string connectionString = "";
        public Database(string connectionString)
        {
            this.connectionString = connectionString;
        }
        public DataTable ExecuteQuery(string sql)
        {
            try
            {
                SqlConnection con = new SqlConnection(this.connectionString);
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                // this will query your database and return the result to your datatable
                DataTable dataTable = new DataTable();
                da.Fill(dataTable);
                con.Close();
                con.Open();
                
                return dataTable;
            }

            catch (Exception es)
            {
                MessageBox.Show(es.Message);
            }
            return null;
        }
    }
}
