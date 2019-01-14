<%@ Page Title="关于我们" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style11
        {
            color: #FF0000;
            font-weight: bold;
            font-style: italic;
            font-size: large;
        }
        .style12
        {
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2 class="style12">
        关于&nbsp;
    </h2>
<p class="style11">
        这是一个专注于着装的网站！关注我们的网站，带你秀得飞起！</p>
</asp:Content>
