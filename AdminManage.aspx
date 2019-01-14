<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminManage.aspx.cs" Inherits="AdminManage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 85px;
        }
        .style1
        {
            width: 67%;
            background-color: #FFFF00;
        }
        .style2
        {
            background-color: #99FFCC;
            width: 796px;
        }
        .style3
        {
            width: 104px;
            background-color: #99FFCC;
        }
        .style4
        {
            height: 1427px;
        }
        .style5
        {
            margin-top: 0px;
        }
        .style6
        {
            height: 102px;
        }
        .style7
        {
            height: 34px;
        }
    </style>
</head>
<body background="pictures/背景2.jpg">
    <form id="form1" runat="server">
      <div>
       <table class="auto-style1">
        <tr>
            <td style="vertical-align:top" class="style4">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">主页</asp:HyperLink>
                <asp:TreeView ID="TreeView1" runat="server" Height="304px" Width="177px">
                    <Nodes>
                        <asp:TreeNode NavigateUrl="~/AdminManage.aspx" Selected="True" Text="商品管理" Value="商品管理">
                            <asp:TreeNode Text="查询商品" Value="查询商品" NavigateUrl="~/AdminManage.aspx"></asp:TreeNode>
                            <asp:TreeNode Text="编辑商品" Value="编辑商品" NavigateUrl="~/AdminManage.aspx"></asp:TreeNode>
                            <asp:TreeNode Text="添加新品" Value="添加新品" NavigateUrl="~/AdminManage.aspx"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="会员管理" Value="会员管理" NavigateUrl="~/userManage.aspx"></asp:TreeNode>
                        <asp:TreeNode Text="商品类别管理" Value="商品类别管理"></asp:TreeNode>
                        <asp:TreeNode Text="订单处理" Value="订单处理" NavigateUrl="~/chuliOrder.aspx"></asp:TreeNode>
                    </Nodes>
                </asp:TreeView>
            </td>
            <td class="style4">
                <asp:Label ID="Label1" runat="server"></asp:Label>查询所有商品：<br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" 
                    DataSourceID="SqlDataSource1" Height="114px" Width="686px">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="商品编号" InsertVisible="False" ReadOnly="True" SortExpression="Id" >
                        <HeaderStyle Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Name" HeaderText="商  品  名  称" SortExpression="Name" >
                        <HeaderStyle Wrap="False" />
                        <ItemStyle Wrap="True" />
                        </asp:BoundField>
                        <asp:BoundField DataField="PictureUrl" HeaderText="图片路径" SortExpression="PictureUrl" >
                        <HeaderStyle Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Price" HeaderText="价格" SortExpression="Price" >
                        <HeaderStyle Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Brand" HeaderText="品牌" SortExpression="Brand" >
                        <HeaderStyle Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Size" HeaderText="尺码" SortExpression="Size" >
                        <HeaderStyle Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ForAges" HeaderText="适合年龄" SortExpression="ForAges" >
                        <HeaderStyle Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Stock" HeaderText="库存量" SortExpression="Stock" >
                        <HeaderStyle Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CategoryID" HeaderText="类别编号" SortExpression="CategoryID" >
                        <HeaderStyle Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CreateDate" HeaderText="创建日期" SortExpression="CreateDate" >
                        <HeaderStyle Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Status" HeaderText="状态" SortExpression="Status" >
                        <HeaderStyle Wrap="False" />
                        </asp:BoundField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [productInfo]" 
                    OldValuesParameterFormatString="original_{0}">
                </asp:SqlDataSource>
                &nbsp;<br />
                编辑商品：<br />
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" 
                    DataSourceID="SqlDataSource2" Height="137px" style="margin-right: 19px" 
                    Width="667px" PageSize="5">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" >
                        <ItemStyle Wrap="False" />
                        </asp:CommandField>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="PictureUrl" HeaderText="PictureUrl" SortExpression="PictureUrl" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:BoundField DataField="Brand" HeaderText="Brand" SortExpression="Brand" />
                        <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
                        <asp:BoundField DataField="ForAges" HeaderText="ForAges" SortExpression="ForAges" />
                        <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
                        <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" />
                        <asp:BoundField DataField="CreateDate" HeaderText="CreateDate" SortExpression="CreateDate" />
                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [productInfo]" 
                    ConflictDetection="CompareAllValues" 
                    DeleteCommand="DELETE FROM [productInfo] WHERE [ID] = @original_ID AND [Name] = @original_Name " 
                    InsertCommand="INSERT INTO [productInfo] ([Name], [PictureUrl], [Price], [Brand], [Size], [ForAges], [Stock], [CategoryID], [CreateDate], [Status]) VALUES (@Name, @PictureUrl, @Price, @Brand, @Size, @ForAges, @Stock, @CategoryID, @CreateDate, @Status)" 
                    UpdateCommand="UPDATE [productInfo] SET [Name] = @Name, [PictureUrl] = @PictureUrl, [Price] = @Price, [Brand] = @Brand, [Size] = @Size, [ForAges] = @ForAges, [Stock] = @Stock, [CategoryID] = @CategoryID, [CreateDate] = @CreateDate, [Status] = @Status WHERE [ID] = @original_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ID" Type="Int32" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_PictureUrl" Type="String" />
                        <asp:Parameter Name="original_Price" Type="Decimal" />
                        <asp:Parameter Name="original_Brand" Type="String" />
                        <asp:Parameter Name="original_Size" Type="String" />
                        <asp:Parameter Name="original_ForAges" Type="String" />
                        <asp:Parameter Name="original_Stock" Type="Int32" />
                        <asp:Parameter Name="original_CategoryID" Type="Int32" />
                        <asp:Parameter Name="original_CreateDate" Type="DateTime" />
                        <asp:Parameter Name="original_Status" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="PictureUrl" Type="String" />
                        <asp:Parameter Name="Price" Type="Decimal" />
                        <asp:Parameter Name="Brand" Type="String" />
                        <asp:Parameter Name="Size" Type="String" />
                        <asp:Parameter Name="ForAges" Type="String" />
                        <asp:Parameter Name="Stock" Type="Int32" />
                        <asp:Parameter Name="CategoryID" Type="Int32" />
                        <asp:Parameter Name="CreateDate" Type="DateTime" />
                        <asp:Parameter Name="Status" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="PictureUrl" Type="String" />
                        <asp:Parameter Name="Price" Type="Decimal" />
                        <asp:Parameter Name="Brand" Type="String" />
                        <asp:Parameter Name="Size" Type="String" />
                        <asp:Parameter Name="ForAges" Type="String" />
                        <asp:Parameter Name="Stock" Type="Int32" />
                        <asp:Parameter Name="CategoryID" Type="Int32" />
                        <asp:Parameter Name="CreateDate" Type="DateTime" />
                        <asp:Parameter Name="Status" Type="String" />
                        <asp:Parameter Name="original_ID" Type="Int32" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_PictureUrl" Type="String" />
                        <asp:Parameter Name="original_Price" Type="Decimal" />
                        <asp:Parameter Name="original_Brand" Type="String" />
                        <asp:Parameter Name="original_Size" Type="String" />
                        <asp:Parameter Name="original_ForAges" Type="String" />
                        <asp:Parameter Name="original_Stock" Type="Int32" />
                        <asp:Parameter Name="original_CategoryID" Type="Int32" />
                        <asp:Parameter Name="original_CreateDate" Type="DateTime" />
                        <asp:Parameter Name="original_Status" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <table class="auto-style1">
                    <tr>
                        <td>
                            添加新品：</td>
                    </tr>
                    <tr>
                        <td>
                            <table class="style1">
                                <tr>
                                    <td class="style3">
                                        商品名：</td>
                                    <td class="style2">
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        图片url:</td>
                                    <td class="style2">
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <input id="InputFile" type="file"  runat="server" class="style5"/><asp:Button ID="Button2" runat="server" 
                    onclick="Button2_Click" Text="上传" />
                <asp:Label ID="Label3" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        价格：</td>
                                    <td class="style2">
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        商标：</td>
                                    <td class="style2">
                                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        尺寸：</td>
                                    <td class="style2">
                                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        适合年龄：</td>
                                    <td class="style2">
                                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        库存：</td>
                                    <td class="style2">
                                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        类别：</td>
                                    <td class="style2">
                                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        状态：</td>
                                    <td class="style2">
                                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        &nbsp;</td>
                                    <td class="style2">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                    </td>
                                    <td class="style2">
                                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="提交" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style7"></td>
            <td class="style7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6"></td>
            <td class="style6">
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
