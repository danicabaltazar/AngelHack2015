<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="ViewFriends.aspx.cs" Inherits="ViewFriends" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    My Friends <i class="fa fa-users"></i>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <form runat="server" class="form-horizontal">

        <div class="col-lg-12">
            <h2 class="text-center"> <i class="fa fa-user"> John Doe <asp:Button runat="server" Text="View Profile" class="btn btn-default"/></i></h2>
            
        </div>

    </form>
</asp:Content>

