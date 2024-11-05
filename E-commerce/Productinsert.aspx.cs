using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace E_commerce
{
    public partial class Productinsert : System.Web.UI.Page
    {
        Concls proi = new Concls();

       

        protected void Page_Load(object sender, EventArgs e)
        {
           
                string selcat = "select Cat_id,Cat_name from Cat_table";
                DataSet ds = proi.Fun_exeAdapter(selcat);
                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "Cat_name";
                DropDownList1.DataValueField = "Cat_id";
                DropDownList1.DataBind();

            
        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "~/proimages/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(s));
            Label6.Visible = true;
            string proin = "insert into Protable values(" + DropDownList1.SelectedItem.Value + ",'" + DropDownList1.SelectedItem.Text + "','"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+s+"','Available',"+TextBox4.Text+")";
            int j = proi.Fun_exenonqry(proin);
            if (j == 1)
            {
                Label6.Text = "Inserted";
            }
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
    }
}