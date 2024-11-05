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
    public partial class Viewcart : System.Web.UI.Page
    {
        Concls crt = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind_grid();
            }
        }
        public void Bind_grid()
        {
            string joi = "select Carttable.*,Protable.Pro_image,Protable .Pro_name from Carttable join Protable on Carttable.Pro_id=Protable.Pro_id where user_id='" + Session["uid"] + "'";
            DataSet ds = crt.Fun_exeAdapter(joi);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Bind_grid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Bind_grid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int getproid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            GridViewRow row = (GridViewRow)GridView1.Rows[i];
            TextBox proq = (TextBox)row.FindControl("Textbox1");

            string proprice = "select Pro_price from Protable where Pro_id='" + getproid + "'";
            string pprice = crt.Fun_exescalar(proprice);


            int f = Convert.ToInt32(pprice);
            int s = Convert.ToInt32(proq.Text);
            int v = s * f;

            string upd = "update Carttable set Cartquantity='" + proq.Text + "',Totalprice='" + v + "' where Pro_id='" + getproid + "'";
            int k = crt.Fun_exenonqry(upd);
            GridView1.EditIndex = -1;
            Bind_grid();


        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int getproid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string del = "delete from Carttable where Pro_id='" + getproid + "'";
            int s = crt.Fun_exenonqry(del);
            GridView1.EditIndex = -1;
            Bind_grid();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cooid = "Select max(Cart_id) from carttable where User_id='" + Session["uid"] + "'";
            string citem = crt.Fun_exescalar(cooid);
            int cnt = Convert.ToInt32(citem);
            for (int i = 1; i <= cnt; i++)
            {
                int price = 0;
                string qty = "";
                string prid = "";
                int h =0;
                string sel = "select * from Carttable where Cart_id='" + i + "'";
                SqlDataReader dr = crt.Fun_exeReader(sel);

                while (dr.Read())
                {
                   string pric = dr["Totalprice"].ToString();
                    price = Convert.ToInt32(pric);
                    qty = dr["Cartquantity"].ToString();
                    prid = dr["Pro_id"].ToString();
                    h = 1;
                }
                if (h == 1)
                {
                    string ins = "insert into Ordertable values('" + Session["uid"] + "'," + prid + ",'" + qty + "','" + price + "','" + DateTime.Now + "','Order')";
                    int j = crt.Fun_exenonqry(ins);
                    if (j != 0)
                    {
                        string del = "delete from Carttable where Cart_id='" + i + "'";
                        crt.Fun_exenonqry(del);
                    }

                }
                
            }
            string subt = "select sum(Grandtotal) from Ordertable where User_id='" + Session["uid"] + "' and Orderstatus='Order'";
            string total = crt.Fun_exescalar(subt);

            string billins="insert into Billtable values('"+Session["uid"]+"','"+DateTime.Now+"','"+total+"','Active')";
            crt.Fun_exenonqry(billins);
            Response.Redirect("viewbill.aspx");
        }
    }
    }
