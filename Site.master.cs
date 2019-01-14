using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SiteMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["pass"] != null)
        {
            Label1.Text = "欢迎您，" + Session["username"].ToString();
            Button2.Text = "注销";
        }
        Label2.Text = "在线人数："+Application["VisitNumber"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
            Response.Redirect("~/search.aspx?name=" + "%"+TextBox1.Text+"%");
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Session["pass"] == null)
        {
            Response.Redirect("login.aspx");
           
        }
        else
        {
            Session.Remove("pass");
            Session.Remove("name");
            Response.Redirect("Default.aspx");
        }
    }
}
