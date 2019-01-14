using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class productDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        System.Data.DataTable Cart = new System.Data.DataTable();

        if (e.CommandName == "AddProduct")
        {
            if (Session["ShoppingCart"] == null)
            {
                Cart.Columns.Add("商品编号",typeof(int));
                Cart.Columns.Add("商品名称", typeof(string));
                Cart.Columns.Add("商品单价", typeof(double));
                Cart.Columns.Add("选购尺码", typeof(string));
                Session["ShoppingCart"] = Cart;
            }
            GridViewRow row = GridView1.Rows[0];

            Cart = (System.Data.DataTable)Session["ShoppingCart"];
            
            int intBh = int.Parse(Request["id"]);
            string strName = ((Label)row.Cells[0].FindControl("Label1")).Text;
            double dblPrice = double.Parse(((Label)row.Cells[0].FindControl("Label2")).Text);
            RadioButtonList rb = (RadioButtonList)row.Cells[0].FindControl("RadioButtonList1");
            string strSize = rb.SelectedValue;
            System.Data.DataRow rr = Cart.NewRow();
            rr["商品编号"] = intBh;
            rr["商品名称"] = strName;
            rr["商品单价"] = dblPrice;
            rr["选购尺码"] = strSize;
            Cart.Rows.Add(rr);
            Session["ShoppingCart"] = Cart;
            Response.Write("<script language='javascript'>alert('成功加入购物车。');</script>");
           }
    }
}