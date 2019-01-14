<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AddOrder.aspx.cs" Inherits="AddOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style8
        {
            height: 52px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="auto-style16">
    <tr>
        <td class="auto-style19">填写并确认订单</td>
    </tr>
    <tr>
        <td class="auto-style18">送货地址：</td>
    </tr>
    <tr>
        <td class="style8">
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Selected="True" Value="01">北京市</asp:ListItem>
            <asp:ListItem Value="02">上海市</asp:ListItem>
            <asp:ListItem Value="03">广东省</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
            <asp:ListItem Value="01">a区</asp:ListItem>
            <asp:ListItem Value="02">b区</asp:ListItem>
            <asp:ListItem Value="03">c区</asp:ListItem>
            <asp:ListItem Value="04">d区</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList3" runat="server">
            <asp:ListItem Value="01">x街道</asp:ListItem>
            <asp:ListItem Value="02">y街道</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="TextBox1" runat="server" Width="183px"></asp:TextBox>
            <br />
            收货人姓名：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            电话：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style18">送货清单：</td>
    </tr>
    <tr>
        <td class="auto-style18">
            <asp:GridView ID="GridView1" runat="server" Width="501px" 
                AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="商品编号" HeaderText="商品编号" />
                    <asp:BoundField DataField="商品名称" HeaderText="商品名称" />
                    <asp:BoundField DataField="商品单价" HeaderText="商品单价" />
                    <asp:BoundField DataField="商品尺码" HeaderText="选购尺码" />
                    <asp:BoundField DataField="商品数量" HeaderText="商品数量" />
                </Columns>
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td class="auto-style18">应付金额：<asp:Label ID="lblMoney" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="提交订单" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

