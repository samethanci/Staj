using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace Staj
{
    public partial class Default : System.Web.UI.Page
    {
        static int count = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                DataTable dt = this.binddata("select * from [TBL_BIRIM]");
                this.populatebind(dt,count,null);              
            }
        }
        private DataTable binddata(string p)
        {
            DataTable dt = new DataTable();
            string conn = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            using (SqlConnection con=new SqlConnection(conn))
            {
                using(SqlCommand cmd=new SqlCommand())
                {
                    cmd.CommandText = p;
                    cmd.Connection = con;
                    using(SqlDataAdapter da=new SqlDataAdapter(cmd))
                    {
                        da.Fill(dt);
                    }
                }
            }
            return dt;
        }
        private void populatebind(DataTable dtable,int parid,TreeNode Node)
        {
            foreach(DataRow item in dtable.Rows)
            {
                TreeNode tnode = new TreeNode
                {
                    Text = item["Name"].ToString(),
                    Value = item["Id"].ToString()
                };


                if (parid == 0)
                {
                    TreeView1.Nodes.Add(tnode);
                    DataTable dt1 = this.binddata("select * from [TBL_BOLUMLER] where BirimId =" + tnode.Value);
                    count = 1;
                    this.populatebind(dt1, count, tnode);
                }
                else if (parid == 1)
                {
                    Node.ChildNodes.Add(tnode);
                    DataTable dt1 = this.binddata("select * from [TBL_ALTBOLUM] where BolumId =" + tnode.Value);
                    count = 2;
                    this.populatebind(dt1, count, tnode);
                }
                else
                {
                    Node.ChildNodes.Add(tnode);
                }
            }
        }
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(cs);
            SqlDataAdapter adapt = new SqlDataAdapter("select * from [AltBolumPersonel]", con);
            con.Open();
            adapt.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
           
        }

        protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
        {
            TreeView1.SelectedNode.Selected = true;
            Response.Write("You selected: " + TreeView1.SelectedNode.Text);
            /*string conn = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            SqlDataAdapter adp = new SqlDataAdapter();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn
            DataTable dt = new DataTable();
            SqlParameter para = new SqlParameter("@Name", SqlDbType.VarChar, 50);
            para.Value = TreeView1.SelectedNode.Text;
            cmd.Parameters.Add(para);
            adp.SelectCommand = cmd;
            adp.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();*/
        }
    }
}