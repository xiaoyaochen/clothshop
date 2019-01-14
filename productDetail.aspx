<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" 
CodeFile="productDetail.aspx.cs" Inherits="productDetail" %> 

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style11
        {
            width: 100%;
        }
        .style12
        {
            width: 430px;
        }
        .style13
        {
            color: #FF0000;
            font-style: italic;
            font-weight: bold;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        SelectCommand="SELECT [ID], [Name], [PictureUrl], [Price], [Brand], [ForAges], [Size], [CategoryID], [CreateDate] FROM [productInfo] WHERE ([ID] = @ID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ID" QueryStringField="ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table 
        class="style11">
        <tr>
            <td class="style12">
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ID" DataSourceID="SqlDataSource1" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" 
        onrowcommand="GridView1_RowCommand" Height="500px" 
        style="margin-right: 0px" Width="400px">
        <Columns>
            <asp:TemplateField HeaderText="商品详情">
                <ItemTemplate>
                    <table class="style1">
                        <tr>
                            <td class="style2">
                                <asp:Image ID="Image1" runat="server" Height="220px" 
                                    ImageUrl='<%# Eval("PictureUrl") %>' Width="210px" />
                            </td>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("Name")%>'></asp:Label>
                                <br />
                                品牌：<asp:Label ID="Label3" runat="server" Text='<%# Eval("Brand") %>'></asp:Label>
                                <br />
                                适合年龄：<asp:Label ID="Label4" runat="server" Text='<%# Eval("ForAges") %>'></asp:Label>
                                <br />
                                上架时间：<asp:Label ID="Label5" runat="server" Text='<%# Eval("CreateDate","{0:d}") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                        <td>价格：<asp:Label ID="Label2" runat="server" Text='<%#Eval("Price",format:"{0:f2}")%>'></asp:Label>
                            </td>
                        <td>尺码：<asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                                RepeatDirection="Horizontal">
                            <asp:ListItem>M</asp:ListItem>
                            <asp:ListItem>L</asp:ListItem>
                            <asp:ListItem>XL</asp:ListItem>
                            <asp:ListItem>XXL</asp:ListItem>
                            <asp:ListItem>XXXL</asp:ListItem>
                            </asp:RadioButtonList>
                            </td>
                        </tr>
                    </table>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="AddProduct" runat="server" Text="加入购物车" CommandName="AddProduct" 
                         />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
            该商品已经下架啦。
        </EmptyDataTemplate>
    </asp:GridView>
            </td>
            <td>
                <table class="style11">
                    <tr>
                        <td class="style13">
                            我觉得这件很OK!</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Image ID="Image2" runat="server" Height="250px" 
                                ImageUrl="~/pictures/20.jpg" Width="380px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
</asp:Content>
