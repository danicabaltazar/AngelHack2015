<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="Wishlist.aspx.cs" Inherits="Wishlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    <h2>My Wishlists</h2>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">

   
        <center><a href="AddWishlist.aspx" class="btn btn-system btn btn-md">Add a wishlist</a></center>
         <br />
       
      
        <asp:ListView ID="lvWishlist" runat="server"> 
                
                <ItemTemplate>
                <div class="col-lg-2">
                <div class="container">
                    
                    <br />
                        <div class="thumbnail" style="height: 200px; width: 120px">
                            <a href='WishlistDetails.aspx?ID=<%# Eval("Wishlist_ID") %>'><h3 class="text-center"><%# Eval("Wishlist_Name") %></h3></a>

                            <div class="caption">
                            <p>Description: <%# Eval("Wishlist_Description").ToString().Length >= 50 ? 
                                   string.Concat(Eval("Wishlist_Description").ToString().Substring(0, 50), 
                                   "<small><a href='WishlistDetails.aspx?ID=", 
                                   Eval("Wishlist_ID"), "'> see more...</a></small>")  : Eval("Wishlist_Description") %></p>
                            </div>
                           
                        </div>
                    </div>
                    </div>
                </ItemTemplate>
            </asp:ListView>

    


</asp:Content>

