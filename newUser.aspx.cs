using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class newUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSub_Click(object sender, EventArgs e)
    {

        SqlConnection conn = new SqlConnection();

        conn.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\shop.mdf;Integrated Security=True;User Instance=True";
        string username = txtName.Text;
        string password = txtPass.Text;
        string mail = txtMail.Text;
        string tel = txtTel.Text;
        string code = txtCode.Text;


        string strInsert = string.Format("insert into userInfo(Username,Password,Email,Telephone,Postcode) values('{0}',{1},'{2}','{3}','{4}')", username, password, mail, tel,code);
        //打开连接
        conn.Open();
        //创建command对象，并传参：sql语句和connection对象
        SqlCommand comm = new SqlCommand(strInsert, conn);
        //执行查询语句，并用datareader对象dr接收返回结果集
        try
        {
            comm.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            Label1.Text = "用户名已被占！";
            return;
        }
        finally
        {
            //关闭连接
            conn.Close();
        }

        Response.Write(@"<script>alert('注册成功！');</script>");
        Label1.Text = "注册成功。";
     
    }
}