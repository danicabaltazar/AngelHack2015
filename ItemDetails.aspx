<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="ItemDetails.aspx.cs" Inherits="ItemDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    <asp:Literal ID="ltName" runat="server"></asp:Literal> (<asp:Literal ID="ltID" runat="server"></asp:Literal>)
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <form id="Form1" runat="server" class="form-horizontal">
        <div class="col-lg-6">
            <asp:Image ID="imgItems" runat="server" class="img-responsive" />
        </div>


        <div class="col-lg-6">
           <p>Category: <asp:Literal ID="ltCategory" runat="server"></asp:Literal></p>
           <p>Description: <br /><br /><asp:Literal ID="ltDesc" runat="server"></asp:Literal></p>
           <h3>Php <asp:Literal ID="ltPrice" runat="server"></asp:Literal></h3>
           <div class="input group col-lg-4">
                <span class="input-group-btn">
                    <asp:LinkButton ID="btnAdd" runat="server" class="btn btn-success" 
                   onclick="btnAdd_Click">
                        <i class="fa fa-heart"></i> Take This
                    </asp:LinkButton>
                </span>
           </div> 
        </div>
    </form>
</asp:Content>

