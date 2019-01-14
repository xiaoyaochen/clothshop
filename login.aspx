<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 292px;
        }
        .style8
        {
            width: 276px;
        }
        .style11
        {
            color: #000066;
        }
        .style12
        {
            width: 94px;
            background-color: #FFFF99;
        }
        .style13
        {
            color: #000066;
            font-weight: bold;
        }
        .style14
        {
            width: 100%;
        }
        .style15
        {
            width: 85px;
            background-color: #FFFFFF;
        }
        .style16
        {
            width: 402px;
        }
        .style17
        {
            width: 85px;
            height: 167px;
        }
        .style18
        {
            height: 167px;
        }
        .style19
        {
            width: 94px;
        }
        .style20
        {
            width: 85px;
            background-color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
        <table>
            <tr>
                <td class="auto-style4">
                    </td>
                <td class="style12">
                    </td>
                <td class="style16">
                    </td>
            </tr>
             
            <tr> 
                <td class="auto-style1">
                    &nbsp;</td>
                <td style="border-style: double;" class="style19">
                    <b>
                    <asp:Label ID="lblUsername" runat="server" Text="用户名" CssClass="style11"></asp:Label>
                    </b></td>
                <td style="border-style: double;" class="style16">
                    <asp:TextBox ID="TextBox1" runat="server" Width="192px" CssClass="style13"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td style="border-style: double;" class="style19">
                    <b>
                    <asp:Label ID="Label2" runat="server" Text="密  码" CssClass="style11"></asp:Label>
                    </b></td>
                <td style="border-style: double;" class="style16">
                    <asp:TextBox ID="TextBox2" runat="server" MaxLength="16" TextMode="Password" 
                        Width="190px" CssClass="style13"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right" class="auto-style1">
                    &nbsp;</td>
                <td align="right" colspan="2" style="border-style: double">
                    <table class="style14">
                        <tr>
                            <td class="style15">
                                <b>
                    <asp:Label ID="lblError" runat="server" Width="134px" CssClass="style11"></asp:Label></b>
                            </td>
                            <td>
                                <b>
                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/SecurityPass.aspx" 
                                    CssClass="style11">忘记密码？</asp:HyperLink>
                                </b>
                                <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="登录"
                        Width="65px" CssClass="style13" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style15">
                                <b>
                    <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/SecurityPass.aspx" 
                                    CssClass="style11">设置密保</asp:HyperLink>
                                </b>
                            </td>
                            <td>
                                <b>
                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="style11" 
                                    PostBackUrl="~/newUser.aspx">注册</asp:LinkButton>
                                </b>
                            </td>
                        </tr>
                        <tr>
                            <td class="style20">
                            </td>
                            <td style="background-color: #000000">
                            </td>
                        </tr>
                        <tr>
                            <td class="style17">
                            </td>
                            <td class="style18">
                            </td>
                        </tr>
                    </table>
                    &nbsp;</td>
                <td align="right" class="style7">
                    欢迎登陆，<br />
                    我的小主</td>
                <td align="right" class="style7">
                    <asp:Image ID="Image1" runat="server" Height="300px" 
                        ImageUrl="~/pictures/mao.jpg" style="margin-left: 0px" Width="200px" />
                </td>
            </tr>
            <tr>
                <td align="right" class="auto-style1">
                    &nbsp;</td>
                <td align="right" colspan="2" style="border-style: double">
                    &nbsp;</td>
                <td align="right" class="style7">
                    &nbsp;</td>
                <td align="right" class="style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    </td>
                <td colspan="2" class="auto-style9">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    &nbsp;</td>
                <td colspan="2" class="bold">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
</asp:Content>

