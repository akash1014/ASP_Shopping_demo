<%@ Page Language="C#" MasterPageFile="~/theme_connect.master"  UnobtrusiveValidationMode="0" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" %>

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
                            <a href="home.aspx" class="nav-link">logout</a>
                        </li>
    
    <li class="nav-item">
                            <a href="contactus.aspx" class="nav-link">contact us</a>
    </li>
    </ul>
    </div>
    </nav>
   
   
</asp:Content>
<asp:Content  runat="server" ContentPlaceHolderID="body">
<div class="bg-info min-vh-100 p-sm-2" style="padding-left:50px; padding-top:120px;" >
    <form id="form1"  runat="server">
    <div class="row"  style="padding-top:60px;">
    
    <div class="col-sm-3 bg-light mr-md-2"style=" text-align:center; max-height:600px;">
        <div class="border-bottom m-3"> 
            <h4><b>Filters</b></h4>
        </div>
        <div class="container border-primary">
            <div class="row">
            <asp:Label CssClass="col-sm-6 p-2"  Text="warranty availabilty" runat="server"></asp:Label>
            <div class="col-sm-6 p-2">
                <asp:DropDownList ID="warranty" runat="server" CssClass="form-control">
                    <asp:ListItem Value="0">warranty</asp:ListItem>
                    <asp:ListItem Value="1">1  year</asp:ListItem>
                    <asp:ListItem Value="2">2 year</asp:ListItem>
                    <asp:ListItem Value="3">3 year</asp:ListItem>
                    <asp:ListItem Value="4">4 year</asp:ListItem>
                    <asp:ListItem Value="5">5 and greater</asp:ListItem>
                </asp:DropDownList>
                </div>
            <asp:label CssClass="col-sm-6 p-2" Text="item type" runat="server"></asp:label>
             <div class="col-sm-6 p-2">
                <asp:DropDownList ID="itemtype" runat="server" CssClass="form-control">
                    <asp:ListItem Value="">type</asp:ListItem>
                    <asp:ListItem Value="electronics">electronics</asp:ListItem>
                    <asp:ListItem Value="accessories">accessories</asp:ListItem>
                    <asp:ListItem Value="mens wear">mens wear</asp:ListItem>
                    <asp:ListItem Value="ladies wear">ladies wear</asp:ListItem>
                    <asp:ListItem Value="shoes">shoes</asp:ListItem>
                    <asp:ListItem Value="toys">toys</asp:ListItem>
                    <asp:ListItem Value="laptop">laptop</asp:ListItem>
                    <asp:ListItem Value="cosmetics">cosmetics</asp:ListItem>
                    <asp:ListItem Value="fashion wear">fashion wear</asp:ListItem>
                </asp:DropDownList>
                </div>
                <asp:Label runat="server" CssClass="col-sm-6 p-2" Text="brand"></asp:Label>
                <div class="col-sm-6 p-2">
                <asp:TextBox runat="server" CssClass="  form-control"  ID="brand">
                </asp:TextBox>
                </div>             
                <asp:Label runat="server" CssClass="col-sm-6 " Text="price range"></asp:Label>
                <div class="col-sm-6 p-2">
                <asp:DropDownList ID="minp" runat="server" CssClass="form-control">
                    <asp:ListItem Value="0">minimum</asp:ListItem>
                    <asp:ListItem Value="1000">1000</asp:ListItem>
                    <asp:ListItem Value="2000">2000</asp:ListItem>
                    <asp:ListItem Value="5000">5000</asp:ListItem>
                    <asp:ListItem Value="10000">10000</asp:ListItem>
                    <asp:ListItem Value="15000">15000</asp:ListItem>
                </asp:DropDownList>
                </div>
                <div class="col-sm-6 offset-6 p-2">
                <asp:DropDownList ID="maxp" runat="server" CssClass="form-control">
                    <asp:ListItem Value="300000">maximum</asp:ListItem>
                    <asp:ListItem Value="3000">3000</asp:ListItem>
                    <asp:ListItem Value="5000">5000</asp:ListItem>
                    <asp:ListItem Value="10000">10000</asp:ListItem>
                    <asp:ListItem Value="20000">20000</asp:ListItem>
                    <asp:ListItem Value="200000">30000 and above</asp:ListItem>
                </asp:DropDownList>
                </div>
                <div class="col-sm-6 offset-3">
                <asp:Button runat="server" CssClass="form-control bg-warning  m-4" OnClick="filter_save" Text="save" />
                   
                </div>
            </div>
             </div>
        </div>
       
    
   
        <div class="col-sm-8 bg-light p-lg-3" style="opacity:0.98;" >
      <div class="row">
        <asp:Repeater ID="showitem" DataSourceID="item_display" runat="server">
           
            <ItemTemplate >
                  <div class="col-sm-6 col-md-4 shadow-sm m-sm-0  p-lg-2" style="border-top-left-radius:4px; min-height:50px;">
                        <asp:Image ID="Image1"  ImageUrl='<%#Eval("image") %>' runat="server" />
                      <hr />
                      <h5 class="font-weight-bold"><%#Eval("name") %></h5>
                      <hr />
                      <p><%#Eval("details") %></p>
                      <hr />
                     <b> <p class="text-center">Rs<%#Eval("price") %></p></b>
                        </div>
            </ItemTemplate>
        </asp:Repeater>
            <asp:SqlDataSource ID="item_display" SelectCommand="SELECT * FROM [item]"  runat="server" ConnectionString="<%$ ConnectionStrings:item_view_home %>"></asp:SqlDataSource>
  
    </div>
     </div>
    </div> 
    </form>
    </div>
    </asp:Content>