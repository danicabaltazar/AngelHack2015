using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class WishlistDetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(Helper.GetCon());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["ID"] != null) //product is selected
        {
            int Wishlist_ID = 0; //initial variable
            bool validWishlist = int.TryParse(Request.QueryString["ID"].ToString(),
                out Wishlist_ID);

            if (validWishlist)
            {
                GetInfo(Wishlist_ID);
            }

            else
                Response.Redirect("Wishlist.aspx");
        }

        else //no product is selected
            Response.Redirect("Wishlist.aspx");
    }

    void GetInfo(int ID)
    {
        con.Open();
        SqlCommand com = new SqlCommand();
        com.Connection = con;
        com.CommandText = "SELECT Wishlist.Wishlist_ID, Wishlist.Wishlist_Name, Wishlist.Wishlist_Description FROM Wishlist " +
            "WHERE Wishlist_ID=@Wishlist_ID";
        com.Parameters.AddWithValue("@Wishlist_ID", ID);

        SqlDataReader dr = com.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                ltName.Text = dr["Wishlist_Name"].ToString();
                ltDescription.Text = dr["Wishlist_Description"].ToString();
            }

            con.Close();
        }
        else
        {
            con.Close();
            Response.Redirect("Wishlist.aspx");
        }
    }
}