<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SecurityPass.aspx.cs" Inherits="SecurityPass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style5">
        <tr>
            <td class="style8">
                <i><b>设置密保</b></i></td>
            <td class="style7">
            </td>
        </tr>
        <tr>
            <td class="style8">
                密保：</td>
            <td class="style7">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="确认" />
            </td>
        </tr>
        <tr>
            <td class="style12">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td class="style13">
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style7">
            </td>
        </tr>
        <tr>
            <td class="style10">
            </td>
            <td class="style11">
            </td>
        </tr>
        <tr>
            <td class="style14">
                找回密码</td>
            <td class="style7">
            </td>
        </tr>
        <tr>
            <td class="style8">
                用户名：</td>
            <td class="style7">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8">
                密保：</td>
            <td class="style7">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8">
                新密码：</td>
            <td class="style7">
                <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td class="style7">
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="确认" />
            </td>
        </tr>
    </table>
</asp:Content>

