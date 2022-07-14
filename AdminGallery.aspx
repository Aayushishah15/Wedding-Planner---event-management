<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminGallery.aspx.cs" Inherits="AdminGallery" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
}

a:link {
  text-decoration: none;
  color: #F39C12;
}

a:visited {
  text-decoration: none;
  color: #F39C12;
}

a:hover {
  font-weight: bold;
}

a:active {
  font-weight: bold;
}

.heading {
  font-family: Lucida Handwriting;
  color: #F39C12;
  font-size: 30px;
}

.subheading {
  font-family: High Tower Text;
  color: #F39C12;
  font-size: 25px; 
} 

h1 {
 align: centre;
 font-family: algerian;
 font-size: 40px;
 color: #F39C12;
}

.container {
  position: relative;
  width: 400px;
}

.image {
  opacity: 1;
  display: block;
  width: 100%;
  height: auto;
  transition: .5s ease;
  backface-visibility: hidden;
}

.middle {
  transition: .5s ease;
  opacity: 0;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  text-align: center;
}

.container:hover .image {
  opacity: 0.3;
}

.container:hover .middle {
  opacity: 1;
}

.text {
  background-color: #F39C12;
  color: white;
  font-size: 16px;
  padding: 16px 32px;
}

</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
<div>
<div>
  <a href="AdminHomePage.aspx">
    <div class="heading">&nbsp;Knot<br>&nbsp;&nbsp; With<br>&nbsp;&nbsp;&nbsp; Love</div>
    <div class="subheading">Wedding Planners
  </a>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="About.aspx"><asp:Label ID="Label1" runat="server" 
        Text="About Us" Font-Size="Large"></asp:Label></a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="Services.aspx"><asp:Label ID="Label2" runat="server" 
        Text="Services" Font-Size="Large"></asp:Label></a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="AdminDestination.aspx"><asp:Label ID="Label3" runat="server" 
        Text="Destination" Font-Size="Large"></asp:Label></a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="AdminGallery.aspx"><asp:Label ID="Label4" runat="server" Text="Gallery" 
        Font-Size="Large"></asp:Label></a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        </div>
<h4 style="font-size: xx-large; font-weight: bolder; font-style: normal; color: #F39C12; padding-top: -10px; 
    padding-bottom: -10px; margin-top: -10px; margin-bottom: -10px;">
    -----------------------------------------------------------------------------------------------------------------------------</h4>
</div>
</div>
        <h1 align="center" 
            style="font-size: 50px; font-family: Castellar; padding-top: -10px; padding-bottom: -10px; 
            margin-top: -10px; margin-bottom: -10px;">Gallery</h1>

<table cellpadding="15px" cellspacing="15px" align="center">
<tr>
<td>
<a href="AdminMehendi.aspx">
<div class="container">
  <img src="Pictures/mehendi.jpg" alt="Avatar" class="image" style="width:400px; height: 400px;">
  <div class="middle">
    <div class="text">Mehendi</div>
  </div>
</div>
</a>
</td>
<td>
<a href="AdminHaldi.aspx">
<div class="container">
  <img src="Pictures/haldi.jpg" alt="Avatar" class="image" style="width:400px; height: 400px;">
  <div class="middle">
    <div class="text">Haldi</div>
  </div>
</div>
</a>
</td>
<td>
<a href="AdminBachelors.aspx">
<div class="container">
  <img src="Pictures/bachelors.jpg" alt="Avatar" class="image" style="width:400px; height: 400px;">
  <div class="middle">
    <div class="text">Bachelors Party</div>
  </div>
</div>
</a>
</td>
</tr>
<tr>
<td>
<a href="AdminCocktail.aspx">
<div class="container">
  <img src="Pictures/pool.jpg" alt="Avatar" class="image" style="width:400px; height: 400px;">
  <div class="middle">
    <div class="text">Cocktail / Pool Party</div>
  </div>
</div>
</a>
</td>
<td>
<a href="AdminSangeet.aspx">
<div class="container">
  <img src="Pictures/Sangeet.jpg" alt="Avatar" class="image" style="width:400px; height: 400px;">
  <div class="middle">
    <div class="text">Sangeet</div>
  </div>
</div>
</a>
</td>
<td>
<a href="AdminPhere.aspx">
<div class="container">
  <img src="Pictures/Pheras.jpeg" alt="Avatar" class="image" style="width:400px; height: 400px;">
  <div class="middle">
    <div class="text">Sath Phere</div>
  </div>
</div>
</a>
</td>
</tr>
<tr>
<td>
</td>
<td>
<a href="AdminReception.aspx">
<div class="container">
  <img src="Pictures/Reception.jpg" alt="Avatar" class="image" style="width:400px; height: 400px;">
  <div class="middle">
    <div class="text">Reception</div>
  </div>
</div>
</a>
</td>
<td>
</td>
</tr>
</table>
    </div>
    </form>
</body>
</html>
