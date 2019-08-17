Imports System.Data
Imports System.Data.SqlClient
Public Class AddtoCart
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Admin\Desktop\ASP.NET PROJECT\Pizza\Pizza\App_Data\my_db.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim db As New Database()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("user_logged") <> "" Then
            Dim qs As String
            qs = Request.QueryString("id")
            Dim ds As New DataSet()
            db.get_DS("select * from Product_tbl where P_Id='" & qs & "'", "product", ds)
            Dim tbl = ds.Tables("product")
            Dim d = DateTime.Now
            Dim dstr = CStr(d.Year) & CStr(d.Month) & CStr(d.Day) & CStr(d.Hour) & CStr(d.Minute) & CStr(d.Second)
            txtorderid.Text = dstr
            txtproductname.Text = tbl.Rows(0).Item("P_Name")
            txttotal.Text = tbl.Rows(0).Item("P_Price")
            txtcustomername.Text = Session("user_logged")
            txtorderdiscrption.Text = tbl.Rows(0).Item("P_Driscription")
        Else
            Response.Redirect("User-Login.aspx")
        End If
        

    End Sub

    Protected Sub PlaceOrder_Click(ByVal sender As Object, ByVal e As EventArgs) Handles PlaceOrder.Click
        con.Open()
        cmd = con.CreateCommand()
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "insert into  Order_tbl(O_id,O_customername,O_Productname,O_discription,O_total,O_Status) values('" & txtorderid.Text & "','" & txtcustomername.Text & "','" & txtproductname.Text & "','" & txtorderdiscrption.Text & "','" & txttotal.Text & "','" & orderstatus.SelectedValue & "')"
        cmd.ExecuteNonQuery()
        con.Close()
        Response.Redirect("Order_success.aspx?id=dstr")
    End Sub

    Protected Sub back_to_home_Click(ByVal sender As Object, ByVal e As EventArgs) Handles back_to_home.Click
        Response.Redirect("home.aspx")
    End Sub
End Class