<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/User.Master" CodeBehind="Meals.aspx.vb" Inherits="Pizza.Meals" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body
        {
            color:Gray;
            background:black;            }       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<center><h1>-----FAMILY MEALS-----</h1></center>
	<asp:Literal ID="divItems" runat="server">
        </asp:Literal>	

</asp:Content>
