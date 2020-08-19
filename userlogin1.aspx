<%@ Page Language="C#" MasterPageFile="~/theme_connect.master"  UnobtrusiveValidationMode="0" AutoEventWireup="true" CodeFile="userlogin1.aspx.cs" Inherits="userlogin1" %>


<asp:Content ID="content1" ContentPlaceHolderID="body" runat="server">

    <div style="background-color:aqua;" class="pt-lg-5; p-4">
         <form id="form1" runat="server">
    <div class="container bg-light mt-lg-5 mb-lg-5" style="border-radius:8px; box-shadow:10px 10px 10px;">
            <div class="row m-lg-2 p-4 text-center">
            <div class="col-md-6 p-3">
                <asp:Label Text="email" runat="server"></asp:Label>
            </div>
            <div class="col-md-4 p-3">
                <asp:TextBox runat="server" id="email" Text="" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="namev" runat="server" ForeColor="Red" ErrorMessage="email is required" ControlToValidate="email"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-6 p-3">
                <asp:Label  runat="server" Text="password"></asp:Label>
            </div>
            <div class="col-md-4 p-3">
                <asp:TextBox ID="password" runat="server" CssClass="form-control" Text="" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="quantityv" runat="server" ForeColor="Red" ErrorMessage="password is required" ControlToValidate="password"></asp:RequiredFieldValidator>
            </div>
                <div class="col-md-3 offset-5 m-2">
                    <asp:Button CssClass="form-control bg-warning" runat="server" Text="Login" OnClick="submit" />
                    <asp:Label runat="server" ID="test" ForeColor="Red"></asp:Label>
                </div>
            </div>
        </div>
             </form>
        </div>
</asp:Content>
<asp:Content ContentPlaceHolderID="head" runat="server">
     <a class="nav-link" href="#areaofwork">work</a>
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
                <a class="navbar-brand" href="#home"> E COMMERCE</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
         
                    <ul class="navbar-nav ml-auto mr-auto" >
                        
                        <li class="nav-item">
                         
                            <a href="home.aspx" class="nav-link">home</a>
                        </li>
                        <li class="nav-item">
                            <a href="items.aspx" class="nav-link">items</a>
                          
                        </li>
                        <li class="nav-item">
                            <a href="usersignup.aspx" class="nav-link">signup</a>
                          
                        </li>
                     
                        
    <li class="nav-item">
                            <a href="add_item.aspx" class="nav-link">contact us</a>
    </li>
    </ul>
    </div>
    </nav>
   
   
</asp:Content>