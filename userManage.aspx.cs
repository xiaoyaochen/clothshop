using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userManage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            try
            {   //获取删除按钮
                LinkButton delete = (LinkButton)e.Row.Cells[3].Controls[0];
                //设置JavaScript
                delete.OnClientClick = "return confirm('您真要删除或修改" +
                e.Row.Cells[1].Text + "的记录吗?');";
            }
            catch
            {       //若try块有异常，则不做任何操作          }
            }
        }

    }
}