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
    public partial class WebForm1 : System.Web.UI.Page
    {
        Concls ob = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string st = "select max(Reg_id) from login_table";
            string max_regid = ob.Fun_exescalar(st);
            int Reg_id = 0;
            if (max_regid == "")
            {
                Reg_id = 1;
            }
            else
            {
                int new_regid = Convert.ToInt32(max_regid);
                Reg_id = new_regid + 1;
            }
            string ins = "insert into Admin_table values(" + Reg_id + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text +"','"+TextBox5.Text+ "')";
            int a = ob.Fun_exenonqry(ins);
            if (a == 1)
            {
                string inlog = "insert into Login_table values(" + Reg_id + ",'" + TextBox6.Text + "','" + TextBox7.Text + "','Admin')";
                int b = ob.Fun_exenonqry(inlog);
            }
        }
    }
}