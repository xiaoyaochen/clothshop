using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class SecurityPass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Session["pass"] != null)
        {
            string mibao = TextBox2.Text;
            if (mibao == "")
            {
                Response.Write(@"<script>alert('密保为空！');</script>");
            }
            else
            {
                SqlConnection conn = new SqlConnection();
                //读取web.config中的连接字符串作为conn的连接串
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                
                string strname =  Session["username"].ToString();
               
                string strsql = string.Format("update userInfo set mibao= '{0}'where Username= '{1}'", mibao, strname);
                //打开连接
                conn.Open();
                //创建command对象，并传参：sql语句和connection对象
                SqlCommand comm = new SqlCommand(strsql, conn);
                try
                {
                    if (comm.ExecuteNonQuery()<=0)
                    {
                        Label1.Text = "密保添加失败。";
                        return;
                    }
                }
                catch (Exception ex)
                {
                    Label1.Text = "密保添加失败。";
                    return;
                }
                finally
                {
                    //关闭连接
                    conn.Close();
                }
           
                 Response.Write(@"<script>alert('密保设置成功！');</script>");
                 Label1.Text = "密保添加成功。";
            }
        }
        else
        {
             Response.Write(@"<script>alert('请先登录！');window.location.href='login.aspx';</script>");
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string strname = TextBox3.Text;
        string strmibao = TextBox4.Text;
        String strpass = TextBox5.Text;

        if (strname == "" || strmibao == "" || strpass == "")
        {
            Response.Write(@"<script>alert('请填好用户名、密保和密码！');</script>");
        } 
        else 
        {
            SqlConnection conn = new SqlConnection();
            //读取web.config中的连接字符串作为conn的连接串
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

            string strsql = string.Format("update userInfo set Password= '{0}' where Username= '{1}' and mibao = '{2}'",strpass,strname,strmibao);
            //打开连接
            conn.Open();
            //创建command对象，并传参：sql语句和connection对象
            SqlCommand comm = new SqlCommand(strsql, conn);
            try
            {
                if (comm.ExecuteNonQuery() <= 0)
                {
                    Label2.Text = "";
                    Response.Write(@"<script>alert('密保或用户名不存在。');</script>");
                    return;
                }
            }
            catch (Exception ex)
            {
                Label2.Text = "密保或用户名不存在。";
                return;
            }
            finally
            {
                //关闭连接
                conn.Close();
            }

            Response.Write(@"<script>alert('密码找回成功！');</script>");
            Label2.Text = "密保找回成功。";
        }
    }
}