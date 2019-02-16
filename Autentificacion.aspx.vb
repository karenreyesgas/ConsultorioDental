Imports System.Data
Partial Class Autentificacion
    Inherits System.Web.UI.Page

    Protected Sub BtnIniciar_Click(sender As Object, e As ImageClickEventArgs) Handles BtnIniciar.Click
        Dim ban1, ban2 As Integer
        Dim Usuario, Contraseña As String
        Dim dvsql As DataView = DirectCast(SqlDataSource1.Select(DataSourceSelectArguments.Empty), DataView)

        ban2 = 1
        Usuario = txtUsuario.Text
        Contraseña = txtContra.Text

        If (Usuario = "" Or Contraseña = "") Then
            MsgBox("Introduce Usuario y/o Contraseña")
            ban2 = 0
        ElseIf (dvsql.Count = 0) Then
            MsgBox("Usuario y/o Contraseña Incorrecta")
            ban2 = 0
        End If
        If ban2 <> 0 Then
            If dvsql.Count > 0 Then
                ban1 = 1

            End If
        End If
        If ban1 = 1 Then
            Session("usuario") = dvsql(0).Item(0)
            If Session("usuario") = "Administrador" Then
                Response.Redirect("Menu.aspx")
            End If
            If Session("usuario") = "Secretaria" Then
                Response.Redirect("Menu.aspx")
            End If
        End If


    End Sub
    Public Property PasswordChar As Char
    Private Sub InitializeMyControl()



    End Sub


End Class
