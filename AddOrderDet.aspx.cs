using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class AddOrderDet : System.Web.UI.Page
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
            //使用存储过程添加订单并返回订单号
            int orderNo = addOrder_SP();
            //添加订单商品信息
            int result = addOrderDetail(orderNo);
            if (orderNo == -1 || result == -1)
            {
                Label1.Text = "提交订单失败。请重试。";
            }
            else
            {
                Response.Redirect("orderSuccess.aspx");
            }
        }
    }
    
    private int addOrder_SP()
    {
        //创建连接对象conn
        SqlConnection conn = new SqlConnection();

        conn.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
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
        //创建string变量，用于保存存储过程名字
        string strInsert = "Pr_NewOrder";
        //打开连接
        conn.Open();
        //创建command对象，并传参：sql语句和connection对象
        SqlCommand comm = new SqlCommand(strInsert, conn);
        //指定命令形式为存储过程
        comm.CommandType = CommandType.StoredProcedure;
        //添加参数
        comm.Parameters.Add(new SqlParameter("@UserName", SqlDbType.VarChar));
        comm.Parameters["@UserName"].Value = strName;
        comm.Parameters.Add(new SqlParameter("@TotalMoney", SqlDbType.Decimal));
        comm.Parameters["@TotalMoney"].Value = dblMoney;
        comm.Parameters.Add(new SqlParameter("@Address", SqlDbType.NVarChar));
        comm.Parameters["@Address"].Value = strAddress;
        comm.Parameters.Add(new SqlParameter("@Addressee", SqlDbType.NVarChar));
        comm.Parameters["@Addressee"].Value = strAddressee;
        comm.Parameters.Add(new SqlParameter("@Tel", SqlDbType.NVarChar));
        comm.Parameters["@Tel"].Value = strTel;
        comm.Parameters.Add(new SqlParameter("@RETURN", SqlDbType.Decimal));
        comm.Parameters["@RETURN"].Direction = ParameterDirection.ReturnValue;

        //执行语句
        try
        {
            comm.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
            return -1;
        }
        finally
        {
            //关闭连接
            conn.Close();
        }
        return (int)comm.Parameters["@RETURN"].Value;
    }
    private int addOrderDetail(int orderNo)
    {
        //创建DataTable对象cart，用于保存订单中的商品信息
        System.Data.DataTable Cart = new System.Data.DataTable();
        Cart = (System.Data.DataTable)Session["ShoppingCart2"];
        for (int i = 0; i < Cart.Rows.Count; i++)
        {
            DataRow dRow = Cart.Rows[i];
            int intProductId = int.Parse(dRow["商品编号"].ToString());
            string strSize = dRow["选购尺码"].ToString();
            int intNum = int.Parse(dRow["商品数量"].ToString());
            double dblPrice = double.Parse(dRow["商品单价"].ToString());
            //创建连接对象conn
            SqlConnection conn = new SqlConnection();

            conn.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            //创建string变量，用于构造新增数据的SQL语句
            string strInsert = string.Format("insert into orderItem(OrderID,ProductID,Number,[Price],Size) values('{0}','{1}','{2}','{3}','{4}')", orderNo, intProductId, intNum,dblPrice,strSize);
         
            //打开连接
            conn.Open();
            //创建command对象，并传参：sql语句和connection对象
            SqlCommand comm = new SqlCommand(strInsert,conn);

            //执行插入语句
            try
            {
                comm.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                return -1;
            }
            finally
            {
                //关闭连接
                conn.Close();
            }
        }
        return 0;

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