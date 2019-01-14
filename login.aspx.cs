using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;


public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        //创建连接对象conn
        SqlConnection conn = new SqlConnection();
        //读取web.config中的连接字符串作为conn的连接串
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        //保存用户名和密码
        string strUname = TextBox1.Text;
        string strpwd = TextBox2.Text;
        //创建string变量，用于保存sql语句
        string strsql = "select Role from userInfo where username='" + strUname + "' and password='" + strpwd + "'";
        //打开连接
        conn.Open();
        //创建command对象，并传参：sql语句和connection对象
        SqlCommand comm = new SqlCommand(strsql, conn);
        //执行查询语句,ExecuteScalar的返回值是object类型
        object x = comm.ExecuteScalar();
        int intRole;
        //判断查询结果
        if (x == null)
        {
            lblError.Text = "你输入的用户名或密码不正确。";
            lblError.ForeColor = System.Drawing.Color.Red;
            Session["pass"] = null;
        }
        else
        {
            Session["pass"] = "right";
            Session["username"] = strUname;
            intRole = (int)x;
            if (intRole == 0)        //管理员
            {
                lblError.Text = "";
                Response.Redirect("AdminManage.aspx?name=" + TextBox1.Text);
            }
            else if (intRole == 1)   //普通会员
            {
                lblError.Text = "";
                Response.Redirect("default.aspx?name=" + TextBox1.Text);
            }
        }
        //关闭连接
        conn.Close();
    }
}