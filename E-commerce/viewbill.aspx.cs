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
    public partial class viewbill : System.Web.UI.Page
    {
        Concls bil = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {

            string billin = "select * from Userreg_table where User_id='" + Session["uid"] + "'";
            SqlDataReader dr = bil.Fun_exeReader(billin);
            while (dr.Read())
            {
                Label19.Text = dr["Name"].ToString();
                Label23.Text= dr["Name"].ToString();
                Label20.Text = dr["Phonenumber"].ToString();
                Label24.Text = dr["Phonenumber"].ToString();
                Label21.Text = dr["Address"].ToString();
                Label25.Text = dr["Address"].ToString();
                Label22.Text = dr["Pincode"].ToString();    
                Label26.Text = dr["Pincode"].ToString();
            }
            string sel = "select Ordertable.*,Protable.Pro_name,Protable.Pro_price from Ordertable join Protable on Ordertable.Pro_id=Protable.Pro_id where User_id='" + Session["uid"] + "' and Orderstatus='Order'";
            DataSet ds = bil.Fun_exeAdapter(sel);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            
            string subt = "select Subtotal from Billtable where User_id='" + Session["uid"] + "' and Status='Active'";
            string total = bil.Fun_exescalar(subt);
            Label33.Text = total;
            Session["totalamount"] = total;
                
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("payment.aspx");
        }
    }
}