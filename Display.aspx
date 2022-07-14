<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Display.aspx.cs" Inherits="Display" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
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
  font-size: 30px; 
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
  font-size: 25px;
  padding: 16px 32px;
}

        .row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  padding: 0 4px;
}

/* Create four equal columns that sits next to each other */
.column {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
  max-width: 25%;
  padding: 0 4px;
}

.column img {
  margin-top: 0px;
  vertical-align: middle;
  }

/* Responsive layout - makes a two column-layout instead of four columns */
@media screen and (max-width: 800px) {
  .column {
    -ms-flex: 50%;
    flex: 50%;
    max-width: 50%;
  }
}

/* Responsive layout - makes the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .column {
    -ms-flex: 100%;
    flex: 100%;
    max-width: 100%;
  }
}
    .style1
    {
        width: 41%;
        height: 228px;
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
  <a href="Home_Page.aspx">
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
        <a href="Destination.aspx"><asp:Label ID="Label3" runat="server" 
        Text="Destination" Font-Size="Large"></asp:Label></a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="Gallery.aspx"><asp:Label ID="Label4" runat="server" Text="Gallery" 
        Font-Size="Large"></asp:Label></a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="Enquiry.aspx"><asp:Label ID="Label5" runat="server" Text="Review" 
        Font-Size="Large"></asp:Label></a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="Contact_Us.aspx">
    <asp:Label ID="Label6" runat="server" 
        Text="Contact Us" Font-Size="Large"></asp:Label></a>
        </div>
<h4 style="font-size: xx-large; font-weight: bolder; font-style: normal; color: #F39C12; padding-top: -10px; 
    padding-bottom: -10px; margin-top: -10px; margin-bottom: -10px;">
    ---------------------------------------------------------------------------------------------------------------------------------------------
    <asp:DataList 
        ID="DataList1" runat="server" CellPadding="0" DataSourceID="SqlDataSource1" 
        Height="16px" RepeatColumns="4" RepeatDirection="Horizontal" 
        Width="1016px">
        <ItemTemplate>
        
            <table class="style1" table BorderColor="#F39C12" border="1">
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="240px" ImageAlign="Middle" 
                            ImageUrl='<%# Eval("image") %>' Width="400px" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Image_upload1]"></asp:SqlDataSource>
    </h4>
</div>
</div>

    <br/>
   
    </form>
</body>
</html>
