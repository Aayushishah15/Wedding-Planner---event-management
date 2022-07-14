using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Default2 : System.Web.UI.Page

{
    static int videoid;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
        string query = "Insert Into imageupload (id,name,image)('@id" + TextBox2.Text + "',@pic)";
        SqlCommand cmd = new SqlCommand(query);
        cmd.Parameters.AddWithValue("@pic", imagecode);
        string path = Path.GetFileName(FileUpload1.FileName);
        path = path.Replace(" ", "");
        String filename1 = path;
        FileUpload1.SaveAs(Server.MapPath("~/Images/") + path);
        saveimagedata(id, TextBox2.Text, image);
        Label7.Text = "Image Has Been Saved Successfully with Image ID " + TextBox2.Text;
        TextBox2.Text = "";
    }


 private void saveimagedata(int imageid1, String videoname1, String videolink1)
    {
        String query = "insert into Bharatnatyam(videoid,videoname,videolink) values(" + videoid1 + ",'" + videoname1 + "','" + videolink1 + "')";
        SqlConnection scon = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Hiren\\Desktop\\Demoproject\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");
        scon.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = scon;
        cmd.ExecuteNonQuery();

    }
    public void getvideoid()
    {

        SqlConnection scon = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Hiren\\Desktop\\Demoproject\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True"); ;
        String myquery = "select videoid from Bharatnatyam";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        scon.Close();
        if (ds.Tables[0].Rows.Count < 1)
        {
            videoid = 1001;

        }
        else
        {



            SqlConnection scon1 = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Hiren\\Desktop\\Demoproject\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");
            String myquery1 = "select max(videoid) from Bharatnatyam";
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = myquery1;
            cmd1.Connection = scon1;
            SqlDataAdapter da1 = new SqlDataAdapter();
            da1.SelectCommand = cmd1;
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            videoid = Convert.ToInt16(ds1.Tables[0].Rows[0][0].ToString()) + 1;

            scon1.Close();
        }

    }

SqlConnection scon = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\aayus\\Documents\\Visual Studio 2010\\WebSites\\MNP\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");
        scon.Open();
        cmd.Connection = scon;
        cmd.ExecuteNonQuery();