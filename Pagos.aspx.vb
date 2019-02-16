
Partial Class Consultas
    Inherits System.Web.UI.Page

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
