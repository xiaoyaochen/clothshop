using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls; 

public partial class AdminManage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["pass"] == null)
            Response.Redirect("login.aspx");
        else
            Label1.Text = Session["username"].ToString() + " 您好";

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strName = TextBox1.Text;
        string strPicUrl = TextBox2.Text;
        double dblPrice = double.Parse(TextBox3.Text);
        string strBrand = TextBox4.Text;
        string strSize = TextBox5.Text;
        string strForAges = TextBox6.Text;
        string strStock = TextBox7.Text;
        int intCategoryId = int.Parse(TextBox8.Text);
        String strStatus = TextBox9.Text;

        SqlConnection conn = new SqlConnection();
                //读取web.config中的连接字符串作为conn的连接串
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
               
        string strsql = string.Format("insert into productInfo (Name,PictureUrl,Price,Brand,Size,ForAges,Stock,CategoryID,CreateDate,Status) Values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}',Getdate(),'{8}')",strName,strPicUrl,dblPrice,strBrand,strSize,strForAges,strStock,intCategoryId,strStatus );
                //打开连接
        conn.Open();
                //创建command对象，并传参：sql语句和connection对象
         SqlCommand comm = new SqlCommand(strsql, conn);
         try
         {
             if (comm.ExecuteNonQuery()<=0)
                    {
                        Label2.Text = "添加商品失败。";
                        return;
                    }
              }
             catch (Exception ex)
              {
                  Label2.Text = "添加商品失败。";
                  return;
              }
             finally
              {
                    //关闭连接
                    conn.Close();
               }

         Response.Write(@"<script>alert('添加商品成功.');</script>");
         Label2.Text = "添加商品成功.";

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string uploadName = InputFile.Value;//获取待上传图片的完整路径，包括文件名         //string uploadName = InputFile.PostedFile.FileName;     
        string pictureName = "";//上传后的图片名，以当前时间为文件名，确保文件名没有重复        
        if (InputFile.Value != "")
        {
            int idx = uploadName.LastIndexOf(".");
            string suffix = uploadName.Substring(idx);//获得上传的图片的后缀名           
            pictureName = DateTime.Now.Ticks.ToString() + suffix;
            TextBox2.Text = "~/images/" + pictureName;
        }
        try
        {
            if (uploadName != "")
            {
                string path = Server.MapPath("~/images/");
                InputFile.PostedFile.SaveAs(path + pictureName);
                Label3.Text = "上传成功！";
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
    }
}