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
    public partial class feedback : System.Web.UI.Page
    {
        Concls2 fd = new Concls2();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "feedba";
            cmd.Parameters.AddWithValue("@usid", Session["uid"]);
            cmd.Parameters.AddWithValue("@msg", TextBox1.Text);
            cmd.Parameters.AddWithValue("@rply","Reply");
            cmd.Parameters.AddWithValue("@status","Active");

            SqlParameter sp = new SqlParameter();
            sp.DbType = DbType.Int32;
            sp.ParameterName = "@state";
            sp.Direction = ParameterDirection.Output;
            cmd.Parameters.Add(sp);
            fd.fn_exenonqry(cmd);
            int outpval = Convert.ToInt32(sp.Value);
            if (outpval != 0)
            {
                Button1.Text = "Feedback sent";
                Button2.Visible = true;
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Userhome.aspx");
        }
    }
}