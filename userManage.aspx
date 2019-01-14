<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userManage.aspx.cs" Inherits="userManage" %>

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
            width: 148px;
        }
    </style>
</head>
<body background="pictures/背景2.jpg">
    <form id="form1" runat="server">
      <div>
       <table class="auto-style1">
        <tr>
            
        </tr>
        <tr>
            <td style="vertical-align:top">
                <table class="auto-style1">
                    <tr>
                        <td class="style1">
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
                        <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            <table class="auto-style1">
                                <tr>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Font-Names="Bauhaus 93" 
                                            Font-Size="XX-Large" Text="会员管理"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" 
                                            DataSourceID="SqlDataSource1" onrowdatabound="GridView1_RowDataBound">
                                            <Columns>
                                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                                                    ReadOnly="True" SortExpression="ID" />
                                                <asp:BoundField DataField="Role" HeaderText="角色" SortExpression="Role" />
                                                <asp:BoundField DataField="Username" HeaderText="用户名" 
                                                    SortExpression="Username" />
                                                <asp:BoundField DataField="Password" HeaderText="密码" 
                                                    SortExpression="Password" />
                                                <asp:BoundField DataField="Email" HeaderText="邮件" SortExpression="Email" />
                                                <asp:BoundField DataField="Telephone" HeaderText="电话" 
                                                    SortExpression="Telephone" />
                                                <asp:BoundField DataField="Postcode" HeaderText="邮编" 
                                                    SortExpression="Postcode" />
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConflictDetection="CompareAllValues" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            DeleteCommand="DELETE FROM [userInfo] WHERE [ID] = @original_ID AND [Role] = @original_Role AND [Username] = @original_Username AND [Password] = @original_Password AND [Email] = @original_Email AND (([Telephone] = @original_Telephone) OR ([Telephone] IS NULL AND @original_Telephone IS NULL)) AND (([Postcode] = @original_Postcode) OR ([Postcode] IS NULL AND @original_Postcode IS NULL))" 
                                            InsertCommand="INSERT INTO [userInfo] ([Role], [Username], [Password], [Email], [Telephone], [Postcode]) VALUES (@Role, @Username, @Password, @Email, @Telephone, @Postcode)" 
                                            OldValuesParameterFormatString="original_{0}" 
                                            SelectCommand="SELECT * FROM [userInfo]" 
                                            UpdateCommand="UPDATE [userInfo] SET [Role] = @Role, [Username] = @Username, [Password] = @Password, [Email] = @Email, [Telephone] = @Telephone, [Postcode] = @Postcode WHERE [ID] = @original_ID AND [Role] = @original_Role AND [Username] = @original_Username AND [Password] = @original_Password AND [Email] = @original_Email AND (([Telephone] = @original_Telephone) OR ([Telephone] IS NULL AND @original_Telephone IS NULL)) AND (([Postcode] = @original_Postcode) OR ([Postcode] IS NULL AND @original_Postcode IS NULL))">
                                            <DeleteParameters>
                                                <asp:Parameter Name="original_ID" Type="Int32" />
                                                <asp:Parameter Name="original_Role" Type="Int32" />
                                                <asp:Parameter Name="original_Username" Type="String" />
                                                <asp:Parameter Name="original_Password" Type="String" />
                                                <asp:Parameter Name="original_Email" Type="String" />
                                                <asp:Parameter Name="original_Telephone" Type="String" />
                                                <asp:Parameter Name="original_Postcode" Type="String" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="Role" Type="Int32" />
                                                <asp:Parameter Name="Username" Type="String" />
                                                <asp:Parameter Name="Password" Type="String" />
                                                <asp:Parameter Name="Email" Type="String" />
                                                <asp:Parameter Name="Telephone" Type="String" />
                                                <asp:Parameter Name="Postcode" Type="String" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="Role" Type="Int32" />
                                                <asp:Parameter Name="Username" Type="String" />
                                                <asp:Parameter Name="Password" Type="String" />
                                                <asp:Parameter Name="Email" Type="String" />
                                                <asp:Parameter Name="Telephone" Type="String" />
                                                <asp:Parameter Name="Postcode" Type="String" />
                                                <asp:Parameter Name="original_ID" Type="Int32" />
                                                <asp:Parameter Name="original_Role" Type="Int32" />
                                                <asp:Parameter Name="original_Username" Type="String" />
                                                <asp:Parameter Name="original_Password" Type="String" />
                                                <asp:Parameter Name="original_Email" Type="String" />
                                                <asp:Parameter Name="original_Telephone" Type="String" />
                                                <asp:Parameter Name="original_Postcode" Type="String" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
