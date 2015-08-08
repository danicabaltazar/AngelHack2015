using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Wishlist : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(Helper.GetCon());

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    void GetInfo()
    {
        con.Open();
        SqlCommand com = new SqlCommand();
        com.Connection = con;
        com.CommandText = "SELECT Wishlist.Wishlist_ID, Wishlist.Wishlist_Name, Wishlist.Wishlist_Description FROM Wishlist";

        SqlDataAdapter da = new SqlDataAdapter(com);
        DataSet ds = new DataSet();
        da.Fill(ds, "Wishlist");

        lvWishlist.DataSource = ds;
        lvWishlist.DataBind();
        con.Close();

    }
}