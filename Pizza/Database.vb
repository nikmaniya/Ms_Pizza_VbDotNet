Imports System.Data
Imports System.Data.SqlClient

Public Class Database

    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Admin\Desktop\ASP.NET PROJECT\Pizza\Pizza\App_Data\my_db.mdf;Integrated Security=True;User Instance=True")

    Sub get_DS(ByVal query As String, ByVal table_name As String, ByRef DS As DataSet)
        Dim cmd As New SqlCommand(query, con)
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(DS, table_name)
    End Sub
    Function sqlQueryJson(ByVal query As String) As String
        Dim ds As New Data.DataSet
        Dim cmd As New SqlCommand(query, con)
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(ds)
        Return GetJson(ds.Tables(0))
    End Function
    Private Function GetJson(ByVal dt As DataTable) As String
        Dim Jserializer As New System.Web.Script.Serialization.JavaScriptSerializer()
        Dim rowsList As New List(Of Dictionary(Of String, Object))()
        Dim row As Dictionary(Of String, Object)
        For Each dr As DataRow In dt.Rows
            row = New Dictionary(Of String, Object)()
            For Each col As DataColumn In dt.Columns
                row.Add(col.ColumnName, dr(col))
            Next
            rowsList.Add(row)
        Next
        Return Jserializer.Serialize(rowsList)
    End Function
End Class
