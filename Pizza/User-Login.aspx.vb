Public Class User_Login
    Inherits System.Web.UI.Page
    Dim database As New Database()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnsubmit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnsubmit.Click
        Dim ds As New DataSet()
        database.get_DS("select * from User_tbl where U_Username='" & txtusername.Text & "'", "User_tbl", ds)
        Dim tbl = ds.Tables("User_tbl")
        If tbl.Rows.Count = 0 Then
            lblError.Text = "Username not found"
        Else
            Dim temp = tbl.Rows(0).Item("U_Password")
            If temp = txtpassword.Text Then

                Session("user_logged") = tbl.Rows(0).Item("U_Username")
                Response.Redirect("Pizza.aspx")
            Else
                lblError.Text = "wrong password"
            End If
        End If

        
    End Sub
End Class