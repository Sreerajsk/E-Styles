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
    public partial class Userhome : System.Web.UI.Page
    {
        Concls dl = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                string dal = "Select * from Cat_table";
                DataSet ds = dl.Fun_exeAdapter(dal);
                DataList1.DataSource = ds;
                DataList1.DataBind();

            }
            
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int catid = Convert.ToInt32(e.CommandArgument);
            Session["useid"] = catid;
            Response.Redirect("Viewproducts.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("feedback.aspx");
        }
    }
}