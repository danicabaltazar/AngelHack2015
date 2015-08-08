<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="AddWishlist.aspx.cs" Inherits="AddWishlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    <div class="col-lg-3"> Add a Wishlist</div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <form ID="Form1" runat="server" class="form-horizontal">

        <br />
         <h2>Please fill in the details needed.</h2>
         <br />

         <div class="col-lg-6">

             <div class="form-group">
                <label class="control-label col-lg-5">Wishlist Name</label>
                <div class="col-lg-7">
            
                    <asp:Textbox ID="txtName" runat="server" class="form-control" />
                </div>
            </div>

             <div class="form-group">
                <label class="control-label col-lg-5">Description</label>
                <div class="col-lg-7">
            
                    <asp:Textbox ID="txtDesc" runat="server" class="form-control" />
                </div>
            </div>

         </div>

         <div class="form-group">
             <div class="col-lg-offset-5 col-lg-7">
             <asp:LinkButton ID="btnAddWishlist" runat="server" class="btn btn-success" Text="Add a Wishlist">
                 <i class="fa fa-thumbs-up"></i> Add
                 </asp:LinkButton>
              </div>
                 
         </div>

         </form>
</asp:Content>

