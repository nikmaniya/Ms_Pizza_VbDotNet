Imports System.Data
Imports System.Data.SqlClient
Public Class insert_pizaa
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Admin\Desktop\ASP.NET PROJECT\Pizza\Pizza\App_Data\my_db.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btn_add_item_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_add_item.Click
        con.Open()
        cmd = con.CreateCommand
        cmd.CommandType = CommandType.Text
        Dim d = DateTime.Now
        Dim dstr = "file" & CStr(d.Year) & CStr(d.Month) & CStr(d.Day) & CStr(d.Hour) & CStr(d.Minute) & CStr(d.Second) & ".png"
        Pro_image.SaveAs(MapPath("pimages//" & dstr))
        cmd.CommandText = "insert into Product_tbl(P_Ptype,P_Name,P_Price,P_Driscription,P_Status,P_Image) values('" & ddlist_ptype.SelectedValue & "','" & txtPname.Text & "'," & txtPprice.Text & ",'" & txtpdisc.Text & "','" & ddlist.SelectedValue & "','pimages/" & dstr & "') "
        cmd.ExecuteNonQuery()
        con.Close()
        Response.Redirect("Admin-Pizza.aspx")
    End Sub


    Protected Sub btn_reset_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_reset.Click
        txtpdisc.Text = ""
        txtPprice.Text = ""
        txtPname.Text = ""
    End Sub
End Class