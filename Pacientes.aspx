<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Pacientes.aspx.vb" Inherits="Alta_Paciente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style9 {
            height: 80px;
        }
        .auto-style12 {
            width: 100%;
        }
        .registro{
            background-color:white;
            font-family:Roboto;
            text-align:center;
            
        }
        .fondo{
          background-image: url(imagenes/dent.png);
          background-position:bottom;
          background-size:cover;
        }
        .auto-style15 {
            width: 20%;
            height: 100px;
        }
        .auto-style20 {
            width: 20%;
        }
    </style>
</head>
<body >
    <form id="form1" runat="server" class="fondo">
         <div class="auto-style9" style="padding: inherit; margin: inherit; background-color: steelblue">
            <asp:Image ID="Image1" runat="server" Height="78px" ImageAlign="Right" ImageUrl="~/imagenes/logo.png" Width="88px" />
        </div>
        
         <table style="width:100%">
             <tr>

                 <td class="auto-style12" style="text-align: center">
                     <asp:Label ID="KLCLlbTituloAlta" runat="server" clientinstanname="KLCLlbTituloAlta" Text="PACIENTES" ForeColor="Black" Font-Size="70px" Font-Bold="True" Font-Names="DK Honeyguide Caps"></asp:Label>
                 </td>
             </tr>
        </table>
        <table id="consulta" style="width:100%; border-spacing:0px">
            <tr style="width:100%">
                <td style="text-align:right; width:40%; background-color:lightgreen;">

                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Roboto" Font-Size="Medium" Text="Id paciente:"></asp:Label>

                </td>
                <td style="width:60%; align-items:center; background-color:lightgreen;">

                    <asp:TextBox ID="txtNombreConsulta" runat="server" Width="164px" Height="22px" ></asp:TextBox>

                    &nbsp;&nbsp;

                    <asp:ImageButton ID="ImageButton3" runat="server" Height="26px" ImageUrl="~/iconos/consulta.png" Width="32px" />

                </td>
            </tr>
            </table>
            <table style="width:100%; align-items:center; text-align:center"><tr>
                <td style="width:20%"></td>
                <td style="align-content:center">

                    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" BackColor="#CCCCFF" Font-Names="Roboto" Font-Size="Medium" Width="806px" DataKeyNames="id_Pacientes" >
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="id_Pacientes" HeaderText="Id " SortExpression="id_Pacientes" ReadOnly="True" />
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                            <asp:BoundField DataField="Apellido_P" HeaderText="Apellido Paterno" SortExpression="Apellido_P" />
                            <asp:BoundField DataField="Apellido_M" HeaderText="Apellido Materno" SortExpression="Apellido_M" />
                            <asp:BoundField DataField="Sexo" HeaderText="Sexo" SortExpression="Sexo" />
                            <asp:BoundField DataField="Edad" HeaderText="Edad" SortExpression="Edad" />
                            <asp:BoundField DataField="Domicilio" HeaderText="Domicilio" SortExpression="Domicilio" />
                            <asp:BoundField DataField="Telefono_movil" HeaderText="Celular" SortExpression="Telefono_movil" />
                            <asp:BoundField DataField="Telefono_fijo" HeaderText="Casa" SortExpression="Telefono_fijo" />
                            <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                        </Columns>
                    </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConsultorioConnectionString2 %>" SelectCommand="SELECT * FROM [Pacientes] WHERE ([id_Pacientes] = @id_Pacientes)" DeleteCommand="DELETE FROM [Pacientes] WHERE [id_Pacientes] = @id_Pacientes" InsertCommand="INSERT INTO [Pacientes] ([id_Pacientes], [Nombre], [Apellido_P], [Apellido_M], [Sexo], [Edad], [Domicilio], [Telefono_movil], [Telefono_fijo], [Correo]) VALUES (@id_Pacientes, @Nombre, @Apellido_P, @Apellido_M, @Sexo, @Edad, @Domicilio, @Telefono_movil, @Telefono_fijo, @Correo)" UpdateCommand="UPDATE [Pacientes] SET [Nombre] = @Nombre, [Apellido_P] = @Apellido_P, [Apellido_M] = @Apellido_M, [Sexo] = @Sexo, [Edad] = @Edad, [Domicilio] = @Domicilio, [Telefono_movil] = @Telefono_movil, [Telefono_fijo] = @Telefono_fijo, [Correo] = @Correo WHERE [id_Pacientes] = @id_Pacientes">
                        <DeleteParameters>
                            <asp:Parameter Name="id_Pacientes" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="id_Pacientes" Type="Int32" />
                            <asp:Parameter Name="Nombre" Type="String" />
                            <asp:Parameter Name="Apellido_P" Type="String" />
                            <asp:Parameter Name="Apellido_M" Type="String" />
                            <asp:Parameter Name="Sexo" Type="String" />
                            <asp:Parameter Name="Edad" Type="Int32" />
                            <asp:Parameter Name="Domicilio" Type="String" />
                            <asp:Parameter Name="Telefono_movil" Type="String" />
                            <asp:Parameter Name="Telefono_fijo" Type="String" />
                            <asp:Parameter Name="Correo" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtNombreConsulta" Name="id_Pacientes" PropertyName="Text" Type="Int32" />
                           
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Nombre" Type="String" />
                            <asp:Parameter Name="Apellido_P" Type="String" />
                            <asp:Parameter Name="Apellido_M" Type="String" />
                            <asp:Parameter Name="Sexo" Type="String" />
                            <asp:Parameter Name="Edad" Type="Int32" />
                            <asp:Parameter Name="Domicilio" Type="String" />
                            <asp:Parameter Name="Telefono_movil" Type="String" />
                            <asp:Parameter Name="Telefono_fijo" Type="String" />
                            <asp:Parameter Name="Correo" Type="String" />
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

                      <asp:Label ID="KLCLlbEdad" runat="server" Font-Bold="True" Font-Names="Roboto" Text="Edad:"></asp:Label>

                  </td>
                  <td class="registro">

                      <asp:TextBox ID="KLCLtbEdad" runat="server"></asp:TextBox>

                  </td>
                  <td style="width:20%">

                  </td>
              </tr>
             <tr>
                 <td style="width:20%"></td>
                 <td  class="registro">
                     <asp:Label ID="KLCLlbNombre" runat="server" clientinstanname="KLCLlbNombre" Text="Nombre(s): " ForeColor="Black" Font-Size="Medium" Font-Bold="True" ></asp:Label>
                 </td>
                 <td  class="registro">
                     <asp:TextBox ID="KLCLtbNombre" runat="server" clientinstanname="KLCLtbNombre" Width="236px"></asp:TextBox>
                 </td>
                 
                 <td  class="registro"></td>
                 <td  class="registro">
                     <asp:Label ID="Label1" runat="server" clientinstanname="KLCLlbApellidos" Text="Apellidos" ForeColor="Black" Font-Size="Medium" Font-Bold="True"></asp:Label>
                 </td>
                 <td  class="registro" >
                     <asp:Label ID="Label6" runat="server" Font-Names="Roboto" Font-Size="Small" Text="Paterno"></asp:Label>
&nbsp;
                     <asp:TextBox ID="KLCLtbApellidos" runat="server" clientinstanname="KLCLtbApellidos" Width="143px"></asp:TextBox>
                     <br />
                     <asp:Label ID="Label7" runat="server" Font-Names="Roboto" Font-Size="Small" Text="Materno"></asp:Label>
&nbsp;<asp:TextBox ID="KLCLtbApellidoM" runat="server" Width="138px"></asp:TextBox>
                 </td>
                 <td style="width:20%">

                 </td>
             </tr>
             <tr>
                 <td class="auto-style15">

                 </td>
                 <td  class="registro">
                     <asp:Label ID="KLCLlbTelefono" runat="server" clientinstanname="KLCLlbTelefono" Text="Teléfono" ForeColor="Black" Font-Size="Medium" Font-Bold="True"></asp:Label>
                 </td>
                 <td  class="registro">
                     <asp:Label ID="Label2" runat="server" Font-Size="Small" Text="Fijo:"></asp:Label>
                     &nbsp;<asp:TextBox ID="KLCLtbTelefonoFijo" runat="server" Width="234px"></asp:TextBox>
                     <br />
                     <asp:Label ID="Label3" runat="server" Font-Size="Small" Text="Celular:"></asp:Label>
                     <asp:TextBox ID="KLCLtbTelefonoC" runat="server" Width="236px"></asp:TextBox>
                 </td>
                 
                 <td style="width :5%" class="registro"></td>
                 <td  class="registro">
                     <asp:Label ID="KLCLlbDireccion" runat="server" clientinstanname="KLCLlbDireccion" Text="Dirección: " ForeColor="Black" Font-Size="Medium" Font-Bold="True"></asp:Label>
                 </td>
                 <td class="registro">
                     <asp:TextBox ID="KLCLtbDireccion" runat="server" ClientInstanName="KLCLtbDireccion" Width="255px" Height="37px" TextMode="Multiline"></asp:TextBox>
                 </td>
                 <td class="auto-style15">

                 </td>
             </tr>
             <tr>
                 <td class="auto-style20">

                 </td>
                 <td  class="registro" >
                     <asp:Label ID="KLCLlbSexo" runat="server" ClientInstanName="KLCLlbSexo" Text="Sexo: " ForeColor="Black" Font-Size="Medium" Font-Bold="True"></asp:Label>
                 </td>
                 <td class="registro">
                     <asp:RadioButtonList ID="KLCLrbSexo" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="#000000">
                       <asp:ListItem Value="M" Selected="true">Masculino</asp:ListItem>
                       <asp:ListItem Value="F" Selected="False">Femenino</asp:ListItem>
                   </asp:RadioButtonList>
                 </td>
                 <td  class="registro"">
                     &nbsp;</td>
                 <td  class="registro" >
                     <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Correo electrónico:" Font-Size="Medium"></asp:Label>
                 </td>
                 <td class="registro">
                     <asp:TextBox ID="KLCLtbCorreoE" runat="server" Width="254px"></asp:TextBox>
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
                    <asp:ImageButton ID="BtnSalir" runat="server" Height="80px" ImageUrl="~/iconos/WhatsApp Image 2017-11-24 at 5.22.28 PM.jpeg" Width="80px" ImageAlign="Left" BackColor="#CCFFCC" BorderColor="Black" BorderStyle="Solid" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td style="text-align:right">

                    &nbsp;</td>
                <td style="text-align:right">

                    <asp:ImageButton ID="BtnAgregar" runat="server" Height="72px" ImageUrl="~/iconos/agregar.png" Width="85px" BorderStyle="Solid" />

                </td>
                
            </tr>
            </table>
    </form>
</body>
</html>
