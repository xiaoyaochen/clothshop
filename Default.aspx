<%@ Page Title="主页" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 97%;
        }
        .style2
        {
            height: 25px;
        }
    .style3
    {
        width: 507px;
    }
    .style4
    {
        height: 25px;
        width: 507px;
    }
        .style8
        {
            width: 281px;
        }
        .style9
        {
            height: 25px;
            width: 281px;
        }
        .style10
        {
            width: 571px;
        }
        .style11
        {
            height: 25px;
            width: 571px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    
    &nbsp;<table class="style1">
        <tr>
            <td class="style8">
                <asp:Image ID="Image1" runat="server" Height="170px" ImageAlign="Left" 
                    Width="829px" ImageUrl="~/pictures/广告2.jpg" />
            </td>
        </tr>
        <tr>

            <td class="style9">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" 
                    DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" 
                    style="margin-right: 0px" Width="800px" RepeatColumns="3">

                    <ItemTemplate>

                        <table class="style1">
                            <tr>
                                <td>
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="178px" 
                                    ImageUrl ='<%#Eval("PictureUrl")%>' 
                                        Width="172px" PostBackUrl='<%#Eval("ID","~/productDetail.aspx?id={0}" ) %>'/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:HyperLink ID="HyperLink1" runat="server" 
                                        NavigateUrl='<%#Eval("ID","~/productDetail.aspx?id={0}" ) %>'  Text='<%# Eval("Name") %>'></asp:HyperLink>
                                </td>
                            </tr>
                        </table>
<br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT [ID], [Name], [PictureUrl], [Price] FROM [productInfo]">
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    
&nbsp; 
    
</asp:Content>
