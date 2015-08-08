<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="WishlistDetails.aspx.cs" Inherits="WishlistDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    <h2><asp:Literal ID="ltName" runat="server"></asp:Literal> </h2><br />
    <p>Description: <asp:Literal ID="ltDescription" runat="server"></asp:Literal></p>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
</asp:Content>

