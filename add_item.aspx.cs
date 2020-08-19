using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Collections.Concurrent;

public partial class add_item : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Administrator\Documents\Visual Studio 2013\WebSites\asp_project\App_Data\project.mdf;Integrated Security=True;");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void additem(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            Int32 quant = Convert.ToInt32(quantity.Text);
            Int32 pric = Convert.ToInt32(price.Text);

            Int32 war = Convert.ToInt32(warranty.Text);
            String path = "~/item_img/" + imageupload.FileName;
            imageupload.PostedFile.SaveAs(Server.MapPath("item_img") + "/" + imageupload.FileName);
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into item (name,quantity,details,image,price,type,brand,warranty) values('" + name.Text + "'," + quant + ",'" + details.Text + "','" + path + "'," + pric + ",'" + itemtype.SelectedValue + "','" + brand.Text + "'," + war + ")";
            int x = cmd.ExecuteNonQuery();
            if (x > 0)
            {
                output.Text = "item added succesfully";
            }
            else
            {
                output.Text = "item was not added";
            }

            con.Close();
        }
        catch (Exception ex)
        {
            output.Text = ex.Message;
        }
    }
    protected void Unnamed_Click(object sender, EventArgs e)
    {

    }
}