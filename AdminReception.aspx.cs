using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class AdminReception : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\aayus\\Documents\\Visual Studio 2010\\WebSites\\MNP\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs((Server.MapPath("~/Images/") + FileUpload1.FileName));
            Label7.Text = "File Upload" + FileUpload1.FileName;
            Image1.ImageUrl = "Images/" + FileUpload1.FileName;
        }


        SqlCommand cmd = new SqlCommand("insert into Reception(name,image)Values(@name,@image)", cn);
        cmd.Parameters.AddWithValue("@name", TextBox2.Text);
        cmd.Parameters.AddWithValue("@image", Image1.ImageUrl);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Reception.aspx");
    }
}