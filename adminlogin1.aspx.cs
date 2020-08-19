using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class adminlogin1 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Administrator\Documents\Visual Studio 2013\WebSites\asp_project\App_Data\project.mdf;Integrated Security=True;Connect Timeout=30");
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submitadmin(object sender, EventArgs e)
    {
          con.Open();

          string checkuser = "select count(*) from usertable where email='" + email.Text + "' and password='" + password.Text + "'";
          SqlCommand comd = new SqlCommand(checkuser, con);
          SqlDataReader sdr = comd.ExecuteReader();
          int coun = 0;
          while (sdr.Read())
          {
              coun = coun + 1;
          }
          if (coun == 1)
        {
            test.Text = "you have logged in succesfully";
            Response.Redirect("add_item.aspx");
        }
        else
        {

            test.Text = "your email or password is incorrect";
        }

        con.Close();
    
    }
}