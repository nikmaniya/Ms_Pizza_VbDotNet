<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="insert_pizaa.aspx.vb" Inherits="Pizza.insert_pizaa" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="plugins/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="plugins/jquery3.min.js" type="text/javascript"></script>
    <script src="plugins/dist/js/bootstrap.min.js" type="text/javascript"></script>
    <title></title>
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
        <center> <h1> Insert The Product Details Here...</h1></center>
		
        <br><br>
                <div class="input-group">
                    <asp:DropDownList ID="ddlist_ptype" class="form-control" runat="server"   AutoPostBack="True">
                        <asp:ListItem>*Select Product Type</asp:ListItem>
                        <asp:ListItem>PIZZA</asp:ListItem>
                        <asp:ListItem>MEALS</asp:ListItem>
                        <asp:ListItem>DRINKS</asp:ListItem>
                    </asp:DropDownList>
                    <span class="input-group-addon">Product Type</span>
    			</div>
                <br><br>
    			<div class="input-group">
                    <asp:TextBox ID="txtPname"  class="form-control" runat="server" placeholder="Enter the Product Name"></asp:TextBox><span class="input-group-addon">Product Name</span>
    			</div><br><br>
    			<div class="input-group">
                    <asp:TextBox ID="txtPprice" runat="server" placeholder="Enter the Product Price" class="form-control"></asp:TextBox><span class="input-group-addon">Product Price</span>
    			</div><br><br>
    			<div class="input-group">
                    <asp:TextBox ID="txtpdisc" runat="server" class="form-control" placeholder="Enter Discription"></asp:TextBox><span class="input-group-addon" >Discription</span>
    			</div><br><br>
    			<div class="input-group">
                    <asp:DropDownList ID="ddlist" class="form-control" runat="server"   AutoPostBack="True">
                        <asp:ListItem>*Select Product status</asp:ListItem>
                        <asp:ListItem>YES</asp:ListItem>
                        <asp:ListItem>NO</asp:ListItem>
                    </asp:DropDownList>
                    <span class="input-group-addon">Product Status</span>
    			</div><br>
        
        <br>
    			<div class="input-group">
                    <asp:FileUpload ID="Pro_image" class="form-control" runat="server" /><span class="input-group-addon">Product Image	</span>
    			</div><br><br>
    			 <asp:Button ID="btn_add_item" class="btn btn-success" runat="server" Text="Add Item" />
    			  <asp:Button ID="btn_reset" class="btn btn-danger" runat="server" Text="Reset"/>
			</div>
            </form>
		</div>
        </form>
</body>
</html>
<script src="plugins/jquery3.min.js" type="text/javascript"></script>
<script src="plugins/dist/js/bootstrap.min.js" type="text/javascript"></script>
