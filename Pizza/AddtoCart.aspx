<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AddtoCart.aspx.vb" Inherits="Pizza.AddtoCart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="plugins/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="plugins/jquery3.min.js" type="text/javascript"></script>
    <script src="plugins/dist/js/bootstrap.min.js" type="text/javascript"></script>
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
          .input-group-addon:last-child 
          {
                  background: red;
                  color: white;
    }       
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class=" container">
            <center><h1>My Cart</h1></center>
			
        <asp:Literal ID="divItems" runat="server"></asp:Literal>
        <div class="input-group">
                    <asp:TextBox ID="txtorderid"  class="form-control" runat="server" ></asp:TextBox><span class="input-group-addon">Order ID</span>
    			</div><br><br>
    			<div class="input-group">
                    <asp:TextBox ID="txtcustomername" runat="server"  class="form-control"></asp:TextBox><span class="input-group-addon">customer Name</span>
    			</div><br><br>
    			<div class="input-group">
                    <asp:TextBox ID="txtproductname" runat="server" class="form-control" ></asp:TextBox><span class="input-group-addon" >Product name</span>
    			</div><br><br>
    			<div class="input-group">
                    <asp:TextBox ID="txtorderdiscrption" runat="server"  class="form-control"></asp:TextBox><span class="input-group-addon">Order Discrption</span>
    			</div><br><br>
    			<div class="input-group">
                    <asp:TextBox ID="txttotal" runat="server" class="form-control" ></asp:TextBox><span class="input-group-addon" >Total Price</span>
    			</div><br><br>
                <div class="input-group">
                    <asp:DropDownList ID="orderstatus" class="form-control" runat="server"   AutoPostBack="True">
                        <asp:ListItem>Pending</asp:ListItem>
                    </asp:DropDownList>
                    <span class="input-group-addon">Order Status</span>
    			</div><br><br>

    			
    			 <asp:Button ID="PlaceOrder" class="btn btn-success" runat="server" Text="Place Your Order" />
    			  <asp:Button ID="back_to_home" class="btn btn-danger" runat="server" Text="Back To Home"/>
			</form>
		</div>
        </div>
    </form>
</body>
</html>
