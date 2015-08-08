<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="WishlistDetails.aspx.cs" Inherits="WishlistDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    <h2><asp:Literal ID="ltName" runat="server"></asp:Literal> </h2><br />
    <p>Description: <asp:Literal ID="ltDescription" runat="server"></asp:Literal></p>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
     <form runat="server" class="form-horizontal">

        <div class="col-lg-9">
            <asp:ListView ID="lvItems" runat="server">
                <ItemTemplate>
                    <div class="col-lg-3">

                        <h2>Items</h2>
                        <a href='AddItem.aspx?ID=<%# Eval("Wishlist_ID") %>'>Add Items</a>

                    </div>

                    <div class="col-lg-4">
                        <div class="thumbnail" style="height: 300px;">
                            <a href='ItemDetails.aspx?ID=<%# Eval("Wishlist_ID") %>'><img src='img/items/<%# Eval("Item_Image") %>' /></a>

                            <div class="caption">
                                <h3><%# Eval("Item_Name") %></h3>
                                <%--<p><%# Eval("Description").ToString().Length >= 100 ? 
                                   string.Concat(Eval("Description").ToString().Substring(0, 100), 
                                   "<small><a href='ProductDetails.aspx?ID=", 
                                   Eval("ProductID"), "'> see more...</a></small>")  : Eval("Description") %></p>--%>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:ListView>
        </div>

    </form>
</asp:Content>

