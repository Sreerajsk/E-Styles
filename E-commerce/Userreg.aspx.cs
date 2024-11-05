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
    public partial class Userreg : System.Web.UI.Page
    {
        Concls obje = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string use = "select max(Reg_id) from login_table";
            string maxregid = obje.Fun_exescalar(use);
            int Reg_id = 0;
            if (maxregid == "")
            {
                Reg_id = 1;
            }
            else
            {
                int new_regid = Convert.ToInt32(maxregid);
                Reg_id = new_regid + 1;
            }
            string usreg = "insert into Userreg_table values(" + Reg_id + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + RadioButtonList1.SelectedItem.Text + "','" + TextBox5.Text + "','"+TextBox6.Text+"','Active')";
            int c = obje.Fun_exenonqry(usreg);
            if (c == 1)
            {
                string ulog = "insert into Login_table values(" + Reg_id + ",'" + TextBox7.Text + "','" + TextBox8.Text + "','user')";
                int d = obje.Fun_exenonqry(ulog);
            }
        }
    }
}