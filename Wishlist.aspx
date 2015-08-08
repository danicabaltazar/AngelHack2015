<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="Wishlist.aspx.cs" Inherits="Wishlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    <h2>My Wishlists</h2>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">

    <div class="col-lg-4">
         
    </div>

    <div class="col-lg-4">
        <center><a href="AddWishlist.aspx" class="btn btn-success btn btn-md">Add a wishlist</a></center>
         <br />
        <h5><center><i class="fa fa-users"> Friends: 0 </i></center></h5>
       

        <asp:ListView ID="lvWishlist" runat="server"> 
                
                <ItemTemplate>
                    <div class="col-lg-5">
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
                </ItemTemplate>
            </asp:ListView>

    </div>

    <div class="col-lg-4">

    </div>

</asp:Content>

