﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/User.Master" CodeBehind="User-Login.aspx.vb" Inherits="Pizza.User_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
		body{
	margin: 0;
	padding: 0;
	background-size: cover;
	background-image:url(image/1.jpg);
	background-position: center;
}
.login-box{
	width: 320px;
	height: 420px;
	background: rgba(0,0,0,0.5);
	color: #fff;
	box-sizing: border-box;
	padding:70px 30px;
 	margin:auto;
	margin-top:5%;
}
h1{

	margin: 0;
	padding: 0 0 20px;
	text-align:center;
	font-size: 25px;
	font-family:sans-serif; 

}
.login-box p{
	margin: 0;
	padding: 0;
	font-family:sans-serif;
	font-size:18px;
	font-weight: bold;
}
.login-box input{
	width: 100%;
	margin-bottom: 20px;
}
.login-box input[type="text"], input[type="password"]
{

	border: none;
	border-bottom: 1px solid #fff;
	background: transparent;
	outline: none;
	height: 40px;
	color: #fff;
	font-size: 16px; 
}
.login-box input[type="submit"]
{

	border:none;
	outline: none;
	height: 40px;
	background: #1c8adb;
	color: #fff;
	font-size: 18px;
	border-radius: 20px;

}
.login-box input[type="submit"]:hover
{
	cursor: pointer;
	background: #39dc79;
	color: #000;
}
.login-box a{
	text-decoration: none;
	font-size: 14px;
	color: #fff;
	font-family:sans-serif; 
	
}
.login-box a:hover{
	color:#39dc79;
}		
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="login-box">
		<h1>Login Here</h1>
		
		
		<form action="cart.html" method="post">
			<p> Username</p>
            <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
			<p>Password</p>
            <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox><br>
            <asp:Button ID="btnsubmit" runat="server" Text="Login" /><br>
        <asp:Label ID="lblError" runat="server" ForeColor="#CC0000"></asp:Label><br />
			<a href="Registration.aspx"> Register Now</a><br>
        
		</form>
	</div>
</asp:Content>
