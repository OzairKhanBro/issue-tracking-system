using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Phase1
{
    public partial class Logon : Form
    {
//        string connString = "Server=.\\SQLEXPRESS;Database=im;Trusted_Connection=True;";
        static string connString = @"Data Source=.;Initial Catalog=im;Integrated Security=True";
        private Database database = new Database(connString);
        public Logon()
        {
            InitializeComponent();
            cbbDatabase.SelectedIndex = 0;
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            var userID = txtUserID.Text;
            var sql = "select * from Users where UserID='" + userID + "'";
            var result = database.ExecuteQuery(sql);
            if (result.Rows.Count > 0)
            {

                IssueExplore frm = new IssueExplore(cbbDatabase.SelectedItem.ToString());
                frm.Show();
                this.Hide();
            }
            else
            {
                MessageBox.Show("Invalid User ID! Try again!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
