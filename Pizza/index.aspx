<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="Pizza.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Style.css"/>
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
        .style1
        {
            font-size: xx-large;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div style='background-color:Black;' >
            <center>
                <img src="image/logo.png"/></center>
        </div>
        <div class="menu-bar">
            <ul style="color: #C0C0C0">
               <center> <li><a href="Admin-Login.aspx" style="color: #FFFFFF">Admin</a></li>
                <li><a href="home.aspx" style="color: #FFFFFF">User</a></li>
            </center></ul>
        </div>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <center><h1 class="style1">WELCOME TO M's PIZZA</h1></center>
    
    </div>
    </form>
</body>
</html>
