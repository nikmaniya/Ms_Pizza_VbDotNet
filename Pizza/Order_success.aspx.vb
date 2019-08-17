Public Class Order_success
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim orderid = Request.QueryString("dstr")
        Order_id.Text = orderid
    End Sub

    Protected Sub back_to_home_Click(ByVal sender As Object, ByVal e As EventArgs) Handles back_to_home.Click
        Response.Redirect("home.aspx")
    End Sub
End Class