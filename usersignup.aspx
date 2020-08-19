<%@ Page Language="C#" MasterPageFile="~/theme_connect.master" AutoEventWireup="true" CodeFile="usersignup.aspx.cs" Inherits="usersignin" UnobtrusiveValidationMode="0"  %>

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
                         
                            <a href="cart.aspx" class="nav-link">products</a>
                        </li>
                        <li class="nav-item">
                            <a href="items.aspx" class="nav-link">items</a>
                          
                        </li>
                       
                        <li class="nav-item">
                            <a href="userlogin1.aspx" class="nav-link">user login</a>
                        </li>
                            <li class="nav-item">
                            <a href="home.aspx" class="nav-link">logout</a>
                        </li>
    
    <li class="nav-item">
                            <a href="contactus.aspx" class="nav-link">contact us</a>
    </li>
    </ul>
    </div>
    </nav>
   
   
</asp:Content>
    <asp:Content ID="content1" ContentPlaceHolderID="body" runat="server">

    <div style="background-color:aquamarine" class="pt-lg-5; p-4">
         <form id="form1" runat="server">
    <div class="container bg-light mt-lg-5 mb-lg-5" style="border-radius:8px; box-shadow:10px 10px 10px;">
            <div class="row m-lg-2 p-4 text-center">
            <div class="col-md-6 p-3">
                <asp:Label Text="email" runat="server"></asp:Label>
            </div>
            <div class="col-md-4 p-3">
                <asp:TextBox runat="server" id="email" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="namev" runat="server" ForeColor="Red" ErrorMessage="email is required" ControlToValidate="email"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-6 p-3">
                <asp:Label  runat="server" Text="password"></asp:Label>
            </div>
            <div class="col-md-4 p-3">
                <asp:TextBox ID="password" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="quantityv" runat="server" ForeColor="Red" ErrorMessage="password is required" ControlToValidate="password"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-6 p-3">
                <asp:Label  runat="server" Text="confirm password"></asp:Label>
            </div>
            <div class="col-md-4 p-3">
                <asp:TextBox ID="conpassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="renter the password" ControlToValidate="password"></asp:RequiredFieldValidator>
                <asp:CompareValidator ControlToCompare="password" ControlToValidate="conpassword" runat="server"></asp:CompareValidator>
            </div>
            <div class="col-md-6 p-3">
                <asp:Label  runat="server" Text="name"></asp:Label>
            </div>
            <div class="col-md-4 p-3">
                <asp:TextBox ID="name" runat="server" CssClass="form-control" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ErrorMessage="enter the name" ControlToValidate="password"></asp:RequiredFieldValidator>
            </div>
                <div class="col-md-6 p-3">
                <asp:Label  runat="server" Text="mobile no"></asp:Label>
            </div>
            <div class="col-md-4 p-3">
                <asp:TextBox ID="mobile" runat="server" CssClass="form-control" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red" ErrorMessage="enter the mobile no" ControlToValidate="password"></asp:RequiredFieldValidator>
            </div>
                
                    <asp:Button CssClass="form-control bg-warning col-md-4 offset-5 m-2" runat="server" Text="SignUp" OnClick="submituse" />
                    <asp:Label runat="server" ID="test" ForeColor="Red"></asp:Label>
                
            </div>
        </div>
             </form>
        </div>
</asp:Content>

