<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="ItemDetails.aspx.cs" Inherits="ItemDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    <asp:Literal ID="ltName" runat="server"></asp:Literal> (<asp:Literal ID="ltID" runat="server"></asp:Literal>)
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <form id="Form1" runat="server" class="form-horizontal">
        <div class="col-lg-6">
            <asp:Image ID="imgItems" runat="server" class="img-responsive" />
        </div>


        <div class="col-lg-6 pull-left">
           <p>Category: <asp:Literal ID="ltCategory" runat="server"></asp:Literal></p>
           <p>Description:<br /><asp:Literal ID="ltDesc" runat="server"></asp:Literal></p><br />
           <h3>Php <asp:Literal ID="ltPrice" runat="server"></asp:Literal></h3><br />
           <div class="form-group col-lg-4">
                <p>Add a comment here:</p>
                <asp:TextBox ID="txtComment" runat="server" class="input-lg"></asp:TextBox><br /><br />
                <span class="input-group-btn">
                    <asp:LinkButton ID="btnAdd" runat="server" class="btn btn-danger"
                   onclick="btnAdd_Click">
                        <i class="fa fa-heart"></i> Grant this!
                    </asp:LinkButton>
                </span>
           </div> 
        </div>
    </form>
</asp:Content>

