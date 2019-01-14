<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="newUser.aspx.cs" Inherits="newUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
   
    <style type="text/css">
        .style11
        {
            font-weight: bold;
            font-style: italic;
        }
        .style12
        {
            font-weight: bold;
            font-style: italic;
            color: #000066;
        }
        .style13
        {
            font-style: italic;
            color: #FF0000;
        }
        .style14
        {
            width: 311px;
        }
        .style15
        {
            width: 312px;
        }
        .style16
        {
            width: 313px;
        }
        .style17
        {
            width: 397px;
        }
        .style18
        {
            font-weight: bold;
            font-style: italic;
            color: #000066;
            height: 43px;
        }
        .style19
        {
            height: 43px;
        }
        .style20
        {
            font-weight: bold;
            font-style: italic;
            color: #000066;
            height: 20px;
        }
        .style21
        {
            height: 20px;
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

    
    
            &nbsp;&nbsp;&nbsp;&nbsp;
            <table class="style14">
                <tr>
                    <td class="style17">
                        <table class="style16">
                            <tr>
                                <td class="style12">

    
    
            用户名：</td>
                                <td class="style19">
       
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        
   
                                </td>
                            </tr>
                            <tr>
                                <td class="style12">
        
   
      密码：</td>
                                <td class="style19">
            <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
      
                                </td>
                            </tr>
                            <tr>
                                <td class="style12">
      
            确认密码：</td>
                                <td class="style19">
        
            <asp:TextBox ID="txtRePass" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtPass" ControlToValidate="txtRePass" ErrorMessage="密码不一致"></asp:CompareValidator>

       
                                </td>
                            </tr>
                            <tr>
                                <td class="style20">

       
            邮箱：</td>
                                <td class="style21">
       
            <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtMail" ErrorMessage="邮件格式不对" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
   
       
                                </td>
                            </tr>
                            <tr>
                                <td class="style12">
   
       
            电话：</td>
                                <td class="style19">
      
            <asp:TextBox ID="txtTel" runat="server"></asp:TextBox>
  
                                </td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    编码：<td class="style11">
      
            <asp:TextBox ID="txtCode" runat="server"></asp:TextBox>
  
      
                                </td>
                                <td class="style18">
      
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style15">
  
      
            <asp:Label ID="Label1" runat="server"></asp:Label>

                                </td>
                                <td class="style19">

            <asp:Button ID="btnSub" runat="server" onclick="btnSub_Click" Text="确认" CssClass="style13" />

                                </td>
                            </tr>
                            <tr>
                                <td class="style15">
                                    &nbsp;</td>
                                <td class="style19">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image1" runat="server" Height="300px" 
                            ImageUrl="~/pictures/ww.jpg" />
                    </td>
                </tr>
            </table>
</asp:Content>

