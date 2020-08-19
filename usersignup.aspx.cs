using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class usersignin : System.Web.UI.Page
{

    SqlConnection conuser = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Administrator\Documents\Visual Studio 2013\WebSites\asp_project\App_Data\project.mdf;Integrated Security=True;Connect Timeout=30");

   
    protected void submituse(object sender, EventArgs e)
    {
        try
        {
            conuser.Open();
            string checkuser = "select * from usertable where email ='" + email.Text + "'";
            SqlCommand comd = new SqlCommand(checkuser, conuser);
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
                string insertqurey = "insert into usertable (email,password,name,mobile)values(' " + email.Text + "','" + password.Text + "','" + name.Text + "'," + pno + ");";
                SqlCommand com = new SqlCommand(insertqurey, conuser);
                com.ExecuteNonQuery();
                test.Text = "email is now registered";
                Response.Redirect("userlogin1.aspx");
            }

            conuser.Close();
        }
        catch(Exception ex)
        {
            Response.Write(test.Text=ex.Message);
        }
    }
}



    
