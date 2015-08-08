using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AddItem : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(Helper.GetCon());
    protected void Page_Load(object sender, EventArgs e)
    {
         if (!IsPostBack)
         {
             GetNames();
         }

    }

    protected void btnAddItem_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand com = new SqlCommand();
        com.Connection = con;
        com.CommandText = "INSERT INTO Items VALUES (@Item_Name, @Item_Image, @Item_Category, @Item_Description, @Item_Price, @Wishlist_Name)";
        com.Parameters.AddWithValue("@Item_Name", txtItemName.Text);
        com.Parameters.AddWithValue("@Item_Image", fuImage.FileName);
        fuImage.SaveAs(Server.MapPath("~/images/items/" + fuImage.FileName));
        com.Parameters.AddWithValue("@Item_Category", ddlCategory.SelectedValue);
        com.Parameters.AddWithValue("@Item_Description", txtDescription.Text);
        com.Parameters.AddWithValue("@Item_Price", txtPrice.Text);
        com.Parameters.AddWithValue("@Wishlist_Name", ddlWishlistName.SelectedValue);
        com.ExecuteNonQuery();

        con.Close();
        Response.Redirect("WishlistDetails.aspx?ID=" + Request.QueryString["ID"]);
    }

    void GetNames()
    {
        con.Open();

        SqlCommand com = new SqlCommand();
        com.Connection = con;
        com.CommandText = "SELECT Wishlist_ID, Wishlist_Name FROM Wishlist";

        SqlDataReader dr = com.ExecuteReader();

        ddlWishlistName.DataSource = dr;
        ddlWishlistName.DataTextField = "Wishlist_Name";
        ddlWishlistName.DataValueField = "Wishlist_ID";
        ddlWishlistName.DataBind();

        con.Close();
    }
}