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
    public partial class IssueExplore : Form
    {
        //        string connString = "Server=.\\SQLEXPRESS;Database=im;Trusted_Connection=True;";
        static string connString = @"Data Source=.;Initial Catalog=im;Integrated Security=True";
        private Database database = new Database(connString);
        public IssueExplore(string databaseName)
        {
            InitializeComponent();
            InitTreeView();
            this.Text = "IssueTracker - " + System.Environment.MachineName + " (" + databaseName + ")";
            
          
        }

        private void InitTreeView()
        {
            string sql = "select * from Projects";
            var dataSet = database.ExecuteQuery(sql);
            var rows = dataSet.Rows;

            var rootNode = treeView.Nodes.OfType<TreeNode>()
                            .FirstOrDefault(node => node.Name.Equals("rootNode"));
            rootNode.Text = "IssueView";
            for (int i = 0; i < rows.Count; i++)
            {
                var row = rows[i];
                if (!row["Project"].ToString().Contains("\\"))
                {
                    var newNode = new TreeNode();
                    newNode.Text = row["Project"].ToString();
                    if (row["IsFolder"].ToString() == "1")
                    {

                        newNode.ImageIndex = 1;
                        newNode.SelectedImageIndex = 1;
                    }
                    else
                    {
                        newNode.ImageIndex = 2;
                        newNode.SelectedImageIndex = 2;
                    }
                    newNode.Tag = row;
                    rootNode.Nodes.Add(newNode);
                    AddChildNode(newNode, row["Project"].ToString(), rows, 1);
                    treeView.Sort();
                }
            }



        }
        private void AddChildNode(TreeNode parent, string parentProject, DataRowCollection rows, int step)
        {
            for (int i = 0; i < rows.Count; i++)
            {
                var row = rows[i];
                var arr = row["Project"].ToString().Split('\\');
                if (row["Project"].ToString().StartsWith(parentProject + "\\") && arr.Length == step + 1)
                {
                    var newNode = new TreeNode();
                    newNode.Text = arr[step];
                    if (row["IsFolder"].ToString() == "1")
                    {

                        newNode.ImageIndex = 1;
                        newNode.SelectedImageIndex = 1;
                    }
                    else
                    {
                        newNode.ImageIndex = 2;
                        newNode.SelectedImageIndex = 2;
                    }
                    newNode.Tag = row;
                    parent.Nodes.Add(newNode);
                    AddChildNode(newNode, row["Project"].ToString(), rows, step + 1);
                }
            }
        }
        private void IssueExplore_FormClosed(object sender, FormClosedEventArgs e)
        {
            Application.Exit();
        }
        private DataRow getRowColorByTest(string template,int test1)
        {
            var sql = "select * from GridRowColors where Template='" + template + "' And Field='Test 1'";
            var data = database.ExecuteQuery(sql);
            if (data!=null){
                for (int i = 0; i < data.Rows.Count; i++)
                {
                    var r = data.Rows[i];
                    if (r["Op"].ToString() == "<" && test1 < Convert.ToInt32(r["Val"].ToString()))
                    {
                        return r;
                    }
                    else if (r["Op"].ToString() == ">" && test1 > Convert.ToInt32(r["Val"].ToString()))
                    {
                        return r;
                    }
                    else if (r["Op"].ToString() == "=" && test1 == Convert.ToInt32(r["Val"].ToString()))
                    {
                        return r;
                    }
                    else if (r["Op"].ToString() == "<>" && test1 != Convert.ToInt32(r["Val"].ToString()))
                    {
                        return r;
                    }
                }
            }
            return null;
        }

        private DataRow getRowColorByStatus(string template,string status)
        {
            string sql = "select * from GridRowColors where Template='"+template+"' And Field='Status' And Val='"+status+"'";
            var data = database.ExecuteQuery(sql);
            if (data != null)
            {
                return data.Rows[0];
            }
            return null;
        }

        private void treeView_AfterSelect(object sender, TreeViewEventArgs e)
        {
            var row = (DataRow)e.Node.Tag;
            if (row != null)
            {
                if (row["IsFolder"].ToString() == "0")
                {
                    var table = row["IssuesTable"].ToString();
                    var template = row["Template"].ToString();
                    label3.Text =  "Items in " + table;
                    //var sql = "select ID, CreateDate, LastUpdate, UpdatedBy, Abstract, Attachments, Links, Status, Description from [" + table + "]";
                    var sql = "select * from [" + table + "] order by case when isnumeric(ID)=1 then cast (ID as float) when isnumeric(left(ID,1))=0 then ascii(left(lower(ID),1)) else 1 end";

                    var data = database.ExecuteQuery(sql);
                    
                    if (data != null)
                    {
                        data.Columns.Add("Attach", typeof(Image));
                        data.Columns.Add("Link", typeof(Image));
                        for (var i = 0; i < data.Rows.Count; i++)
                        {
                            
                            var r = data.Rows[i];
                            if (r["Attachments"] != null)
                            {
                                //if ((int)r["Attachments"] > 0)
                                try
                                {
                                    if (float.Parse(r["Attachments"].ToString()) > 0)
                                    {
                                        data.Rows[i]["Attach"] = Image.FromFile("Resources/Attach24.bmp");
                                    }
                                    else
                                    {

                                        data.Rows[i]["Attach"] = Image.FromFile("Resources/None.bmp");
                                    }
                                }
                                catch
                                {
                                    data.Rows[i]["Attach"] = Image.FromFile("Resources/None.bmp");
                                }
                            }
                            else
                            {

                                data.Rows[i]["Attach"] = Image.FromFile("Resources/None.bmp");
                            }
                            if (r["Links"] != null)
                            {
                                //if ((int)r["Links"] > 0)
                                try
                                {
                                    if (float.Parse(r["Links"].ToString()) > 0)
                                    {

                                        data.Rows[i]["Link"] = Image.FromFile("Resources/Link24.bmp");
                                    }
                                    else
                                    {

                                        data.Rows[i]["Link"] = Image.FromFile("Resources/None.bmp");
                                    }
                                }
                                catch
                                {
                                    data.Rows[i]["Link"] = Image.FromFile("Resources/None.bmp");
                                }
                            }
                            else
                            {

                                data.Rows[i]["Link"] = Image.FromFile("Resources/None.bmp");
                            }
                        }
                    }

                    gridView.DataSource = data;
                    gridView.DefaultCellStyle.Font = new Font("Tahoma", 10);
                    for (int i = 0; i < gridView.Rows.Count; i++)
                    {
                        var r = gridView.Rows[i];
                        string test1=null ;
                        try
                        {
                            test1 = (r.Cells["Test1"].Value.ToString());
                        }
                        catch (Exception ex)
                        {
                            test1 = null;
                        }
                        var status = (r.Cells["Status"].Value.ToString());
                        DataRow color = null;
                        if (test1 != null)
                        {
                            color = getRowColorByTest(template,Convert.ToInt32(test1));
                        }

                        if (color == null)
                        {
                            color = getRowColorByStatus(template, status);
                        }
                        if (color != null)
                        {
                         //   gridView.Rows[i].DefaultCellStyle.BackColor = ColorTranslator.FromHtml(color["BackColor"].ToString()); //Color.FromArgb(Convert.ToInt32(color["BackColor"].ToString()));
                            gridView.Rows[i].DefaultCellStyle.ForeColor = ColorTranslator.FromHtml(color["ForeColor"].ToString());//Color.FromArgb(Convert.ToInt32(color["ForeColor"].ToString()));
                        }
                    }
                }
            }

        }

        private void gridView_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            var data = (DataTable)gridView.DataSource;
            if (e.RowIndex >= 0)
            {
                if (e.RowIndex < data.Rows.Count)
                {

                    var row = data.Rows[e.RowIndex];
                    lblCreated.Text = row["CreateDate"].ToString();
                    lblLastUpdate.Text = row["UpdatedBy"].ToString();
                    lblID.Text = row["ID"].ToString();
                    lblUpdated.Text = row["LastUpdate"].ToString();
                    lblTitle.Text = row["Abstract"].ToString();
                    //lblDescription.Text = row["Description"].ToString();
                    webBrowser1.Navigate("about:blank");
                    if (webBrowser1.Document != null)
                    {
                        webBrowser1.Document.Write(string.Empty);
                    }
                    webBrowser1.DocumentText = row["Description"].ToString();
                }
            }


        }

        private void gridView_DataSourceChanged(object sender, EventArgs e)
        {
            var data = (DataTable)gridView.DataSource;

            for (var i = 0; i < data.Rows.Count; i++)
            {
                gridView.Rows[i].HeaderCell.Value = String.Format("{0}", i + 1);
            }

            for (var i = 0; i < gridView.Columns.Count; i++)
            {
                var column = gridView.Columns[i].DataPropertyName;
                var typeOfColumn = data.Columns[column].DataType;
                if (typeOfColumn == typeof(string) || typeOfColumn == typeof(Image))
                {
                    gridView.Columns[i].Visible = true;
                }
                else
                {
                    gridView.Columns[i].Visible = false;
                }
            }
        }

        private void gridView_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void panel4_Paint(object sender, PaintEventArgs e)
        {

        }

        private void lblDescription_Click(object sender, EventArgs e)
        {

        }

        private void splitContainer8_Panel2_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
