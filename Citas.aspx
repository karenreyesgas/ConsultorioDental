<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Citas.aspx.vb" Inherits="Modificacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://www.w3schools.com/lib/w3.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title></title>
    <style type="text/css">
      .modal-header, h4, .close {
            background-color: #5cb85c;
            color: white !important;
            text-align: center;
            font-size: 20px;
        }

        .modal-footer {
            background-color: #f9f9f9;
        }

        .modalDialog {
            position: fixed;
            font-family: Arial, Helvetica, sans-serif;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            background: rgba(0,0,0,0.8);
            z-index: 99999;
            opacity: 0;
            -webkit-transition: opacity 400ms ease-in;
            -moz-transition: opacity 400ms ease-in;
            transition: opacity 400ms ease-in;
            pointer-events: none;
        }

            .modalDialog:target {
                opacity: 1;
                pointer-events: auto;
            }

            .modalDialog > div {
                width: 400px;
                position: relative;
                margin: 10% auto;
                padding: 5px 20px 13px 20px;
                border-radius: 10px;
                background: #fff;
                background: -moz-linear-gradient(#fff, #999);
                background: -webkit-linear-gradient(#fff, #999);
                background: -o-linear-gradient(#fff, #999);
            }

        .close {
            background: #606061;
            color: #FFFFFF;
            line-height: 25px;
            position: absolute;
            right: -12px;
            text-align: center;
            top: -10px;
            width: 24px;
            text-decoration: none;
            font-weight: bold;
            -webkit-border-radius: 12px;
            -moz-border-radius: 12px;
            border-radius: 12px;
            -moz-box-shadow: 1px 1px 3px #000;
            -webkit-box-shadow: 1px 1px 3px #000;
            box-shadow: 1px 1px 3px #000;
            font-size: large;
        }

            .close:hover {
                background: #00d9ff;
            }

        .auto-style1 {
            height: 79px;
        }
        .registro{
            background-color :white;
        }
        </style>
</head>
<body >
    <div>

    <form id="form1" runat="server" style="background-image:url(imagenes/dent.png); background-position:bottom; background-size:cover">

                            <%--         data-backdrop="static" data-keyboard="false"  --%>
                                    <div id="myModal" class="modal fade" role="dialog" data-backdrop="static" data-keyboard="false">
                                        <div id="modaldialog" class="modal-dialog">
                                            <!-- Modal dialog-->
                                            <div id="modalcontent" class="modal-content">
                                                <!-- Modal content-->
                                                <div id="modalheader" style="align-content: center; text-align: center;" class="modal-header" runat="server">
                                                    <!-- Modal header-->
                                                    <h4><span id="spanmodalheader" runat="server"></span>
                                                        <asp:Label ID="lblmodalheader" runat="server" Text="Label" Width="100%"></asp:Label></h4>
                                                </div>
                                                <!-- Modal header-->
                                                <div id="modalbody" style="font-size: larger; align-content: center; text-align: center;" class="modal-body" runat="server">
                                                    <!-- Modal body-->
                                                    <p>
                                                        <asp:Label ID="lblstatusmodal" runat="server" Text=""></asp:Label>
                                                    </p>
                                                </div>
                                                <div id="modalfooter" class="modal-footer">
                                                    <!-- Modal footer-->
                                                    <asp:Label ID="lblmodalfooter" runat="server" Text=""></asp:Label>
                                                    <asp:Button ID="buttonclosemodal" type="button" runat="server" class="btn btn-default" data-dismiss="modal" Text=""></asp:Button>
                                                </div>
                                                <!-- Modal footer-->
                                            </div>
                                        </div>
                                        <div>
                                        </div>
                                    </div>

        <div class="auto-style1" style="padding: inherit; margin: inherit; background-color: steelblue;">
            <asp:Image ID="Image1" runat="server" Height="78px" ImageAlign="Right" ImageUrl="~/imagenes/logo.png" Width="88px" />
        </div>
        <table style="width:100%">
             <tr>
                 <td class="auto-style12" style="text-align: center">
                     <asp:Label ID="KLCLlbTituloAlta" runat="server" clientinstanname="KLCLlbTituloAlta" Text="CITAS" ForeColor="Black" Font-Size="70px" Font-Bold="True" Font-Names="DK Honeyguide Caps"></asp:Label>
                 </td>
             </tr>
             <tr><td class="auto-style14"></td></tr>
        </table>
         <table id="consulta" style="width:100%; border-spacing:0px">
            <tr style="width:100%">
                <td style="text-align:right; width:40%; background-color:lightgreen;">

                    &nbsp;</td>
                <td style="width:60%; align-items:center; background-color:lightgreen;">

                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Roboto" Font-Size="Medium" Text="Fecha de citas:"></asp:Label>

                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="329px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>

                    &nbsp;&nbsp;

                    </td>
            </tr>
            </table>
            <table style="width:100%; align-items:center; text-align:center"><tr>
                <td style="width:20%"></td>
                <td style="align-content:center">

                    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource3" AutoGenerateColumns="False" BackColor="White" Font-Names="Roboto" Font-Size="Medium" Width="806px" DataKeyNames="id_cita,id_Pacientes" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" >
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="id_cita" HeaderText="Número de cita" SortExpression="id_cita" ReadOnly="True" />
                            <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                            <asp:BoundField DataField="Hora" HeaderText="Hora" SortExpression="Hora" />
                            <asp:BoundField DataField="id_Pacientes" HeaderText="Número de paciente" ReadOnly="True" SortExpression="id_Pacientes" />
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#487575" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#275353" />
                    </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConsultorioConnectionString2 %>" DeleteCommand="DELETE FROM [Citas] WHERE [id_cita] = @id_cita AND [id_Pacientes] = @id_Pacientes" InsertCommand="INSERT INTO [Citas] ([id_cita], [Fecha], [Hora], [id_Pacientes]) VALUES (@id_cita, @Fecha, @Hora, @id_Pacientes)" SelectCommand="SELECT * FROM [Citas] WHERE ([Fecha] = @Fecha)" UpdateCommand="UPDATE [Citas] SET [Fecha] = @Fecha, [Hora] = @Hora WHERE [id_cita] = @id_cita AND [id_Pacientes] = @id_Pacientes">
                        <DeleteParameters>
                            <asp:Parameter Name="id_cita" Type="Int32" />
                            <asp:Parameter Name="id_Pacientes" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="id_cita" Type="Int32" />
                            <asp:Parameter DbType="Date" Name="Fecha" />
                            <asp:Parameter Name="Hora" Type="String" />
                            <asp:Parameter Name="id_Pacientes" Type="Int32" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="Calendar1" DbType="Date" Name="Fecha" PropertyName="SelectedDate" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter DbType="Date" Name="Fecha" />
                            <asp:Parameter Name="Hora" Type="String" />
                            <asp:Parameter Name="id_cita" Type="Int32" />
                            <asp:Parameter Name="id_Pacientes" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

                </td>
            </tr>
        </table>
        <table style="border-spacing:0px 0px; width:100%;">
              <tr style="height:25px">
                  <td style="width:20%"></td>
                  <td class="registro"> 
                      <asp:Label ID="KLCLlbId" runat="server" Font-Bold="True" Font-Names="Roboto" Text="Id:"></asp:Label>
                  </td>
                  <td class="registro">
                      <asp:TextBox ID="KLCLtbId" runat="server"></asp:TextBox>
                  </td>
                  <td class="registro">

                  </td>
                  <td class="registro">

                      <asp:Label ID="KLCLlbEdad" runat="server" Font-Bold="True" Font-Names="Roboto" Text="Paciente:"></asp:Label>

                  </td>
                  <td class="registro">

                      <asp:DropDownList ID="KLCLddlPaciente" runat="server" DataSourceID="SqlDataSource2" DataTextField="Nombre" DataValueField="id_Pacientes">
                      </asp:DropDownList>

                  </td>
                  <td style="width:20%">

                      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConsultorioConnectionString2 %>" SelectCommand="SELECT * FROM [Pacientes]"></asp:SqlDataSource>

                  </td>
              </tr>
             <tr>
                 <td style="width:20%"></td>
                 <td  class="registro">
                     <asp:Label ID="KLCLlbNombre" runat="server" clientinstanname="KLCLlbNombre" Text="Fecha: " ForeColor="Black" Font-Size="Medium" Font-Bold="True" Font-Names="Roboto" ></asp:Label>
                 </td>
                 <td  class="registro">
                     <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="338px" >
                         <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                         <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                         <OtherMonthDayStyle ForeColor="#999999" />
                         <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                         <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                         <TodayDayStyle BackColor="#CCCCCC" />
                     </asp:Calendar>
                 </td>
                 
                 <td  class="registro"></td>
                 <td  class="registro">
                     <asp:Label ID="Label1" runat="server" clientinstanname="KLCLlbApellidos" Text="Hora:" ForeColor="Black" Font-Size="Medium" Font-Bold="True" Font-Names="Roboto"></asp:Label>
                 </td>
                 <td  class="registro" >
                     &nbsp;<asp:DropDownList ID="KLCLddlHora" runat="server">
                         <asp:ListItem>8:00</asp:ListItem>
                         <asp:ListItem>8:30</asp:ListItem>
                         <asp:ListItem>9:00</asp:ListItem>
                         <asp:ListItem>9:30</asp:ListItem>
                         <asp:ListItem>10:00</asp:ListItem>
                         <asp:ListItem>10:30</asp:ListItem>
                         <asp:ListItem>11:00</asp:ListItem>
                         <asp:ListItem>11:30</asp:ListItem>
                         <asp:ListItem>12:00</asp:ListItem>
                         <asp:ListItem>12:30</asp:ListItem>
                         <asp:ListItem>13:00</asp:ListItem>
                         <asp:ListItem>13:30</asp:ListItem>
                         <asp:ListItem>14:00</asp:ListItem>
                         <asp:ListItem>14:30</asp:ListItem>
                         <asp:ListItem>15:00</asp:ListItem>
                         <asp:ListItem>15:30</asp:ListItem>
                         <asp:ListItem>16:00</asp:ListItem>
                         <asp:ListItem>16:30</asp:ListItem>
                         <asp:ListItem>17:00</asp:ListItem>
                         <asp:ListItem>17:30</asp:ListItem>
                         <asp:ListItem>18:00</asp:ListItem>
                         <asp:ListItem>18:30</asp:ListItem>
                         <asp:ListItem>19:00</asp:ListItem>
                         <asp:ListItem>19:30</asp:ListItem>
                     </asp:DropDownList>
                     <br />
&nbsp;</td>
                 <td style="width:20%">

                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style15">

                 </td>
                 <td  class="registro">
                     &nbsp;</td>
                 <td  class="registro">
                    <asp:ImageButton ID="BtnSalir" runat="server" Height="80px" ImageUrl="~/iconos/WhatsApp Image 2017-11-24 at 5.22.28 PM.jpeg" Width="80px" ImageAlign="Left" BackColor="#CCFFCC" BorderColor="Black" />
                 </td>
                 
                 <td style="width :5%" class="registro"></td>
                 <td  class="registro">
                     &nbsp;</td>
                 <td class="registro">

                    <asp:ImageButton ID="BtnAgregar" runat="server" Height="72px" ImageUrl="~/iconos/agregar.png" Width="85px" />
                 </td>
                 <td class="auto-style15">

                 </td>
             </tr>
             <tr>
                 <td class="auto-style20">

                 </td>
                 <td  class="registro" >
                     &nbsp;</td>
                 <td class="registro">
                     &nbsp;</td>
                 <td  class="registro"">
                     &nbsp;</td>
                 <td  class="registro" >
                     &nbsp;</td>
                 <td class="registro">
                     &nbsp;</td>
                 
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


    </div>

</body>
</html>
