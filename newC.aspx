<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="newC.aspx.cs" Inherits="newC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    &nbsp;&nbsp;&nbsp;<table class="style1">
        <tr>
            <td>
                &nbsp;
            </td>
            <td class="style8">
                <asp:Image ID="Image1" runat="server" Height="170px" ImageAlign="Left" 
                    Width="829px" ImageUrl="~/pictures/广告1.jpg" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td class="style9">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" 
                    DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" 
                    style="margin-right: 0px" Width="800px" HorizontalAlign="Center" 
                    RepeatColumns="3">
                    <ItemTemplate>
                        <table class="style1">
                            <tr>
                                <td>
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="178px" 
                                        ImageUrl='<%#Eval("PictureUrl")%>' 
                                        PostBackUrl='<%#Eval("ID","~/productDetail.aspx?id={0}" ) %>' Width="172px" />
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
                                        NavigateUrl='<%#Eval("ID","~/productDetail.aspx?id={0}" ) %>' 
                                        Text='<%# Eval("Name") %>'></asp:HyperLink>
                                </td>
                            </tr>
                        </table>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [ID], [Name], [PictureUrl], [Price] FROM [productInfo] WHERE (datediff(Day,[CreateDate],getdate())<30)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="2010-1-11" Name="CreateDate" Type="DateTime" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    &nbsp;
</asp:Content>

