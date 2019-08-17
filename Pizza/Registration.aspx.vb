Imports System.Data
Imports System.Data.SqlClient
Public Class WebForm2

    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Admin\Desktop\ASP.NET PROJECT\Pizza\Pizza\App_Data\my_db.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btn_reset_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_reset.Click
        txtdob.Text = ""
        txtemail.Text = ""
        txtfname.Text = ""
        txtlname.Text = ""
        txtnumber.Text = ""
        txtpassword.Text = ""
        txtrepassword.Text = ""
        txtusername.Text = ""
    End Sub

    Protected Sub btn_submit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_submit.Click
        con.Open()
        cmd = con.CreateCommand()
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "insert into  User_tbl(U_FName,U_LName,U_Mobile,U_BOD,U_Email,U_Username,U_Password) values('" + txtfname.Text + "','" + txtlname.Text + "','" + txtnumber.Text + "','" + txtdob.Text + "','" + txtemail.Text + "','" + txtusername.Text + "','" + txtpassword.Text + "' )"
        cmd.ExecuteNonQuery()
        con.Close()
        Response.Redirect("User-Login.aspx")
    End Sub
End Class