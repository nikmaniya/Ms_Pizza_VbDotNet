Public Class Status
    Inherits System.Web.UI.Page
    Dim db As New Database()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim ds As New DataSet()
        Dim sv = statuslist.SelectedValue
        db.get_DS("select * from Order_tbl where O_Status='" & sv & "'", "Order_tbl", ds)
        Dim tbl = ds.Tables("Order_tbl")

        For Each dr As DataRow In tbl.Rows
            divItems.Text &= "<tr>" & _
                                 "<td>&nbsp; " & dr.Item("O_id") & "</td>" & _
                                 "<td>&nbsp; " & dr.Item("O_Customername") & "</td>" & _
                                 "<td>&nbsp; " & dr.Item("O_Productname") & "</td>" & _
                                 "<td>&nbsp; " & dr.Item("O_Discription") & "</td>" & _
                                 "<td>&nbsp; " & dr.Item("O_total") & "</td>" & _
                                 "<td>&nbsp; " & dr.Item("O_Status") & "</td>" & _
                             "</tr>"
        Next
    End Sub

    Protected Sub orderstatus_Click(ByVal sender As Object, ByVal e As EventArgs) Handles orderstatus.Click
        
    End Sub
End Class