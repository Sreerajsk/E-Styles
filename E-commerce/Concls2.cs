using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace E_commerce
{
    public class Concls2
    {
        SqlConnection con;


        public Concls2()
        {
            con = new SqlConnection(@"server=DESKTOP-JTD9789\SQLEXPRESS;Database=Ecommerce;integrated security=true");
        }
            public void fn_exenonqry(SqlCommand cmd)
            {
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery().ToString();
                con.Close();

            }
        public string fn_exescalar(SqlCommand cmd)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd.Connection = con;
            con.Open();
            string s= cmd.ExecuteNonQuery().ToString();
            con.Close();
            return s;

        }
        public SqlDataReader fn_exereader(SqlCommand cmd)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd.Connection = con;
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            con.Close();
            return dr;

        }
        public DataSet fn_exeadapter(SqlCommand cmd)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;

        }
    }
 }
