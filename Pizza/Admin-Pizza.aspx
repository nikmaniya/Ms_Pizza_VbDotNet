<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="Admin-Pizza.aspx.vb" Inherits="Pizza.Admin_Pizza" %>
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
<br />
<center>
        <a href="insert_pizaa.aspx" class="btn btn-info">Add New Product</a>
        
        <br>
        <h1> Product Information </h1></center>
    <br>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CssClass="table" DataKeyNames="P_Id" DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="P_Id" HeaderText="P_Id" ReadOnly="True" 
                SortExpression="P_Id" />
            <asp:BoundField DataField="P_Ptype" HeaderText="P_Ptype" 
                SortExpression="P_Ptype" />
            <asp:BoundField DataField="P_Name" HeaderText="P_Name" 
                SortExpression="P_Name" />
            <asp:BoundField DataField="P_Price" HeaderText="P_Price" 
                SortExpression="P_Price" />
            <asp:BoundField DataField="P_Driscription" HeaderText="P_Driscription" 
                SortExpression="P_Driscription" />
            <asp:BoundField DataField="P_Status" HeaderText="P_Status" 
                SortExpression="P_Status" />
            <asp:BoundField DataField="P_Image" HeaderText="P_Image" 
                SortExpression="P_Image" />
            <asp:ImageField DataImageUrlField="P_Image" HeaderText="product image">
                <ItemStyle Height="50px" Width="50px" />
            </asp:ImageField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:my_dbConnectionString1 %>" 
        DeleteCommand="DELETE FROM [Product_tbl] WHERE [P_Id] = @P_Id" 
        InsertCommand="INSERT INTO [Product_tbl] ([P_Ptype], [P_Name], [P_Price], [P_Driscription], [P_Status], [P_Image]) VALUES (@P_Ptype, @P_Name, @P_Price, @P_Driscription, @P_Status, @P_Image)" 
        ProviderName="<%$ ConnectionStrings:my_dbConnectionString1.ProviderName %>" 
        SelectCommand="SELECT [P_Id], [P_Ptype], [P_Name], [P_Price], [P_Driscription], [P_Status], [P_Image] FROM [Product_tbl]" 
        UpdateCommand="UPDATE [Product_tbl] SET [P_Ptype] = @P_Ptype, [P_Name] = @P_Name, [P_Price] = @P_Price, [P_Driscription] = @P_Driscription, [P_Status] = @P_Status, [P_Image] = @P_Image WHERE [P_Id] = @P_Id">
        <DeleteParameters>
            <asp:Parameter Name="P_Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="P_Ptype" Type="String" />
            <asp:Parameter Name="P_Name" Type="String" />
            <asp:Parameter Name="P_Price" Type="Int32" />
            <asp:Parameter Name="P_Driscription" Type="String" />
            <asp:Parameter Name="P_Status" Type="String" />
            <asp:Parameter Name="P_Image" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="P_Ptype" Type="String" />
            <asp:Parameter Name="P_Name" Type="String" />
            <asp:Parameter Name="P_Price" Type="Int32" />
            <asp:Parameter Name="P_Driscription" Type="String" />
            <asp:Parameter Name="P_Status" Type="String" />
            <asp:Parameter Name="P_Image" Type="String" />
            <asp:Parameter Name="P_Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
<br />
    
</asp:Content>
