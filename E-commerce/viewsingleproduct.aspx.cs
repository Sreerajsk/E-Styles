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
    public partial class viewsingleproduct : System.Web.UI.Page
    {
        Concls proi = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                string sp = "select * from Protable where Pro_id = '" + Session["proid"] + "'";
                SqlDataReader dr1 = proi.Fun_exeReader(sp);
                while (dr1.Read())
                {
                    Image1.ImageUrl = dr1["Pro_image"].ToString();
                    Label1.Text = dr1["Pro_name"].ToString();
                    Label2.Text = dr1["Pro_description"].ToString();
                    Label3.Text = dr1["Pro_price"].ToString();
                    Label8.Text= dr1["Pro_price"].ToString();
                    
                }
            }
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int s = Convert.ToInt32(Label3.Text);
            int v = Convert.ToInt32(DropDownList1.SelectedValue);
            Label8.Text = Convert.ToInt32(s * v).ToString();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Userhome.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string maxcrt = "select max(Cart_id) from Carttable ";
            string max_cid = proi.Fun_exescalar(maxcrt);
            int new_cid = 0;
            if (max_cid == "")
            {
                new_cid = 1;
            }
            else
            {
                int newcart_id = Convert.ToInt32(max_cid);
                new_cid = newcart_id + 1;
            }
            int q = Convert.ToInt32(DropDownList1.SelectedValue);

            string cartins = " insert into Carttable values(" + new_cid + "," + Session["proid"] + "," + Session["uid"] + "," + q + ",'" + Label8.Text + "')";
            String c = proi.Fun_exenonqry(cartins).ToString();
            if (c == "1")
            {
               
               
                
                
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Viewcart.aspx");
        }
    }
}