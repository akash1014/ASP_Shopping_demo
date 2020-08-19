<%@ Page Language="C#" MasterPageFile="~/theme_connect.master" AutoEventWireup="true" CodeFile="add_item.aspx.cs" Inherits="add_item" UnobtrusiveValidationMode="0"%>

<asp:Content ID="shhead" ContentPlaceHolderID="head" runat="server">
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
                            <a href="home.aspx" class="nav-link">logout</a>
                        </li>
                        <li class="nav-item">
                            <a href="userlogin1.aspx" class="nav-link">user</a>
                        </li>
    
    <li class="nav-item">
                            <a href="contactus.aspx" class="nav-link">contact us</a>
    </li>
    </ul>
    </div>
    </nav>
   
   
    </asp:Content>

<asp:Content ContentPlaceHolderID="body" runat="server">
   <div style="background-color:aqua" class="pt-lg-5; p-4">
         <form id="form1" runat="server">
    <div class="container bg-light mt-lg-5" style="border-radius:8px; box-shadow:10px 10px 10px;">
        <h1 class="text-center">Add Items</h1>
            <div class="row m-lg-2 p-4 text-center">
            <div class="col-md-6 p-3">
                <asp:Label Text="name" runat="server"></asp:Label>
            </div>
            <div class="col-md-4 p-3">
                <asp:TextBox runat="server" id="name" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="namev" runat="server" ForeColor="Red" ErrorMessage="name of the item is required" ControlToValidate="name"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-6 p-3">
                <asp:Label ID="quantit" runat="server" Text="quantity"></asp:Label>
            </div>
            <div class="col-md-4 p-3">
                <asp:TextBox ID="quantity" runat="server" CssClass="form-control" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="quantityv" runat="server" ForeColor="Red" ErrorMessage="quantity of the item is required" ControlToValidate="quantity"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-6 p-3">
                <asp:Label ID="detail" runat="server" Text="details"></asp:Label>
            </div>
            <div class="col-md-4 p-3">
                <asp:TextBox ID="details" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="detailsv" runat="server" ForeColor="Red" ErrorMessage="details of the item is required" ControlToValidate="details"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-6 p-3">
                <asp:Label ID="img" runat="server" Text="image"></asp:Label>
            </div>
            <div class="col-md-4 p-3">
                <asp:FileUpload ID="imageupload" CssClass="form-control form-control-file" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" runat="server" ErrorMessage="details of the item is required" ControlToValidate="imageupload"></asp:RequiredFieldValidator>
                
            </div>
            <div class="col-md-6 p-3">
                <asp:Label Text="price" runat="server"></asp:Label>
            </div>
            <div class="col-md-4 p-3">
                <asp:TextBox runat="server" id="price" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="pricev" runat="server" ForeColor="Red" ErrorMessage="enter the price of item" ControlToValidate="price"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-6 p-3">
                <asp:Label ID="Label3" runat="server" Text="itemtype"></asp:Label>
            </div>
            <div class="col-md-4 p-3">
                <asp:DropDownList ID="itemtype" runat="server" CssClass="form-control">
                    <asp:ListItem>select item type</asp:ListItem>
                    <asp:ListItem>electronics</asp:ListItem>
                    <asp:ListItem>accessories</asp:ListItem>
                    <asp:ListItem>mens wear</asp:ListItem>
                    <asp:ListItem>ladies wear</asp:ListItem>
                    <asp:ListItem>shoes</asp:ListItem>
                    <asp:ListItem>toys</asp:ListItem>
                    <asp:ListItem>laptop</asp:ListItem>
                    <asp:ListItem>cosmetics</asp:ListItem>
                    <asp:ListItem>fashion wear</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="itemtypev" ForeColor="Red" runat="server" ErrorMessage="select the item type" ControlToValidate="itemtype"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-6 p-3">
                <asp:Label ID="Label4" runat="server" Text="brand"></asp:Label>
            </div>
            <div class="col-md-4 p-3">
                <asp:TextBox ID="brand" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="brandv" ForeColor="Red" runat="server" ErrorMessage="enter the brand name" ControlToValidate="brand"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-6 p-3">
                <asp:Label ID="Label1" runat="server" Text="warranty"></asp:Label>
            </div>
            <div class="col-md-4 p-3">
                <asp:DropDownList ID="warranty" runat="server" CssClass="form-control">
                    <asp:ListItem>warranty</asp:ListItem>
                    <asp:ListItem Value="1">1  year</asp:ListItem>
                    <asp:ListItem Value="2">2 year</asp:ListItem>
                    <asp:ListItem Value="3">3 year</asp:ListItem>
                    <asp:ListItem Value="4">4 year</asp:ListItem>
                    <asp:ListItem Value="5">5 and greater</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-md-3 offset-3 p-3">
                <asp:Button CssClass="form-control bg-info"  runat="server" Text="submit" OnClick="additem"/>
            </div>
                <div class="col-md-3">
                    <asp:Label ID="output"  runat="server"></asp:Label>
                </div>
        
        </div>
    </div>
    </form>
       </div>
     

  </asp:Content>

