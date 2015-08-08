using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(Helper.GetCon());

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //bool IsExisting(string email)
    //{
    //    bool existing = true;
    //    con.Open();
    //    SqlCommand com = new SqlCommand();
    //    com.Connection = con;
    //    com.CommandText = "SELECT Email FROM User " +
    //        "WHERE Email=@Email";
    //    com.Parameters.AddWithValue("@Email", email);
    //    SqlDataReader dr = com.ExecuteReader();
    //    if (dr.HasRows) //email is existing
    //        existing = true;
    //    else //not existing
    //        existing = false;
    //    con.Close();
    //    return existing;
    //}

    protected void btnRegister_Click(object sender, EventArgs e)
    //{
    //    bool emailExisting = IsExisting(txtEmail.Text);

    //    if (!emailExisting)
    {
        con.Open();
        SqlCommand com = new SqlCommand();
        com.Connection = con;

        string sql = "";
        sql += " INSERT INTO [AngelHack].[dbo].[User] ";
        sql += " (Last_Name, First_Name, Username, Password, Email, Birthday)";
        sql += " VALUES (@Last_Name, @First_Name, @Username, @Password, @Email, @Birthday)";

        com.CommandText = sql;
        com.Parameters.AddWithValue("@Last_Name", txtLN.Text);
        com.Parameters.AddWithValue("@First_Name", txtFN.Text);
        com.Parameters.AddWithValue("@Username", txtUsername.Text); //Hash value na ang pass
        com.Parameters.AddWithValue("@Password", txtPassword.Text);
        com.Parameters.AddWithValue("@Email", txtEmail.Text);
        com.Parameters.AddWithValue("@Birthday", txtBirthday.Text);
        com.ExecuteNonQuery();
        con.Close();
        //string message = "Hello, " + txtFN.Text + " " + txtLN.Text + "!<br/><br/>" +
        //    "Thank you for signing up. These are your credentials: <br/><br/>" +
        //    "Email Address: <br/><br/>" + txtEmail.Text + "</strong><br/>" +
        //    "Password: <strong>" + txtPassword.Text + "</strong><br/><br/>" +
        //    "Regards, <br/>" +
        //    "The Administrator";
        //Helper.SendEmail(txtEmail.Text, "Account Registration from My Shop", message);

        Response.Redirect("Login.aspx");
    }
    //    else
    //    {
    //        error.Visible = true;
    //    }
    //}
}