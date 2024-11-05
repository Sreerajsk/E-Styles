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
    
    public partial class Viewproducts : System.Web.UI.Page
    {
        Concls pvi = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                string prov = "select * from Protable where Cat_id='" + Session["useid"] + "'";
                DataSet ds = pvi.Fun_exeAdapter(prov);
                DataList1.DataSource = ds;
                DataList1.DataBind();

            }

        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int proid = Convert.ToInt32(e.CommandArgument);
            Session["proid"] = proid;
            Response.Redirect("viewsingleproduct.aspx");
        }
    }
}