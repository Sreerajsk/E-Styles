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
    public partial class payment : System.Web.UI.Page
    {
        Concls pay = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label17.Text= Session["totalamount"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            balance.ServiceClient obj = new balance.ServiceClient();
            int balance = obj.accountbalance(TextBox1.Text, TextBox2.Text);
            int tot = Convert.ToInt32(Session["totalamount"].ToString());
            Label15.Visible = true;
            int uid = Convert.ToInt32(Session["uid"].ToString());
            
            if (balance >= tot)
            {
                int rem = balance - tot;
                int ins = obj.balanceinsert(rem, uid);
                Label18.Visible = true;
                Label18.Text = "YOUR ACCOUNT BALANCE IS :" + rem + "";

                List<string> pid = new List<string>();
                string list = "select Pro_id from Ordertable where Orderstatus='Order' and user_id='" + Session["uid"] + "'";
                SqlDataReader dr = pay.Fun_exeReader(list);
                while (dr.Read())
                {
                    pid.Add(Convert.ToString(dr["Pro_id"]));
                }

                    foreach (var v in pid)
                    {
                        string updat = "Update Ordertable set Orderstatus='paid' where user_id='" + Session["uid"] + "' and Pro_id='" + v + "'";
                        pay.Fun_exenonqry(updat);
                        string stk = "select Stock from Protable where Pro_id='" + v + "'";
                        int s = Convert.ToInt32(pay.Fun_exescalar(stk));
                        string qua = "select Or_quantity from Ordertable where Pro_id='" + v + "'";
                        int k = Convert.ToInt32(pay.Fun_exescalar(qua));
                        int u = s - k;
                        string updq = "Update Protable set Stock = " + u + " where Pro_id='" + v + "'";
                        pay.Fun_exenonqry(updq);
                    }
                

                
               
                string updatbil = "Update Billtable set Status='paid' where user_id='" + Session["uid"] + "'";
                pay.Fun_exenonqry(updatbil);

                Label15.Text = "PAYMENT SUCCESSFUL";
            }
            else if (balance < tot)
            {
                Label15.Text = "Insufficient Balance";
            }
        }
    }
}