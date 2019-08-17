<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="Customer.aspx.vb" Inherits="Pizza.Customer" %>
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
<br><br><br><center><h1>Customer Details</h1></center></br>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CssClass="table" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="U_FName" HeaderText="U_FName" 
                SortExpression="U_FName" />
            <asp:BoundField DataField="U_LName" HeaderText="U_LName" 
                SortExpression="U_LName" />
            <asp:BoundField DataField="U_Mobile" HeaderText="U_Mobile" 
                SortExpression="U_Mobile" />
            <asp:BoundField DataField="U_BOD" HeaderText="U_BOD" SortExpression="U_BOD" />
            <asp:BoundField DataField="U_Email" HeaderText="U_Email" 
                SortExpression="U_Email" />
            <asp:BoundField DataField="U_Username" HeaderText="U_Username" 
                SortExpression="U_Username" />
            <asp:BoundField DataField="U_Password" HeaderText="U_Password" 
                SortExpression="U_Password" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:my_dbConnectionString1 %>" 
        SelectCommand="SELECT [U_FName], [U_LName], [U_Mobile], [U_BOD], [U_Email], [U_Username], [U_Password] FROM [User_tbl]">
    </asp:SqlDataSource>
</asp:Content>
