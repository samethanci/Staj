<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Staj.login" %>

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
        .auto-style5 {
            width: 100px;
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
                    <asp:MenuItem Text="Yönetim" Value="Yönetim" NavigateUrl="~/"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="10px" VerticalPadding="5px" />
                <StaticSelectedStyle BackColor="#FFCC66" />
            </asp:Menu>


        </div>


        <div />

        <div />
        <br />
        <br />
        <table class="auto-style3">
            <tr>
                <td class="auto-style5">Kullanıcı Adı :</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtKullaniciAdi" runat="server" ToolTip="Kullanıcı Adınızı Giriniz."></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Şifre :</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtSifre" runat="server" TextMode="Password" ToolTip="Şifrenizi Giriniz."></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lbl_Hata" runat="server"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="btnGiris" runat="server" Text="Giriş" Width="75px" style="margin-left: 50px" OnClick="btnGiris_Click" />
                </td>
            </tr>

        </table>
    
    </div>
    </form>
</body>
</html>