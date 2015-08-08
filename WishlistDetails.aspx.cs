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
        com.CommandText = "SELECT Items.Item_ID, Items.Item_Name, Items.Item_Image, Wishlist.Wishlist_ID FROM Items " +
            "INNER JOIN Wishlist ON Items.Wishlist_ID = Wishlist.Wishlist_ID WHERE Items.Wishlist_ID=@Wishlist_ID";

        com.Parameters.AddWithValue("@Wishlist_ID", ID);

        SqlDataAdapter da = new SqlDataAdapter(com);
        DataSet ds = new DataSet();
        da.Fill(ds, "Products");

        lvItems.DataSource = ds;
        lvItems.DataBind();
        con.Close();
    }
}