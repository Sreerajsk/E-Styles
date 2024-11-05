using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_commerce
{
    public partial class categoryinsert : System.Web.UI.Page
    {
        Concls c2 = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string p = "~/Catimages/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));
            string cins = "insert into Cat_table values('" + TextBox1.Text + "','"+TextBox2.Text+"','"+p+"')";
            int i = c2.Fun_exenonqry(cins);
            Label4.Visible = true;
            if (i == 1)
            {
                Label4.Text = "inserted successfully";
            }
            else
            {
                Label4.Text = "not inserted";
            }
        }
    }
}