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
    public partial class Editcategory : System.Web.UI.Page
    {
        Concls ed = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind_grid();
            }
        }

        public void Bind_grid()
        {
            string str = "select * from Cat_table";
            DataSet ds = ed.Fun_exeAdapter(str);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Bind_grid();
        }



        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            
            
                int i = e.RowIndex;
                int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
                GridViewRow row = (GridViewRow)GridView1.Rows[i];
                TextBox txtname = (TextBox)row.FindControl("Textbox1");
                TextBox txtdesc = (TextBox)row.FindControl("Textbox2");
                FileUpload fu = (FileUpload)row.FindControl("Fileupload1") as FileUpload;

          
            if (fu.HasFile)
            {

                string pi = "~/Catimages/" + fu.FileName;
                fu.SaveAs(MapPath(pi));
                string upd = "update Cat_table set Cat_name='" + txtname.Text + "',Cat_description='" + txtdesc.Text + "', Cat_image='" + pi + "' where Cat_id='" + getid + "'";
                int k = ed.Fun_exenonqry(upd);
  
            }
            else
            {
                string upd1 = "update Cat_table set Cat_name='" + txtname.Text + "',Cat_description='" + txtdesc.Text + "' where Cat_id='" + getid + "'";
                int k = ed.Fun_exenonqry(upd1);
            }
            GridView1.EditIndex = -1;
            Bind_grid();
        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Bind_grid();
        }
    }
}