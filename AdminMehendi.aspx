<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminMehendi.aspx.cs" Inherits="AdminMehendi" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script src="http://code.jquery.com/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function ImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=Image1.ClientID%>').prop('src', e.target.result)
                      .width(200)
                        .height(350)
                };
                reader.readAsDataURL(input.files[0]);
            }
        }

    </script>
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

        .style1
        {
            height: 55px;
        }

    </style>
</head>
<body>
    <form id="form2" runat="server">
    <div>
<div>
<div>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
        <a href="About_Us.aspx"><asp:Label ID="Label1" runat="server" 
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
    --------------------------------------------------------------------------------------------------------------------------------------------</h4>
</div>
</div>


    <br/>
    <br/>
    <div>
    <table align="center" class="style1" bgcolor="White">
        <tr  style="font-family:Arial, Helvetica, sans-serif; font-size: x-large; font-weight: bold; font-variant: normal; color:#F39C12">
            <td class="style1" style="border-color: #F39C12; font-family: Aparajita;" 
                align="center">
                Enter Your Image Id</td>
            <td class="style1" style="border-color: #F39C12" align="center">
                &nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="26px" 
                    Width="329px" BorderColor="#F39C12" BorderStyle="Solid"></asp:TextBox>
            </td>
        </tr>
        <tr style="font-family: 'Californian FB'; font-size: x-large; font-weight: bold; font-variant: normal; color:#F39C12">
            <td class="style2" style="border-color: #F39C12; font-family: Aparajita;">
                Upload Jpg Image</td>
            <td style="border-color: #F39C12">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:FileUpload ID="FileUpload1" runat="server" onchange="ImagePreview(this);" 
                    Font-Bold="True" ForeColor="#F39C12" Height="33px" />
            </td>
        </tr>
        <tr>
            <td class="style2" style="border-color: #F39C12">
                <asp:Button ID="Button1" runat="server" Height="43px" onclick="Button1_Click" 
                    Text="Upload And Save" Width="210px" BackColor="White" Font-Bold="True" 
                    ForeColor="#F39C12" BorderColor="#F39C12" BorderStyle="Solid" />
            </td>
            <td style="border-color: #F39C12">
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Height="43px" onclick="Button2_Click" 
                    Text="Mehendi Gallery" Width="210px" BackColor="White" Font-Bold="True" 
                    ForeColor="#F39C12" BorderColor="#F39C12" BorderStyle="Solid" />
            </td>
        </tr>
    </table>
</div>
</div>
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div align="center">
    <asp:Image ID="Image1" runat="server" ImageAlign="Middle" Height="250px" 
            Width="300px" />
    </div>
    &nbsp;
    <br />

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="#F39C12"></asp:Label>

    </div>
    <p>
        &nbsp;</p>
    </form>
</body>
</html>
