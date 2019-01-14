<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="shoppingCart.aspx.cs" Inherits="shoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style11
        {
            width: 100%;
        }
        .style12
        {
            width: 514px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style11">
        <tr>
            <td class="style12">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  >
    <Columns>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:CheckBox ID="CheckBox1" runat="server" 
                    oncheckedchanged="CheckBox1_CheckedChanged" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField HeaderText="编号" DataField="商品编号">
        <HeaderStyle Wrap="False" />
        </asp:BoundField>
        <asp:BoundField HeaderText="名称" DataField="商品名称">
        <HeaderStyle Wrap="False" />
        </asp:BoundField>
        <asp:BoundField HeaderText="单价" DataField="商品单价">
        <HeaderStyle Wrap="False" />
        </asp:BoundField>
        <asp:BoundField HeaderText="尺码" DataField="选购尺码">
        <HeaderStyle Wrap="False" />
        </asp:BoundField>
        <asp:TemplateField HeaderText="数量">
            <ItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" >1</asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
       
    </Columns>
</asp:GridView> 
            </td>
            <td>
                <asp:Image ID="Image1" runat="server" Height="200px" 
                    ImageUrl="~/pictures/dl.jpg" Width="300px" />
            </td>
        </tr>
    </table>
    <table class="style5">
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button4" runat="server" 
                    onclick="Button4_Click" Text="清空购物车" />
            </td>
            <td>
                <asp:Button ID="btnSum" runat="server" onclick="btnSum_Click" Text="合计" />
                <asp:Label ID="Label1" runat="server" Text="0.0"></asp:Label>
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="去结算" />
            </td>
        </tr>
    </table>
</asp:Content>

