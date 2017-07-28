<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridView.aspx.cs" Inherits="Staj.GridView" %>

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
            
        </div>

        <div class="sağ-taraf">

            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="Id" Width="480px">
                <Settings ShowFilterRow="True" ShowGroupPanel="True" />
                <Columns>
                    <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="Id" ReadOnly="True" VisibleIndex="1">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Ad" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Soyad" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Birim" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Unvan" VisibleIndex="5">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Telefon" VisibleIndex="6">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Dahili" VisibleIndex="7">
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM Personel WHERE (Id = @Id)" InsertCommand="INSERT INTO Personel(Ad, Soyad, Birim, Unvan, Telefon, Dahili) VALUES (@Ad, @Soyad, @Birim, @Unvan, @Telefon, @Dahili)" SelectCommand="SELECT Personel.* FROM Personel" UpdateCommand="UPDATE Personel SET Ad = @Ad, Soyad = @Soyad, Birim = @Birim, Unvan = @Unvan, Telefon = @Telefon, Dahili = @Dahili WHERE (Id = @Id)">
                <DeleteParameters>
                    <asp:Parameter Name="Id" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Ad" />
                    <asp:Parameter Name="Soyad" />
                    <asp:Parameter Name="Birim" />
                    <asp:Parameter Name="Unvan" />
                    <asp:Parameter Name="Telefon" />
                    <asp:Parameter Name="Dahili" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Ad" />
                    <asp:Parameter Name="Soyad" />
                    <asp:Parameter Name="Birim" />
                    <asp:Parameter Name="Unvan" />
                    <asp:Parameter Name="Telefon" />
                    <asp:Parameter Name="Dahili" />
                    <asp:Parameter Name="Id" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>
        </div>
    </form>
</body>
</html>
