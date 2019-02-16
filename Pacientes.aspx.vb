Imports Microsoft.VisualBasic
Imports System
Imports System.Web.UI
Imports System.IO
Imports System.Drawing
Imports System.Data.SqlClient
Imports System.Data
Imports System.Configuration.ConfigurationManager
Imports System.Web.UI.WebControls
Imports System.Drawing.Imaging
Imports System.Configuration
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports System.Collections.Generic
Imports System.Collections
Imports System.Linq
Partial Class Alta_Paciente
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
    Protected Sub ImageButton2_Click(sender As Object, e As ImageClickEventArgs) Handles BtnSalir.Click
        Dim resultado As String

        resultado = MsgBox("¿Seguro de que quieres regresar?", MsgBoxStyle.OkCancel)
        If resultado = MsgBoxResult.Ok Then
            Response.Redirect("Menu.aspx")
        End If
        If resultado = MsgBoxResult.Cancel Then

        End If

    End Sub
    Protected Sub ImageButton3_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton3.Click



    End Sub
    Protected Sub BtnAgregar_Click(sender As Object, e As ImageClickEventArgs) Handles BtnAgregar.Click
        Dim SQLInsert As String
        Dim sqlCon As New SqlConnection(ConnectionStrings("ConsultorioConnectionString2").ConnectionString)
        Dim SQLCmd As New SqlCommand

        sqlCon.Open()
        SQLCmd.Connection = sqlCon

        Dim KLCLId, KLCLEdad As Integer
        Dim KLCLNombre, KLCLDireccion, KLCLApellidoM, KLCLApellidoP, KLCLTelefonoC, KLCLTelefonoF, KLCLCorreo, KLCLSexo As String
        Dim Apellidos(2) As String



        KLCLId = KLCLtbId.Text
        KLCLNombre = KLCLtbNombre.Text
        KLCLDireccion = KLCLtbDireccion.Text
        KLCLTelefonoC = KLCLtbTelefonoC.Text
        KLCLTelefonoF = KLCLtbTelefonoFijo.Text
        KLCLSexo = KLCLrbSexo.Text
        KLCLApellidoP = KLCLtbApellidos.Text
        KLCLApellidoM = KLCLtbApellidoM.Text
        KLCLCorreo = KLCLtbCorreoE.Text
        KLCLEdad = KLCLtbEdad.Text

        SQLInsert = String.Format("INSERT into Pacientes (id_Pacientes, Nombre, Apellido_P,Apellido_M, Sexo, Edad, Domicilio, Telefono_movil, Telefono_fijo, Correo) " &
            "VALUES (" + KLCLId.ToString + ",'" + KLCLNombre.ToString + "','" + KLCLApellidoP.ToString + "','" + KLCLApellidoM.ToString + "','" &
                         KLCLSexo.ToString + "'," + KLCLEdad.ToString + ",'" + KLCLDireccion.ToString + "','" + KLCLTelefonoC.ToString + "','" + KLCLTelefonoF.ToString + "','" &
                         KLCLCorreo.ToString + "')")

        SQLCmd.CommandText = SQLInsert
        SQLCmd.ExecuteNonQuery()
        sqlCon.Close()
        MsgBox("Paciente agregado correctamente")

    End Sub

End Class
