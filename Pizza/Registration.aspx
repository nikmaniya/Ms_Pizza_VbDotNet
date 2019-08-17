<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/User.Master" CodeBehind="Registration.aspx.vb" Inherits="Pizza.WebForm2" %>
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
          .input-group-addon:last-child 
          {
                  background: red;
                  color: white;
    }       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class=" container">
        <center>
            <h1> -: Registration Here :-</h1>   
        </center>
        
			<form class="form-horizontal" >
                <br><br>
				<div class="input-group">
                    <asp:TextBox ID="txtusername" runat="server" class="form-control" placeholder="Username"></asp:TextBox>
						<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
				</div>	
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtusername" ErrorMessage="Username Reruired" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br><br>
				<div class="input-group">
                    <asp:TextBox ID="txtpassword" runat="server" class="form-control"  
                        placeholder="Password" TextMode="Password"></asp:TextBox>
      				<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
    			</div>	
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtpassword" ErrorMessage="Password are Required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br><br>
    			<div class="input-group">
                    <asp:TextBox ID="txtrepassword" runat="server" class="form-control" 
                        placeholder="Re-Password" TextMode="Password"></asp:TextBox>
      				<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
    			</div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtrepassword" ErrorMessage="RE-Password are Required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtpassword" ControlToValidate="txtrepassword" 
                    ErrorMessage="Re-Password must be same" ForeColor="Red"></asp:CompareValidator>
                <br>
    			<div class="input-group">
                    <asp:TextBox ID="txtfname" runat="server" class="form-control" placeholder="First Name"></asp:TextBox>
      				<span class="input-group-addon">First Name</span>
    			</div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtfname" ErrorMessage="First Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br><br>
    			<div class="input-group">
                    <asp:TextBox ID="txtlname" runat="server" class="form-control" placeholder="Last Name"></asp:TextBox>
      				<span class="input-group-addon">Last Name</span>
    			</div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtlname" ErrorMessage="Last Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br><br>
    			<div class="input-group">
                    <asp:TextBox ID="txtdob" runat="server" class="form-control" 
                        placeholder="Birth of Date" TextMode="Date"></asp:TextBox>
      				<span class="input-group-addon" >Birth Of Date</span>
    			</div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtdob" ErrorMessage="Date of Birth Required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br><br>
    			<div class="input-group">
                    <asp:TextBox ID="txtnumber" runat="server" class="form-control"  
                        placeholder="Mobile"></asp:TextBox>
      				<span class="input-group-addon">Mobile</span>
    			</div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtnumber" ErrorMessage="Mobile Number Required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtnumber" ErrorMessage="Number Must be 10 Digits" 
                    ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                <br>
    			<div class="input-group">
                    <asp:TextBox ID="txtemail" runat="server" class="form-control" 
                        placeholder="Email" TextMode="Email"></asp:TextBox>
      				<span class="input-group-addon">Email</span>
    			</div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Email ID Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                <br>
            <asp:Button ID="btn_submit" runat="server" Text="Submit" class="btn btn-success"/>
            <asp:Button ID="btn_reset" runat="server" Text="Reset" class="btn btn-danger" />
			</form>
		</div>
</asp:Content>
