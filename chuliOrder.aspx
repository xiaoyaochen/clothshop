<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chuliOrder.aspx.cs" Inherits="chuliOrder" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 143px;
        }
        .style3
        {
            width: 143px;
            height: 308px;
        }
        .style4
        {
            height: 308px;
        }
        .style5
        {
            font-family: 宋体, Arial, Helvetica, sans-serif;
            font-size: xx-large;
        }
    </style>
</head>
<body background="pictures/背景2.jpg">
    <form id="form1" runat="server">
    <div>
        <table class="style1">
            <tr>
                <td class="style3">
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
                    <table class="style1">
                        <tr>
                            <td class="style5" style="font-weight: 700; background-color: #FFFFFF">
                                订单处理：</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                    AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                                            ReadOnly="True" SortExpression="ID" />
                                        <asp:BoundField DataField="TotalMoney" HeaderText="TotalMoney" 
                                            SortExpression="TotalMoney" />
                                        <asp:BoundField DataField="TotalNum" HeaderText="TotalNum" 
                                            SortExpression="TotalNum" />
                                        <asp:BoundField DataField="CreateDate" HeaderText="CreateDate" 
                                            SortExpression="CreateDate" />
                                        <asp:BoundField DataField="UserName" HeaderText="UserName" 
                                            SortExpression="UserName" />
                                        <asp:BoundField DataField="Addressee" HeaderText="Addressee" 
                                            SortExpression="Addressee" />
                                        <asp:BoundField DataField="Address" HeaderText="Address" 
                                            SortExpression="Address" />
                                        <asp:BoundField DataField="Tel" HeaderText="Tel" SortExpression="Tel" />
                                        <asp:BoundField DataField="Status" HeaderText="Status" 
                                            SortExpression="Status" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConflictDetection="CompareAllValues" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    DeleteCommand="DELETE FROM [orderInfo] WHERE [ID] = @original_ID" 
                                    InsertCommand="INSERT INTO [orderInfo] ([TotalMoney], [TotalNum], [CreateDate], [UserName], [Addressee], [Address], [Tel], [Status]) VALUES (@TotalMoney, @TotalNum, @CreateDate, @UserName, @Addressee, @Address, @Tel, @Status)" 
                                    OldValuesParameterFormatString="original_{0}" 
                                    SelectCommand="SELECT * FROM [orderInfo]" 
                                    UpdateCommand="UPDATE [orderInfo] SET [TotalMoney] = @TotalMoney, [TotalNum] = @TotalNum, [CreateDate] = @CreateDate, [UserName] = @UserName, [Addressee] = @Addressee, [Address] = @Address, [Tel] = @Tel, [Status] = @Status WHERE [ID] = @original_ID">
                                    <DeleteParameters>
                                        <asp:Parameter Name="original_ID" Type="Int32" />
                                        <asp:Parameter Name="original_TotalMoney" Type="Decimal" />
                                        <asp:Parameter Name="original_TotalNum" Type="Int32" />
                                        <asp:Parameter Name="original_CreateDate" Type="DateTime" />
                                        <asp:Parameter Name="original_UserName" Type="String" />
                                        <asp:Parameter Name="original_Addressee" Type="String" />
                                        <asp:Parameter Name="original_Address" Type="String" />
                                        <asp:Parameter Name="original_Tel" Type="String" />
                                        <asp:Parameter Name="original_Status" Type="String" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="TotalMoney" Type="Decimal" />
                                        <asp:Parameter Name="TotalNum" Type="Int32" />
                                        <asp:Parameter Name="CreateDate" Type="DateTime" />
                                        <asp:Parameter Name="UserName" Type="String" />
                                        <asp:Parameter Name="Addressee" Type="String" />
                                        <asp:Parameter Name="Address" Type="String" />
                                        <asp:Parameter Name="Tel" Type="String" />
                                        <asp:Parameter Name="Status" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="TotalMoney" Type="Decimal" />
                                        <asp:Parameter Name="TotalNum" Type="Int32" />
                                        <asp:Parameter Name="CreateDate" Type="DateTime" />
                                        <asp:Parameter Name="UserName" Type="String" />
                                        <asp:Parameter Name="Addressee" Type="String" />
                                        <asp:Parameter Name="Address" Type="String" />
                                        <asp:Parameter Name="Tel" Type="String" />
                                        <asp:Parameter Name="Status" Type="String" />
                                        <asp:Parameter Name="original_ID" Type="Int32" />
                                        <asp:Parameter Name="original_TotalMoney" Type="Decimal" />
                                        <asp:Parameter Name="original_TotalNum" Type="Int32" />
                                        <asp:Parameter Name="original_CreateDate" Type="DateTime" />
                                        <asp:Parameter Name="original_UserName" Type="String" />
                                        <asp:Parameter Name="original_Addressee" Type="String" />
                                        <asp:Parameter Name="original_Address" Type="String" />
                                        <asp:Parameter Name="original_Tel" Type="String" />
                                        <asp:Parameter Name="original_Status" Type="String" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
