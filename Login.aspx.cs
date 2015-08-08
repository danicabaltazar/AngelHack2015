using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(Helper.GetCon());

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand com = new SqlCommand();
        com.Connection = con;
        com.CommandText = "SELECT User_ID FROM Users " +
                            "WHERE Username=@Username AND Password=@Password";
        com.Parameters.AddWithValue("@Username", txtUsername.Text);
        com.Parameters.AddWithValue("@Password", txtPassword.Text);

        SqlDataReader dr = com.ExecuteReader();
        if (dr.HasRows) //if Email and Password Matches
        {
            while (dr.Read())
            {
                Session["userid"] = dr["User_ID"].ToString();
            }
            con.Close();
            Response.Redirect("Wishlist.aspx");
        }
        else //if Email and Password does not match
        {
            con.Close();
            error.Visible = true;
        }
    }
}