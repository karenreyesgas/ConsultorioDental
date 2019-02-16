<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Pagos.aspx.vb" Inherits="Consultas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 79px;
        }
        .auto-style2 {
            width: 940px;
        }
        .auto-style3 {
            height: 42px;
        }
        .auto-style4 {
            width: 2%;
            height: 10%;
        }
        .auto-style5 {
            width: 49px;
        }
        .auto-style6 {
            height: 42px;
            width: 49px;
        }
        .registro{
            background-color:white;
        }
    </style>
</head>
<body style="background-image:url(imagenes/dent.png); background-position:center; background-size:cover" >
    <form id="form1" runat="server" >
        <div class="auto-style1" style="padding: inherit; margin: inherit;  background-color: steelblue; text-align:center">
            <asp:Image ID="Image1" runat="server" Height="78px" ImageAlign="Right" ImageUrl="~/imagenes/logo.png" Width="88px" />
                     <asp:Label ID="KLCLlbTituloAlta" runat="server" clientinstanname="KLCLlbTituloAlta" Text="Pagos" ForeColor="Black" Font-Size="70px" Font-Bold="True" Font-Names="DK Honeyguide Caps"></asp:Label>
        </div>
        <table style="width:100%; height:20%">
             <tr>
                 <td class="auto-style2" style="text-align: center">
                     &nbsp;</td>
             </tr>
             <tr><td class="auto-style4"></td></tr>
        </table>
        <table style="border-spacing:0px 0px; width:100%; text-align:center">
              <tr style="height:25px">
                  <td style="width:20%"></td>
                  <td class="registro"  style="border-top:1px solid black; border-left:1px solid black; height:30px" > 
                      &nbsp;</td>
                  <td class="registro" style="border-top:1px solid black">
                      &nbsp;</td>
                  <td class="registro"  style="border-top:1px solid black">

                  </td>
                  <td style="border-top:1px solid black" class="registro">

                     </td>
                  <td class="registro" style="border-right:1px solid black; border-top:1px solid black">

                      &nbsp;</td>
                  <td style="width:30%">

                  </td>
              </tr>
             <tr>
                 <td class="auto-style22"></td>
                 <td  class="registro" style="border-left:1px solid black">
                      <asp:Label ID="KLCLlbId" runat="server" Font-Bold="True" Font-Names="Roboto" Text="Empleado:"></asp:Label>
                 </td>                 
                 <td  class="registro">
                     <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre" DataValueField="id_empleado">
                     </asp:DropDownList>
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConsultorioConnectionString2 %>" SelectCommand="SELECT * FROM [Empleados]"></asp:SqlDataSource>
                 </td>
                 <td style="width:5%" class="registro">
                     </td>
                 <td class="registro" style="width:6%">
                      <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Roboto" Text="Id cita:"></asp:Label>
                 </td>
                 <td class="registro" style="border-right : 1px solid black">

                     <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="id_cita" DataValueField="id_cita" Height="16px">
                     </asp:DropDownList>
                     <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConsultorioConnectionString2 %>" SelectCommand="SELECT * FROM [Citas]"></asp:SqlDataSource>

                 </td>
                 <td style ="width:35%"></td>
             </tr>
             <tr>
                 <td class="auto-style3">

                 </td>
                 <td  class="registro" style="border-left:1px solid black">
                     <asp:Label ID="KLCLlbNombre" runat="server" clientinstanname="KLCLlbNombre" Text="Paciente: " ForeColor="Black" Font-Size="Medium" Font-Bold="True" Font-Names="Roboto" ></asp:Label>
                 </td>
                 <td  class="registro">
                     <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Nombre" DataValueField="id_Pacientes">
                     </asp:DropDownList>
                     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConsultorioConnectionString2 %>" SelectCommand="SELECT * FROM [Pacientes]"></asp:SqlDataSource>
                 </td>
                 
                 <td class="registro"></td>
                 <td class="registro">
                     <asp:Label ID="Label1" runat="server" clientinstanname="KLCLlbApellidos" Text="Tipo de pago:" ForeColor="Black" Font-Size="Medium" Font-Bold="True" Font-Names="Roboto"></asp:Label>
                 </td>
                 <td class="registro" style="border-right:1px solid black">
                     <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource4" DataTextField="TipodePago" DataValueField="id_tipopago">
                     </asp:DropDownList>
                     <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConsultorioConnectionString2 %>" SelectCommand="SELECT * FROM [Tipo_de_pago]"></asp:SqlDataSource>
                     <br />
                     <br />
                 </td>
                 <td class="auto-style3">

                 </td>
             </tr>
            <tr> <td style ="width:35%">

                 </td>
                <td style="border-left:1px solid black" class="registro">

                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Roboto" Text="Costo:"></asp:Label>

                </td>
                <td class="registro">
                    <asp:TextBox ID="TextBox1" runat="server" Width="107px" ></asp:TextBox>

                </td>
                <td class="registro"></td>
                <td class="registro"></td>
                <td style="border-right :1px solid black" class="registro"></td>
                <td></td>
            </tr>
             <tr>
                 <td class="auto-style20">

                 </td>
                 <td  class="registro" style="border-bottom:1px solid black; border-left:1px solid black">
                    <asp:ImageButton ID="BtnSalir" runat="server" Height="80px" ImageUrl="~/iconos/WhatsApp Image 2017-11-24 at 5.22.28 PM.jpeg" Width="80px" ImageAlign="Left" BackColor="#CCFFCC" BorderColor="Black" />
                 </td>
                 <td class="registro" style="border-bottom:1px solid black; height:100px">
                     &nbsp;</td>
                 <td  class="registro"style="border-bottom:1px solid black">
                     &nbsp;</td>
                 <td style="border-bottom:1px solid black" class="registro" >
                     </td>
                 <td class="registro" style="border-bottom:1px solid black; border-right:1px solid black; text-align:right">

                    <asp:ImageButton ID="BtnAgregar" runat="server" Height="72px" ImageUrl="~/iconos/imprimir.png" Width="85px" BackColor="White" />

                    </td>
                 
                 <td style="width:20%">

                 </td>
             </tr>
             
         </table>
        <table style="border-spacing:0px 0px; width:100%">
            <tr>

                <td style="width:20%">

                </td>
               
                <td>
                    &nbsp;</td>
                <td style="width:30%" ></td>
                <td>
                    &nbsp;</td>
                <td style="width:20%"></td>
            </tr>
            <tr>
                <td style="width:20%">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td style="text-align:right">

                    &nbsp;</td>
                <td style="text-align:right">

                    &nbsp;</td>
                
            </tr>
            </table>
    </form>
</body>
</html>
