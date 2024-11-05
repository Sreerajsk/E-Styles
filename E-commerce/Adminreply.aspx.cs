using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Text;

namespace E_commerce
{

    public partial class Adminreply : System.Web.UI.Page
    {
        Concls rep = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            string adm = "select  Admin_Name from Admin_table where Admin_id='" + Session["uid"] + "'";
            TextBox2.Text = rep.Fun_exescalar(adm);

            TextBox4.Text = "Thanks for shopping with us";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string em = "select  Email from Userreg_table where User_id='" + Session["useid"] + "'";
            string ma = rep.Fun_exescalar(em);
            string na = "select  Name from Userreg_table where User_id='" + Session["useid"] + "'";
            string nam = rep.Fun_exescalar(na);

            SendEmail2("Sreeraj sk", "sreerajsk555@gmail.com", "ptgv tylq yfjo xwyj", nam, ma, TextBox4.Text, TextBox1.Text);
            string upda = "Update feedback set Feddback_status= 'Replied' , Reply_message='"+TextBox1.Text+"' where User_id=" + Session["useid"] + "";
            rep.Fun_exenonqry(upda);

        }
        public static void SendEmail2(string yourName, string yourGmailUserName,
            string yourGmailPassword, string toName, string toEmail, string subject, string
            body)

            {
                string to = toEmail; //To address
                string from = yourGmailUserName; //From address
                MailMessage message = new MailMessage(from, to);

                string mailbody = body;
                message.Subject = subject;
                message.Body = mailbody;
                message.BodyEncoding = Encoding.UTF8;
                message.IsBodyHtml = true;
                SmtpClient client = new SmtpClient("Smtp.gmail.com", 587);
                //Gmail smtp
                System.Net.NetworkCredential basicCredential1 = new
                System.Net.NetworkCredential(yourGmailUserName, yourGmailPassword);
                client.EnableSsl = true;
                client.UseDefaultCredentials = true;
                client.Credentials = basicCredential1;
                try
                {
                    client.Send(message);
                }

                catch (Exception ex)
                {
                    throw ex;
                }
          
        }
        } } 