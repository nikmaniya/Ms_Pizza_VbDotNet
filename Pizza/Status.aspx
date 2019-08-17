<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="Status.aspx.vb" Inherits="Pizza.Status" %>
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
        <br>
        <br>
     <center><div class="input-group">
                    <asp:DropDownList ID="statuslist" class="form-control" runat="server"   
                        AutoPostBack="True">
                        <asp:ListItem>*Select Order Status</asp:ListItem>
                        <asp:ListItem>Pending</asp:ListItem>
                        <asp:ListItem>Delivered</asp:ListItem>
                    </asp:DropDownList><snap><asp:Button ID="orderstatus" class="btn btn-success" runat="server" Text="Find Order" /></snap>
                    
                    </div></center>
                    <br><br>
    <table style="width: 100%;">
        <tr>
            <td class="style1">
                &nbsp;
                <span class="style2">Order Id</span></td>
            <td class="style1">
                &nbsp;
                <span class="style2">Customer Name </span>
            </td>
            <td class="style1">
                &nbsp;
                <span class="style2">Product Name </span>
            </td>
            <td class="style3">
                Product Discription
            </td>
            <td class="style1">
                Total
            </td>
            <td class="style1">
                Status
            </td>
        </tr>
        <asp:Literal ID="divItems" runat="server">
        

        </asp:Literal>
           
    </table>
</asp:Content>
