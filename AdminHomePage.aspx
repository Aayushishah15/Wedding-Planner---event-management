<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminHomePage.aspx.cs" Inherits="AdminHomePage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body, html {
  height: 100%;
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

.bg-image {
  /* Full height */
  height: 100%;
  opacity : 60%;
 
  
  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

/* Images used */
.img1 { background-image: url("maxresdefault.jpg"); }
.img2 { background-image: url("digital-still-photography-500x500.jpg"); }
.img3 { background-image: url("hindu-marriage-the-lightsmiths-lead-image.jpg"); }
.img4 { background-image: url("368ae69df4b32b00208ab4eae1138373.jpg"); }
.img5 { background-image: url("Screenshot_20191009-065825_Chrome.jpg"); }
.img6 { background-image: url("images.jpg"); }

/* Position text in the middle of the page/image */
.bg-text {
  background-color: #F5B041; /* Fallback color */
  background-color: #F5B041; /* Black w/opacity/see-through */
  color: white;
  font-family: Lucida Handwriting;
  font-size: 50px;
  border: 10px solid #f1f1f1;
  position: fixed;
  top: 28%;
  left: 18%;
  transform: translate(-50%, -50%);
  z-index: 2;
  height: 300px;
  width: 400px;
  padding: 10px;
  text-align: center;
}

.bg-subheading {
   text-align: center; 
   font-family: High Tower Text; 
   font-size: 25px;
   font-color: #F39C12; 
}

.overlay {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  background-color: white;
  border: 10px solid #F5B041;
  overflow: hidden;
  width: 100%;
  height: 100%;
  transform: scale(0);
  transition: .3s ease;
}

.bg-text:hover .overlay {
  transform: scale(1);
}

.text {
  color: #F39C12;
  font-size: 20px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  text-align: center;
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

</style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
<div class="bg-image img4"><asp:Image ID="Image7" runat="server" 
           ImageUrl="~/Pictures/images4.jpg" Height="650px" 
            Width="100%" /></div>
<div class="bg-image img1"><asp:Image ID="Image12" runat="server" 
           ImageUrl="~/Pictures/images15.jpg" Height="650px" 
            Width="100%" /></div>
<div class="bg-image img2"><asp:Image ID="Image13" runat="server" 
           ImageUrl="~/Pictures/images16.jpg" Height="650px" 
            Width="100%" /></div>
<div class="bg-image img3"><asp:Image ID="Image14" runat="server" 
           ImageUrl="~/Pictures/images13.jpg" Height="650px" 
            Width="100%" /></div>
<div class="bg-image img5"><asp:Image ID="Image5" runat="server" 
           ImageUrl="~/Pictures/images14.jpg" Height="650px" 
            Width="100%" /></div>
<div class="bg-image img6"><asp:Image ID="Image6" runat="server" 
           ImageUrl="~/Pictures/images9.jpg" Height="650px" 
            Width="100%" /></div>

<div class="bg-text">Knot<br>With<br>Love<br>
   <div class="bg-subheading">Wedding Planners</div>
   <div class="overlay">
       <div class="text">
            <a href="About.aspx">About Us</a><br>
            <a href="Services.aspx">Services</a><br>
            <a href="AdminDestination.aspx">Destination</a><br>
            <a href="AdminGallery.aspx">Gallery</a><br>
            <a href ="Report.aspx">Report</a><br>
            
            
       </div>
   </div>
</div>

    </div>
    </form>
</body>
</html>
