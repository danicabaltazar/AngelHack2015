using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ItemDetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(Helper.GetCon());

    protected void Page_Load(object sender, EventArgs e)
    {
         if (Request.QueryString["ID"] != null) //product is selected
        {
            int productID = 0; //initial variable
            bool validProduct = int.TryParse(Request.QueryString["ID"].ToString(),
                out productID);

            if (validProduct)
            {
                GetInfo(productID);
            }

            else
                Response.Redirect("~/ItemDetails.aspx?ID=");
        }

        else //no product is selected
             Response.Redirect("~/ItemDetails.aspx?ID=");
    }


    void GetInfo(int ID)
    {
        con.Open();
        SqlCommand com = new SqlCommand();
        com.Connection = con;
        com.CommandText = "SELECT Items.Item_ID, Items.Item_Name, Items.Item_Image, Items.Item_Category, Items.Item_Description, " +
            "Items.Item_Prize FROM Items WHERE Items.Item_ID=@Item_ID";
        com.Parameters.AddWithValue("@Item_ID", ID);

        SqlDataReader dr = com.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                ltName.Text = dr["Item_Name"].ToString();
                ltID.Text = dr["Item_ID"].ToString();
                imgItems.ImageUrl = "~/images/items/" + dr["Item_Image"].ToString();
                ltCategory.Text = dr["Item_Category"].ToString();
                ltDesc.Text = dr["Item_Description"].ToString().Replace(Environment.NewLine, "<br/>");
                double price = double.Parse(dr["Item_Prize"].ToString());
                ltPrice.Text = price.ToString("#,###.00");

            }

            con.Close();
        }
        else
        {
            con.Close();
            Response.Redirect("Items.aspx");
        }

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Response.Redirect("Greeting.aspx");
        //Response.Redirect("~/WishlistDetails.aspx?ID=" +
        //    Request.QueryString["ID"].ToString());
    }
}
