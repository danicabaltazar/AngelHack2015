<%@ Page Title="" Language="C#" MasterPageFile="~/NoNavbar.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    <div class="col-lg-3"></div>
    <div class="col-lg-3"><h1>Login</h1></div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
<br />
    <form id="Form1" runat="server" class="form-horizontal">

        <div class="col-lg-6">
            <div id="error" runat="server" class="alert alert-danger" visible="false">
                Username or Password is Incorrect!
            </div>
        
            <div class="form-group">
                <label class="control-label col-lg-4">Username</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtUsername" runat="server" class="form-control" />
                </div>
            </div>
        
            <div class="form-group">
                <label class="control-label col-lg-4">Password</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtPassword" runat="server" type="password" class="form-control" />
                </div>
            </div>
            
        
        

        <div class="form-group">
                <div class="col-lg-offset-4 col-lg-8">
                    <asp:Button ID="btnLogin" runat="server" class="btn btn-success pull-right" Text="Login" onClick="btnLogin_Click" />
                </div>
        </div>
        </div>

    <p><br/></p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
 <p><br/></p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
    </form> 
</asp:Content>