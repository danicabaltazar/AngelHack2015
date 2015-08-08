<%@ Page Title="" Language="C#" MasterPageFile="~/NoNavbar.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">

 <div class="col-lg-3"></div>
  <div class="col-lg-3">
  <h1>Register Here!</h1>
  </div>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
 <form id="Form1" runat="server" class="form-horizontal">
    <br />
        <div class="col-lg-6">

        <%--ERROR--%> 
            <div id="error" runat="server" class="alert alert-danger" visible="false">
                Email address is already existing.
            </div>


            <div class="form-group">
                <label class="control-label col-lg-4">Last Name</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtLN" runat="server" class="form-control" required />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-4">First Name</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtFN" runat="server" class="form-control" required  />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-4">Username</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtUsername" runat="server" class="form-control" required  />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-4">Password</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtPassword" runat="server" class="form-control" type="password" required  />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-4">Birthday</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtBirthday" runat="server" class="form-control" required />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-4">Email</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtEmail" runat="server" class="form-control" required />
                </div>
            </div>

            <div class="form-group">
                 <div class="col-lg-offset-4 col-lg-8">
                     <asp:Button ID="btnRegister" runat="server" class="btn btn-success pull-right btn-lg" 
                        onclick="btnRegister_Click" Text="Register" />
                 </div>
             </div>

             <div>
                <div class="col-lg-offset-4 col-lg-8">
                    <a id="A1" href="Login.aspx" runat="server" class="pull-right">Registered already?</a>
                </div>
             </div>
             
        </div>
    </form>
    </asp:Content>
   
