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
Partial Class Bajas
    Inherits System.Web.UI.Page

    Protected Sub BtnAgregar_Click(sender As Object, e As ImageClickEventArgs) Handles BtnAgregar.Click
        Dim SQLInsert As String
        Dim sqlCon As New SqlConnection(ConnectionStrings("ConsultorioConnectionString2").ConnectionString)
        Dim SQLCmd As New SqlCommand

        sqlCon.Open()
        SQLCmd.Connection = sqlCon

        Dim KLCLId As Integer
        Dim KLCLNombre, KLCLApellidoM, KLCLApellidoP, KLCLFuncion As String


        KLCLId = KLCLtbId.Text
        KLCLNombre = KLCLtbNombre.Text
        KLCLFuncion = KLCLddlFuncion.Text
        KLCLApellidoP = KLCLtbApellidos.Text
        KLCLApellidoM = KLCLtbApellidoM.Text


        SQLInsert = String.Format("INSERT into Empleados (id_empleado, Nombre, Apellido_P,Apellido_M, Función) " &
            "VALUES (" + KLCLId.ToString + ",'" + KLCLNombre.ToString + "','" + KLCLApellidoP.ToString + "','" + KLCLApellidoM.ToString + "','" &
                         KLCLFuncion.ToString + "')")

        SQLCmd.CommandText = SQLInsert
        SQLCmd.ExecuteNonQuery()
        sqlCon.Close()
        MsgBox("Empleado agregado correctamente")

    End Sub
    Protected Sub BtnSalir_Click(sender As Object, e As ImageClickEventArgs) Handles BtnSalir.Click
        Dim resultado As String

        resultado = MsgBox("¿Seguro de que quieres regresar?", MsgBoxStyle.OkCancel, "Advertencia")
        If resultado = MsgBoxResult.Ok Then
            Response.Redirect("Menu.aspx")
        End If
        If resultado = MsgBoxResult.Cancel Then

        End If
    End Sub
End Class
