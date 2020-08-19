using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class adminsignup1 : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Administrator\Documents\Visual Studio 2013\WebSites\asp_project\App_Data\project.mdf;Integrated Security=True;Connect Timeout=30");
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submitadmin(object sender, EventArgs e)
    {
        try
        {
            conn.Open();
            string checkuser = "select * from admin where email ='" + emaila.Text + "'";
            SqlCommand comd = new SqlCommand(checkuser, conn);
            SqlDataReader sdr = comd.ExecuteReader();
            if (sdr.Read())
            {
                test.Text = "email is already registered";
                sdr.Close();
            }
            else
            {
                sdr.Close();
                Int64 pno = Convert.ToInt64(mobile.Text);
                string insertqurey = "insert into admin (email,password,name,mobile) values(' " + emaila.Text + "','" + password.Text + "','" + name.Text + "'," + pno + ");";
                SqlCommand com = new SqlCommand(insertqurey, conn);
                com.ExecuteNonQuery();
                Response.Redirect("adminlogin1.aspx");
            }

            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

    }
}