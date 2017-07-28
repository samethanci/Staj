<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Staj.Default" %>

<%@ Register assembly="DevExpress.Web.v16.1, Version=16.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Giresun Üniversitesi Telefon Rehberi</title>
    <style type="text/css">
        .auto-style3 {
            height: 120px;
        }
        .auto-style4 {
            width: 88%;
        }
        </style>

</head>
<body>
    <link href="StyleSheet.css" rel="stylesheet" />
     <div style="margin:0 auto;" class="auto-style4"/>
    <form id="form1" runat="server">
    <div>
        <a href="Default.aspx">
            <table class="auto-style2" style="background-color: #EFEFEF">
                <td colspan="2" style="background-color:white" class="auto-style3">
                    <div class="logo">
                        <asp:Image ID="Image1" runat="server"  ImageUrl="~/Images/giresun.jpg" Height="160px" Width="160px"/>
                    </div>
                    <div class="logo1">
                        <asp:Image ID="Image2" runat="server"  ImageUrl="~/Images/telephone.png" Height="160px" Width="160px"/>
                    </div>
                    <div class="isim">
                        <p>
                            &nbsp;<asp:Label ID="Label1" runat="server" Text="T.C. GİRESUN ÜNİVERSİTESİ" Font-Bold="True" Font-Overline="False" Font-Size="25pt"></asp:Label>
                        </p>
                        <h1>
                            <asp:Label ID="Label2" runat="server" Text="TELEFON REHBER SERVİSİ" Font-Bold="True" Font-Size="25pt"></asp:Label>
                       
                             </h1>
                        <p>
                            </p>

                    </div>

                </td>

            </table>

        </a>
        <br />
        <br />
        <div>


            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" BackColor="#FFFBD6" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" StaticSubMenuIndent="20px">
                <DynamicHoverStyle BackColor="#990000" ForeColor="White" Font-Size="30pt" />
                <DynamicMenuItemStyle HorizontalPadding="10px" VerticalPadding="5px" />
                <DynamicMenuStyle BackColor="#FFFBD6" />
                <DynamicSelectedStyle BackColor="#FFCC66" />
                <Items>
                    <asp:MenuItem Text="Giresun Üniversitesi" Value="Giresun Üniversitesi" NavigateUrl="http://www.giresun.edu.tr"></asp:MenuItem>
                    <asp:MenuItem Text="Ana Sayfa" Value="Ana Sayfa" NavigateUrl="~/Default.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Yönetim" Value="Yönetim" NavigateUrl="~/login.aspx"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="10px" VerticalPadding="5px" />
                <StaticSelectedStyle BackColor="#FFCC66" />
            </asp:Menu>


        </div>


        <div />

        <div />

    
            <br />

        <div class="sol-taraf">
            <div class="birim">
                <div class="ust">
                    Birimler
                </div>
                <div class="alt">
                    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />

                    <asp:TreeView ID="TreeView1" runat="server">
                    </asp:TreeView>

                </div>
            </div>
        </div>

        <div class="sağ-taraf">
           

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Ad Soyad" HeaderText="Ad Soyad" SortExpression="Ad Soyad" />
                    <asp:BoundField DataField="Unvan" HeaderText="Unvan" SortExpression="Unvan" />
                    <asp:BoundField DataField="Birim" HeaderText="Birim" SortExpression="Birim" />
                    <asp:BoundField DataField="Telefon" HeaderText="Telefon" SortExpression="Telefon" />
                    <asp:BoundField DataField="Dahili" HeaderText="Dahili" SortExpression="Dahili" />
                    <asp:BoundField DataField="AltBolumId" HeaderText="AltBolumId" SortExpression="AltBolumId" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [AltBolumPersonel] WHERE [Id] = @Id" InsertCommand="INSERT INTO [AltBolumPersonel] ([Ad Soyad], [Unvan], [Birim], [Telefon], [Dahili], [AltBolumId]) VALUES (@Ad_Soyad, @Unvan, @Birim, @Telefon, @Dahili, @AltBolumId)" SelectCommand="SELECT * FROM [AltBolumPersonel]" UpdateCommand="UPDATE [AltBolumPersonel] SET [Ad Soyad] = @Ad_Soyad, [Unvan] = @Unvan, [Birim] = @Birim, [Telefon] = @Telefon, [Dahili] = @Dahili, [AltBolumId] = @AltBolumId WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Ad_Soyad" Type="String" />
                    <asp:Parameter Name="Unvan" Type="String" />
                    <asp:Parameter Name="Birim" Type="String" />
                    <asp:Parameter Name="Telefon" Type="String" />
                    <asp:Parameter Name="Dahili" Type="String" />
                    <asp:Parameter Name="AltBolumId" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Ad_Soyad" Type="String" />
                    <asp:Parameter Name="Unvan" Type="String" />
                    <asp:Parameter Name="Birim" Type="String" />
                    <asp:Parameter Name="Telefon" Type="String" />
                    <asp:Parameter Name="Dahili" Type="String" />
                    <asp:Parameter Name="AltBolumId" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
           

        </div>

        <footer >
            Bir Samet HANCI tasarımıdır. 2017
        </footer>
    
    </div>
    </form>
</body>
</html>
