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
    public partial class Editproducts : System.Web.UI.Page
    {
        Concls proe = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                if (!IsPostBack)
                {
                    Bind_grid();
                }
            }
        }
        public void Bind_grid()
        {
            string str = "select * from Protable";
            DataSet ds = proe.Fun_exeAdapter(str);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }


        protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Bind_grid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Bind_grid();
        }

        protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            GridViewRow row = (GridViewRow)GridView1.Rows[i];
            TextBox catname = (TextBox)row.FindControl("Textbox1");
            TextBox proname = (TextBox)row.FindControl("Textbox2");
            TextBox prodesc = (TextBox)row.FindControl("Textbox3");
            TextBox proprice = (TextBox)row.FindControl("Textbox4");
            FileUpload fu1 = (FileUpload)row.FindControl("Fileupload1") as FileUpload;
            TextBox prostatus = (TextBox)row.FindControl("Textbox5");
            TextBox stock = (TextBox)row.FindControl("Textbox6");

            if (fu1.HasFile)
            {

                string pi = "~/proimages/" + fu1.FileName;
                fu1.SaveAs(MapPath(pi));
                string upd = "update Protable set Cat_name='" + catname.Text + "',Pro_name='" + proname.Text + "',Pro_description='" + prodesc.Text + "',Pro_price='" + proprice.Text + "',Pro_image='" + pi + "',Pro_status='" + prostatus.Text + "',Stock="+stock.Text+" where Pro_id='" + getid + "'";
                int k = proe.Fun_exenonqry(upd);

            }
            else
            {
                string upd1 = "update Protable set Cat_name='" + catname.Text + "',Pro_name='" + proname.Text + "',Pro_description='" + prodesc.Text + "',Pro_price='" + proprice.Text + "',Pro_status='" + prostatus.Text + "',Stock=" + stock.Text + " where Pro_id='" + getid + "'";
                int k = proe.Fun_exenonqry(upd1);
            }
            GridView1.EditIndex = -1;
            Bind_grid();
        }
    }
}