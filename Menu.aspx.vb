
Partial Class Menu
    Inherits System.Web.UI.Page

    Protected Sub ImageButton3_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton3.Click
        Response.Redirect("Pagos.aspx")
    End Sub
    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click
        Response.Redirect("Pacientes.aspx")
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
    Protected Sub ImageButton4_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton4.Click
        Dim resultado As String

        resultado = MsgBox("¿Seguro de que quieres salir?", MsgBoxStyle.OkCancel)
        If resultado = MsgBoxResult.Ok Then
            Response.Redirect("Autentificacion.aspx")
        End If
        If resultado = MsgBoxResult.Cancel Then

        End If



    End Sub
    Protected Sub ImageButton2_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton2.Click
        Response.Redirect("Citas.aspx")
    End Sub
End Class
