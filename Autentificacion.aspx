<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Autentificacion.aspx.vb" Inherits="Autentificacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style10 {
            width: 30%;
            height: 23px;
        }
        </style>
</head>
<body style="background-image:url(imagenes/dent.png); background-position:center; background-size:cover">
    <form id="form1" runat="server" >
        <div style="background-color:steelblue; height:80px">
            <asp:Image ID="Image2" runat="server" Height="78px" ImageAlign="Right" ImageUrl="imagenes/logo.png" Width="88px" />
        </div>
        <table style="width:100%; text-align:center; border-spacing:0px">
            <tr style ="height:80px">
                <td> </td>
            </tr>
            <tr>
                <td style="width:40%"></td>
                <td style="background-color:darkgray; width:20%; border-top:1px solid black; border-left:1px solid black; border-right: 1px solid black">

                    <asp:Image ID="Image1" runat="server" Height="108px" ImageUrl="iconos/dentista.png" Width="129px" />

                </td>
                <td style="width:40%">&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%; text-align:center; border-spacing:0px" >
            <tr>
                <td style="width:40%">
                </td>
                <td style="background-color:darkgray; width:7%;  border-left:1px solid black; height:40px">

                    <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconos/log.png" Width="31px" />

                </td>
                <td style="background-color:darkgray; width:13%;border-right: 1px solid black">

                    <asp:TextBox ID="txtUsuario" runat="server" Width="90%" Placeholder="Usuario"></asp:TextBox>

                </td>
                <td style="width:40%">

                </td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td style="background-color:darkgray; width:7%; border-left: 1px solid black; height:30px">
                    <asp:Image ID="Image4" runat="server" Height="24px" ImageUrl="~/iconos/cas-padlock-icon.png" Width="30px" />
                </td>
                <td style="background-color:darkgray; width:13%; border-right: 1px solid black"">                
                    <asp:TextBox ID="txtContra" TextMode="Password" runat="server" Width="90%" Placeholder="Contraseña"></asp:TextBox>
                
                </td>
                <td class="auto-style10"></td>
            </tr>
            
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConsultorioConnectionString2 %>" SelectCommand="SELECT [NombreUsuario], [Contraseña] FROM [Usuarios]"></asp:SqlDataSource>
                </td>
                <td style=" border-bottom:1px solid black; border-left:1px solid black; background-color:darkgray">
                    </td>
                <td style=" border-bottom:1px solid black; border-right:1px solid black; background-color:darkgray; height:70px; text-align:center">
                    <asp:ImageButton ID="BtnIniciar" runat="server" Height="55px" ImageUrl="iconos/entrar.png" Width="70px" />
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
