<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="Order.aspx.vb" Inherits="Pizza.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
        body
        {
            color:Gray;
            background:black;
            }
          h1
          {
              color:Red;
              }     
            .style1
            {
                height: 44px;
                font-size: large;
            }
            .style2
            {
                font-size: large;
            }
            .style3
            {
                height: 44px;
                font-size: large;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br><br><br>
<center><h1> Order Information </h1></center>
<br>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CssClass="table" DataKeyNames="O_id" DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="O_id" HeaderText="O_id" ReadOnly="True" 
                SortExpression="O_id" />
            <asp:BoundField DataField="O_Customername" HeaderText="O_Customername" 
                SortExpression="O_Customername" />
            <asp:BoundField DataField="O_Productname" HeaderText="O_Productname" 
                SortExpression="O_Productname" />
            <asp:BoundField DataField="O_Discription" HeaderText="O_Discription" 
                SortExpression="O_Discription" />
            <asp:BoundField DataField="O_total" HeaderText="O_total" 
                SortExpression="O_total" />
            <asp:BoundField DataField="O_Status" HeaderText="O_Status" 
                SortExpression="O_Status" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:my_dbConnectionString1 %>" 
        DeleteCommand="DELETE FROM [Order_tbl] WHERE [O_id] = @O_id" 
        InsertCommand="INSERT INTO [Order_tbl] ([O_id], [O_Customername], [O_Productname], [O_Discription], [O_total], [O_Status]) VALUES (@O_id, @O_Customername, @O_Productname, @O_Discription, @O_total, @O_Status)" 
        ProviderName="<%$ ConnectionStrings:my_dbConnectionString1.ProviderName %>" 
        SelectCommand="SELECT [O_id], [O_Customername], [O_Productname], [O_Discription], [O_total], [O_Status] FROM [Order_tbl]" 
        UpdateCommand="UPDATE [Order_tbl] SET [O_Customername] = @O_Customername, [O_Productname] = @O_Productname, [O_Discription] = @O_Discription, [O_total] = @O_total, [O_Status] = @O_Status WHERE [O_id] = @O_id">
        <DeleteParameters>
            <asp:Parameter Name="O_id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="O_id" Type="String" />
            <asp:Parameter Name="O_Customername" Type="String" />
            <asp:Parameter Name="O_Productname" Type="String" />
            <asp:Parameter Name="O_Discription" Type="String" />
            <asp:Parameter Name="O_total" Type="String" />
            <asp:Parameter Name="O_Status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="O_Customername" Type="String" />
            <asp:Parameter Name="O_Productname" Type="String" />
            <asp:Parameter Name="O_Discription" Type="String" />
            <asp:Parameter Name="O_total" Type="String" />
            <asp:Parameter Name="O_Status" Type="String" />
            <asp:Parameter Name="O_id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
