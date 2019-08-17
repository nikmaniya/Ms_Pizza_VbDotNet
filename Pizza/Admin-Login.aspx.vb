Public Class Admin_Login
    Inherits System.Web.UI.Page
    Dim database As New Database()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnsubmit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnsubmit.Click
        Dim ds As New DataSet()
        database.get_DS("select * from Admin where Username='" & txtusername.Text & "'", "Admin", ds)
        Dim tbl = ds.Tables("Admin")
        If tbl.Rows.Count = 0 Then
            lblError.Text = "Username not found"
        Else
            Dim temp = tbl.Rows(0).Item("Password")
            If temp = txtpassword.Text Then

                Session("user_logged") = tbl.Rows(0).Item("Username")
                Response.Redirect("Admin-Pizza.aspx")
            Else
                lblError.Text = "wrong password"
            End If
        End If
    End Sub
End Class