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
    public partial class Login : System.Web.UI.Page
    {
        Concls objl = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sel = "select count(Reg_id) from Login_table where Username= '" + TextBox1.Text + "' and Password ='" + TextBox2.Text + "'";
            string cid = objl.Fun_exescalar(sel);
            if (cid == "1")
            {
                int id1 = 0;
                string logt = "";
                string str1 = "select Reg_id,Logtype from Login_table where Username= '" + TextBox1.Text + "' and Password ='" + TextBox2.Text + "'";
                SqlDataReader dr = objl.Fun_exeReader(str1);
                while (dr.Read())
                {
                    id1 = Convert.ToInt32(dr["Reg_id"].ToString());
                    logt = dr["Logtype"].ToString();
                }
                Session["uid"] = id1;
                if (logt == "Admin")
                {
                    Response.Redirect("Adminhome.aspx");
                }
                else if (logt == "user")
                {
                    Response.Redirect("Userhome.aspx");
                }

            }
            else if(cid!="1")
            {
                Label3.Visible = true;
                Label3.Text = "Invalid username or Password";
            }
        }
    }
}