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
    public partial class Viewfeedback : System.Web.UI.Page
    {
        Concls fdb = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            string fdba = "select Userreg_table.Name,Userreg_table.User_id,feedback.Feedback_message from Userreg_table join feedback on Userreg_table.User_id=feedback.User_id where feedback.Feddback_status ='Active'";
            DataSet ds1 = fdb.Fun_exeAdapter(fdba);
            GridView1.DataSource = ds1;
            GridView1.DataBind();
        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            int usid = Convert.ToInt32(e.CommandArgument);
            Session["useid"] = usid;
            Response.Redirect("adminreply.aspx");
        }
    }
}