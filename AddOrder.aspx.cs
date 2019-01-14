using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class AddOrder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GridView1.DataSource = Session["ShoppingCart2"];
            DataBind();
            lblMoney.Text = Session["totalMoney"].ToString();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Session["pass"] == null)
            Response.Redirect("Login.aspx");
        else
        {
            //添加订单
            insertOrder();
        }
    }
    private void insertOrder()
    {
        //创建连接对象conn
        SqlConnection conn = new SqlConnection();

        conn.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\shop.mdf;Integrated Security=True;User Instance=True";
        //conn.ConnectionString = ConfigurationManager.ConnectionStrings["shopConnectionString"].ToString();
        //创建string变量，用于保存用户输入的数据
        //用户名
        string strName = Session["userName"].ToString();
        //总金额
        double dblMoney = double.Parse(Session["totalMoney"].ToString());
        //送货地址
        string strAddress = DropDownList1.SelectedItem.Text;
        strAddress += DropDownList2.SelectedItem.Text;
        strAddress += DropDownList3.SelectedItem.Text;
        strAddress += TextBox1.Text;
        //收货人姓名
        string strAddressee = TextBox2.Text;
        string strTel = TextBox3.Text;
        //创建string变量，用于构造新增数据的SQL语句
        string strInsert = string.Format("insert into orderInfo(UserName,[TotalMoney],Address,Addressee,Tel,CreateDate) values('{0}',{1},'{2}','{3}','{4}',Getdate())", strName, dblMoney, strAddress, strAddressee,strTel);
        //打开连接
        conn.Open();
        //创建command对象，并传参：sql语句和connection对象
        SqlCommand comm = new SqlCommand(strInsert, conn);
        //执行查询语句，并用datareader对象dr接收返回结果集
        int num = comm.ExecuteNonQuery();
        if (num == -1)
        {
            Label1.Text = "提交订单失败。请重试。";
        }
        else
        {
            Response.Redirect("orderSuccess.aspx");
        }
        //关闭连接
        conn.Close();
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList2.Items.Clear();
        if (DropDownList1.SelectedValue == "01")
        {
            DropDownList2.Items.Add(new ListItem("a市", "1"));
            DropDownList2.Items.Add(new ListItem("b市", "2"));
            DropDownList2.Items.Add(new ListItem("c市", "3"));
            DropDownList2.Items.Add(new ListItem("d市", "4"));
        }
        else
        {
            DropDownList2.Items.Add(new ListItem("e市", "1"));
            DropDownList2.Items.Add(new ListItem("f市", "2"));
            DropDownList2.Items.Add(new ListItem("g市", "3"));
        }
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList3.Items.Clear();
        if (DropDownList2.SelectedValue == "01")
        {
            DropDownList3.Items.Add(new ListItem("x街道", "1"));
            DropDownList3.Items.Add(new ListItem("y街道", "2"));
        }
    }
}