<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Order_success.aspx.vb" Inherits="Pizza.Order_success" %>

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
    <div>
        <center>Your Order is placed and your Order id=<asp:Label ID="Order_id" 
                runat="server" Text="Label"></asp:Label>
&nbsp;THANK YOU FOR USING M's PIZZA
        </center>
        <br>
        <asp:Button ID="back_to_home" class="btn btn-danger" runat="server" Text="Back To Home" />
    </div>
    </form>
</body>
</html>
