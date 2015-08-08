<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="AddItem.aspx.cs" Inherits="AddItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Add items to your wishlist <i class="fa fa-plus-circle"></i>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <form runat="server" class="form-horizontal">

       <h2>Add details below: </h2>
        <br />

        <div class="col-lg-6">

            <div class="form-group">
                <label class="control-label col-lg-5">Item Name</label>
                <div class="col-lg-7">
            
                    <asp:Textbox ID="txtItemName" runat="server" class="form-control" />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-5">Image</label>
                    <div class="col-lg-7">
                        <asp:FileUpload ID="fuImage" runat="server" class="form-control" required></asp:FileUpload>
                    </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-5">Category</label>
                <div class="col-lg-7">
            
                    <asp:DropDownList ID="ddlCategory" runat="server" class="form-control">
                        <asp:ListItem>Food</asp:ListItem>
                        <asp:ListItem>Footwear</asp:ListItem>
                        <asp:ListItem>Clothes</asp:ListItem>
                        <asp:ListItem>Service</asp:ListItem>
                        <asp:ListItem>Electronics</asp:ListItem>
                        <asp:ListItem>Beauty</asp:ListItem>
                        </asp:DropDownList>
                </div>
            </div>

            </div>

        <div class="col-lg-6">

            <div class="form-group">
                <label class="control-label col-lg-5">Description</label>
                <div class="col-lg-7">
            
                    <asp:Textbox ID="txtDescription" runat="server" class="form-control" />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-5">Price</label>
                <div class="col-lg-7">
            
                    <asp:Textbox ID="txtPrice" runat="server" class="form-control" />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-5">Wishlist Name</label>
                <div class="col-lg-7">
            
                    <asp:DropDownList ID="ddlWishlistName" runat="server" class="form-horizontal">

                        </asp:DropDownList>
                </div>
            </div>


            <div class="form-group">
             <div class="col-lg-offset-9 col-lg-3">
             <asp:LinkButton ID="btnAddItem" runat="server" class="btn btn-success" Text="Add an Item" OnClick="btnAddItem_Click">
                 <i class="fa fa-plus"></i> Add an Item
                 </asp:LinkButton>
              </div>
                 
         </div>

        </div>

         


    </form>
</asp:Content>

