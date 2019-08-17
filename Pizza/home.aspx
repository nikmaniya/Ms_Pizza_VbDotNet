<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/User.Master" CodeBehind="home.aspx.vb" Inherits="Pizza.WebForm1"%>
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
		
<br>
<br>
<center><h1>My Home gallary</h1></center>
<br>
<div id="outer_slide">
             <div class="slidebox">
             <center>   <img src="image/11.jpg" width:100% />
                <img src="image/12.jpg"  width:100%/>
                <img src="image/13.jpg"  width:100%/>
				<img src="image/14.jpg"  width:100%/>
				<img src="image/15.jpg"  width:100%/>
            </center>   
             </div>
		</div>
		<center><h1 color="white">------- TO DAY OFFERS -------</h1></center>
		<hr>
		<div class="img_off">
			
			<center><img src="image/off_1.png" style="border-color:2px white"/>
			<img src="image/off_3.jpg"/>
		</center></div>
</asp:Content>