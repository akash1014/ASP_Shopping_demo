using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void filter_save(object sender, EventArgs e)
    {
        string filtquery = "select * from item ";
        int flag = 0;
        if (!(warranty.SelectedValue == "0"))
        {
            filtquery = filtquery + " where warranty=" + warranty.SelectedValue;
            flag=1;
            warranty.SelectedValue ="0";
        }
        if (!(itemtype.SelectedValue == ""))
        {
            if (flag == 1)
            {
                filtquery = filtquery + " and type='" + itemtype.SelectedValue + "'";
            }
            else
            {
                filtquery = filtquery + "where type='" + itemtype.SelectedValue + "'";
            }
            itemtype.SelectedValue ="";
        }
        if (!(brand.Text == ""))
        {

            if (flag == 1)
            {
                filtquery = filtquery + " and brand '" + brand.Text + "'";
            }
            else
            {
                filtquery = filtquery + "where brand ='" + brand.Text + "'";
            }
            brand.Text = "";
        }
        if (!(minp.SelectedValue == "0"))
        {

            if (flag == 1)
            {
                filtquery = filtquery + " and price between " + minp.SelectedValue + " and " + maxp.SelectedValue;
            }
            else
            {
                filtquery = filtquery + "where price between " + minp.SelectedValue + " and " + maxp.SelectedValue;
            }
            minp.SelectedValue = "0";
            maxp.SelectedValue = "300000";
        }
       
        
        filtquery=filtquery+" ;";
        item_display.SelectCommand=filtquery;
        
        
        }
       
       

    }





