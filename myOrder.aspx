<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="myOrder.aspx.cs" Inherits="myOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style11
        {
            width: 100%;
        }
        .style12
        {
            width: 614px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style11">
        <tr>
            <td class="style12">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="ID" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
            ReadOnly="True" SortExpression="ID" />
        <asp:BoundField DataField="TotalMoney" HeaderText="总额" 
            SortExpression="TotalMoney" />
        <asp:BoundField DataField="TotalNum" HeaderText="总数" 
            SortExpression="TotalNum" />
        <asp:BoundField DataField="CreateDate" HeaderText="下单时间" 
            SortExpression="CreateDate" />
        <asp:BoundField DataField="UserName" HeaderText="用户昵称" 
            SortExpression="UserName" />
        <asp:BoundField DataField="Addressee" HeaderText="收货人" 
            SortExpression="Addressee" />
        <asp:BoundField DataField="Address" HeaderText="地址" SortExpression="Address" />
        <asp:BoundField DataField="Tel" HeaderText="电话" SortExpression="Tel" />
        <asp:BoundField DataField="Status" HeaderText="状态" SortExpression="Status" />
    </Columns>
</asp:GridView>
            </td>
            <td>
                <asp:Image ID="Image1" runat="server" Height="141px" 
                    ImageUrl="~/pictures/q.jpg" />
            </td>
        </tr>
    </table>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConflictDetection="CompareAllValues" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    DeleteCommand="DELETE FROM [orderInfo] WHERE [ID] = @original_ID AND [TotalMoney] = @original_TotalMoney AND (([TotalNum] = @original_TotalNum) OR ([TotalNum] IS NULL AND @original_TotalNum IS NULL)) AND (([CreateDate] = @original_CreateDate) OR ([CreateDate] IS NULL AND @original_CreateDate IS NULL)) AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND [Addressee] = @original_Addressee AND [Address] = @original_Address AND [Tel] = @original_Tel AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))" 
    InsertCommand="INSERT INTO [orderInfo] ([TotalMoney], [TotalNum], [CreateDate], [UserName], [Addressee], [Address], [Tel], [Status]) VALUES (@TotalMoney, @TotalNum, @CreateDate, @UserName, @Addressee, @Address, @Tel, @Status)" 
    OldValuesParameterFormatString="original_{0}" 
    SelectCommand="SELECT * FROM [orderInfo] WHERE ([UserName] = @UserName)" 
    UpdateCommand="UPDATE [orderInfo] SET [TotalMoney] = @TotalMoney, [TotalNum] = @TotalNum, [CreateDate] = @CreateDate, [UserName] = @UserName, [Addressee] = @Addressee, [Address] = @Address, [Tel] = @Tel, [Status] = @Status WHERE [ID] = @original_ID AND [TotalMoney] = @original_TotalMoney AND (([TotalNum] = @original_TotalNum) OR ([TotalNum] IS NULL AND @original_TotalNum IS NULL)) AND (([CreateDate] = @original_CreateDate) OR ([CreateDate] IS NULL AND @original_CreateDate IS NULL)) AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND [Addressee] = @original_Addressee AND [Address] = @original_Address AND [Tel] = @original_Tel AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))">
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
    <SelectParameters>
        <asp:SessionParameter Name="UserName" SessionField="username" Type="String" />
    </SelectParameters>
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
</asp:Content>

