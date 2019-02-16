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
Partial Class Modificacion
    Inherits System.Web.UI.Page

    Protected Sub BtnAgregar_Click(sender As Object, e As ImageClickEventArgs) Handles BtnAgregar.Click
        Dim SQLInsert As String
        Dim sqlCon As New SqlConnection(ConnectionStrings("ConsultorioConnectionString2").ConnectionString)
        Dim SQLCmd As New SqlCommand

        sqlCon.Open()
        SQLCmd.Connection = sqlCon

        Dim KLCLId, KLCLIdPaciente As Integer
        Dim KLCLHora As String
        Dim KLCLFecha As Date

        KLCLId = KLCLtbId.Text
        KLCLFecha = Calendar2.SelectedDate
        KLCLHora = KLCLddlHora.Text
        KLCLIdPaciente = KLCLddlPaciente.Text


        SQLInsert = String.Format("INSERT into Citas (id_cita, Fecha,Hora, id_Pacientes) " &
            "VALUES (" + KLCLId.ToString + ",N'" + Format(KLCLFecha, "yyyy/MM/dd") + "','" + KLCLHora.ToString + "'," + KLCLIdPaciente.ToString + ")")

        Try
            SQLCmd.CommandText = SQLInsert
            SQLCmd.ExecuteNonQuery()
            sqlCon.Close()

            lblstatusmodal.Text = "Cita agregada correctamente"
            buttonclosemodal.Visible = True
            lblmodalheader.Text = "Agregar citas"
            buttonclosemodal.Text = "Ok, Enterado"
            modalheader.Style.Add("background-color", "#276ec4")  'crimson  Rojo
            spanmodalheader.Style.Add("background-color", "#276ec4")
            spanmodalheader.Style.Add("class", "glyphicon glyphicon-thumbs-up")
            lblmodalheader.Style.Item("background-color") = "#276ec4"

            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal()", True)

        Catch ex As Exception
            Select Case Err.Number
                Case 5
                    lblstatusmodal.Text = "Registro ya Existe..."
                Case Else
                    lblstatusmodal.Text = ErrorToString() & " - " & Err.Number
            End Select

            buttonclosemodal.Visible = True
            lblmodalheader.Text = "Agregar citas"
            buttonclosemodal.Text = "Ok, Enterado"
            modalheader.Style.Add("background-color", "crimson")  'crimson  Rojo
            spanmodalheader.Style.Add("background-color", "crimson")
            spanmodalheader.Style.Add("class", "glyphicon glyphicon-thumbs-up")
            lblmodalheader.Style.Item("background-color") = "crimson"

            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal()", True)
        End Try


        'MsgBox("Cita agregado correctamente")

    End Sub



    Protected Sub BtnSalir_Click(sender As Object, e As ImageClickEventArgs) Handles BtnSalir.Click
        Dim resultado As String

        resultado = MsgBox("¿Seguro de que quieres regresar?", MsgBoxStyle.OkCancel)
        If resultado = MsgBoxResult.Ok Then
            Response.Redirect("Menu.aspx")
        End If
        If resultado = MsgBoxResult.Cancel Then

        End If
    End Sub
End Class
