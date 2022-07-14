using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Text;
using System.Net.Mail;
using System.Net;

public partial class Appointment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String query = "insert into Appointment(FirstName,LastName,Emailid,Mobileno,Bride,Groom,City,State,Date,Time,Events,Message) values (' " + TextBox1.Text + " ',' " + TextBox2.Text + " ',' " + TextBox3.Text + " ',' " + TextBox4.Text + " ',' " + TextBox5.Text + " ',' " + TextBox6.Text + " ',' " + TextBox7.Text +" ',' " + TextBox8.Text +" ', ' " + TextBox9.Text +" ',' " + DropDownList2.Text + " ',' " + CheckBoxList1.Text + " ',' " + TextBox10.Text + " ')";
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\aayus\\Documents\\Visual Studio 2010\\WebSites\\MNP\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("loveknotwith@gmail.com", "Eventproject");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Hello"  + TextBox1.Text + " Welcome To Knot With Love";
            msg.Body = "You Have successfully booked an Appointment at  : " + DropDownList2.Text + "\n and For the evnts : "+ CheckBoxList1.Text + "\n.  \n We will Contact You Shortly. \n\n\n  Regards, \n From Knot With Love";
            string toaddress = TextBox3.Text;
            msg.To.Add(toaddress);
            string fromaddress = "Knot with love <loveknotwith@gmail.com>";
            msg.From = new MailAddress(fromaddress);
            try
            {
                smtp.Send(msg);
                Label2.Text = "You Successfully Booked an Appointment";
                TextBox1.Text = "";
                TextBox3.Text = "";
            }
            catch (Exception ex)
            {
                Response.Write("Could not send email" + ex.Message);
            }
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            DropDownList2.Text="";
            CheckBoxList1.Text="";
            TextBox10.Text = "";
            
        }
    }
}
    
