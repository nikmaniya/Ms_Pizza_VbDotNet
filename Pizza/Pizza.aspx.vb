Public Class Pizza
    Inherits System.Web.UI.Page
    Dim db As New Database()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim ds As New DataSet()
        db.get_DS("select * from Product_tbl where P_Ptype='Pizza'", "product", ds)
        Dim tbl = ds.Tables("product")
        
        For Each dr As DataRow In tbl.Rows
            divItems.Text &= " <table style='width: 100%;'>" & _
            "<tr>" & _
                "<td rowspan='4'>" & _
                    "&nbsp;" & _
                    "&nbsp;" & _
                    "&nbsp;" & _
                    "&nbsp;" & _
                    "<img src=" & dr.Item("P_Image") & ">" & _
                "</td>" & _
                "<td>" & _
                    "&nbsp;<h2>" & dr.Item("P_Name") & "</h2></td>" & _
                "<td>" & _
                    "&nbsp;</td>" & _
            "</tr>" & _
            "<tr>" & _
                "<td>" & _
                    "&nbsp;" & _
                    "<h5>" & dr.Item("P_Driscription") & "</h5></td>" & _
                "<td>" & _
                    "&nbsp;" & _
                "</td>" & _
            "</tr>" & _
            "<tr>" & _
                "<td>" & _
                    "&nbsp;" & _
                    "<h3>" & dr.Item("P_Price") & "</h3></td>" & _
                "<td>" & _
                    "&nbsp;" & _
                "</td>" & _
            "</tr>" & _
            "<tr>" & _
                "<td>" & _
                    "&nbsp;" & _
                    "<map name='add-cart' >" & _
                    "<area href='AddtoCart.aspx?id=" & dr.Item("P_Id") & "' shape='poly' coords='21,1,130,1,130,55,1,55'>" & _
                    "</area> " & _
                    "<img src='image/cart.png'  usemap='#add-cart' />" & _
                "</td>" & _
                "<td>" & _
                    "&nbsp;" & _
                "</td>" & _
            "</tr>" & _
        "</table>" & _
   "<hr>"

        Next


    End Sub

End Class