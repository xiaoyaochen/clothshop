using System; 
using System.Collections.Generic; 
using System.Linq; 
using System.Web; 
using System.Web.UI; 
using System.Web.UI.WebControls; 
using System.Collections; 
using System.Data; 
using System.Data.SqlClient; 

public partial class shoppingCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["ShoppingCart"] == null)
      //  {
       //     Response.Write("<script>alert('购物车为空，请挑选商品');window.location.href='Default.aspx';</script>");
      //  }

        if (!IsPostBack)
        {
            GridView1.DataSource = Session["ShoppingCart"];
            DataBind();
        }
        

    }
    protected void btnSum_Click(object sender, EventArgs e)
    {
        double sum = 0.0;
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox cb = (CheckBox)GridView1.Rows[i].Cells[0].FindControl("CheckBox1");
            if (cb.Checked)
            {
                int num = int.Parse(((TextBox)GridView1.Rows[i].Cells[0].FindControl("TextBox2")).Text);
               
                sum = sum + (double.Parse(GridView1.Rows[i].Cells[3].Text)) * num;
            }
            Label1.Text = sum.ToString();
            Session["totalMoney"] = Label1.Text;
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox cb = (CheckBox)GridView1.Rows[i].Cells[0].FindControl("CheckBox1");
            if (cb.Checked)
            {
                shoppingCartGo(i);
            }
        }
        if (Session["totalMoney"] == null)
        {
            Response.Write("<script>alert('请勾选商品！');</script>");
        }
        else
        {
            Response.Redirect("AddOrderDet.aspx");
        }
    }
    protected void shoppingCartGo(int i)
    {
        System.Data.DataTable Cart = new System.Data.DataTable();

        if (Session["ShoppingCart2"] == null)
        { 
            Cart.Columns.Add("商品编号",typeof(int));
            Cart.Columns.Add("商品名称", typeof(string));
            Cart.Columns.Add("商品单价", typeof(double));
            Cart.Columns.Add("选购尺码", typeof(string));
            Cart.Columns.Add("商品数量", typeof(int));
            Session["ShoppingCart2"] = Cart;
        }
        GridViewRow row = GridView1.Rows[i];
        Cart = (System.Data.DataTable)Session["ShoppingCart2"];
        int intBh = int.Parse(row.Cells[1].Text);
        string strName = row.Cells[2].Text;
        double dblPrice = double.Parse(row.Cells[3].Text);
        string strSize = row.Cells[4].Text;
        string strNum = ((TextBox)row.Cells[5].FindControl("TextBox2")).Text;
        System.Data.DataRow rr = Cart.NewRow();
        rr["商品编号"] = intBh;
        rr["商品名称"] = strName;
        rr["商品单价"] = dblPrice;
        rr["选购尺码"] = strSize;
        rr["商品数量"] = int.Parse(strNum);
        Cart.Rows.Add(rr);
        Session["ShoppingCart2"] = Cart;
        
    }


    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        double sum = 0.0;
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox cb = (CheckBox)GridView1.Rows[i].Cells[0].FindControl("CheckBox1");
            if (cb.Checked)
            {
                sum = sum + (double.Parse(GridView1.Rows[i].Cells[3].Text));

            }
        }
        Label1.Text = sum.ToString();
        Session["totalMoney"] = Label1.Text;
    
    }



   
protected void  Button4_Click(object sender, EventArgs e)
{

        Session.Remove("ShoppingCart");
        GridView1.DataSource = Session["ShoppingCart"];
        DataBind();
    
}
}