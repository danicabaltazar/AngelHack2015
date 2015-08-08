<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="Wishlist.aspx.cs" Inherits="Wishlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    My Wishlists
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">

    <div class="col-lg-6"> <%--Side Bar--%>
         <a href="AddWishlist.aspx" class="btn btn-success btn btn-md">Add a wishlist</a>
    </div>

</asp:Content>

