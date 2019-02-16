<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Menu.aspx.vb" Inherits="Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .Menu{
            text-align:center;
            border:1px solid black;
            
        }
        .fondo {
            
            background:url(imagenes/dent.png) bottom;
            background-size:cover;
            
        }
        .auto-style1 {
            width: 100%;
            text-align:center;
        }
        .auto-style3 {
            height: 80px;
        }
        .auto-style4 {
            height: 93px;
        }
        .auto-style6 {
            height: 93px;
            width: 264px;
        }
        .auto-style7 {
            width: 264px;
        }
        .auto-style8{
            text-align:center;
            
        }
        .auto-style9 {
            width: 264px;
            height: 55px;
        }
        </style>
</head>
<body>
    <form  class="fondo" id="form1" runat="server">
        <table style="width:100%">
            <tr>
                <td class="auto-style1">
        <div class="auto-style3" style="padding: inherit; margin: inherit; background-color:steelblue">
            <asp:Image ID="Image1" runat="server" Height="78px" ImageAlign="Left" ImageUrl="~/imagenes/logo.png" Width="88px" />
            <asp:LoginName ID="LoginName1" runat="server" FormatString ="Bienvenido, {0}"/>
        </div>
                    <asp:Label ID="KLCLlbTituloMenu" runat="server" clientinstanname="KLCLlbTituloMenu" Text="MENU" Font-Size="80px" ForeColor="Black" Font-Bold="True" Font-Strikeout="False" Font-Names="DK Honeyguide Caps"></asp:Label>
                </td>
               
            </tr>
        </table>
        <table style="width:100%">
            <tr><td class="auto-style7"></td></tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td style="text-align: center">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="DK Honeyguide Caps" Font-Size="XX-Large" Text="PACIENTES"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="DK Honeyguide Caps" Font-Size="XX-Large" Text="CITAS"></asp:Label>
                </td>
                <td style="text-align: center">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="DK Honeyguide Caps" Font-Size="XX-Large" Text="Tipo de pago"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td style="text-align: center">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/iconos/paciente.png" BackColor="#CCCCFF" BorderStyle="Solid" Height="244px" Width="249px" />
                </td>
                <td class="auto-style8">
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="242px" ImageUrl="~/iconos/citas.png" style="margin-right: 0px" Width="261px" BackColor="#FFCC99" BorderStyle="Solid" />
                </td>
                <td style="text-align: center">
                    <asp:ImageButton ID="ImageButton3" runat="server" Height="240px" ImageUrl="~/iconos/pago.png" Width="243px" BackColor="#CCFF99" BorderStyle="Solid" />
                </td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td style="width:35%"></td>
                <td style="text-align: center">
                    &nbsp;</td>
                <td class="auto-style8"></td>
                <td style="text-align: center">
                    &nbsp;</td>
                <td style="width:35%"></td>

            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:ImageButton ID="ImageButton4" runat="server" Height="83px" ImageUrl="~/iconos/WhatsApp Image 2017-11-24 at 5.22.28 PM.jpeg" Width="83px" />
                </td>
                <td class="auto-style4" style="text-align: center">
                    &nbsp;</td>
                <td class="auto-style8"></td>
                <td style="text-align: center">
                    &nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
