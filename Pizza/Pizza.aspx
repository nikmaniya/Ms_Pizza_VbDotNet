<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/User.Master" CodeBehind="Pizza.aspx.vb" Inherits="Pizza.Pizza" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body
        {
            color:Gray;
            background:black;            }       
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="position: relative;">
	<hr>
	
	<center><h1>-----SUPREME-----</h1></center>
        <asp:Literal ID="divItems" runat="server">
        </asp:Literal>
	<hr>
    </div>
</asp:Content>
