<%@Page Language="C#" MasterPageFile="~/theme_connect.master" AutoEventWireup="true" CodeFile="~/home.aspx.cs" Inherits="home"%>
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
                         
                            <a href="cart.aspx" class="nav-link">products</a>
                        </li>
                        <li class="nav-item">
                            <a href="items.aspx" class="nav-link">items</a>
                          
                        </li>
                        <li class="nav-item">
                            <a href="add_item.aspx" class="nav-link">contacts</a>
                        </li>
                        <li class="nav-item">
                            <a href="adminlogin1.aspx" class="nav-link">admin</a>
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

<asp:Content ID="content1" ContentPlaceHolderID="body" runat="server">
     <div class="container-fluid mt-5 " id="home">
        <div class="row">
            <div class="col-md-12">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img class="d-block w-100" src="shoplocal.png" alt="First slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="cart.jpg" alt="Second slide" alt="Second slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="shopping.png" alt="Third slide" alt="Third slide">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
   



       <div class="container-fluid pt-4 pb-4 mt-5" id="about">
        <div class="container mt-5">
            <div class="row">
                <div class="col-md-12 text-center">
                    <h3> What <span class="bg-success text-white p-2">WE SELL  </span> </h3>
                </div>
            </div>


            <div class="row">
                <div class="col-md-6">
                    <p class="text-justify p-2"> <b> <i>  E COMMERCE </i> </b>Shopping is an activity in which a customer browses the available goods or services presented by one or more retailers with the potential intent to purchase a suitable selection of them. A typology of shopper types has been developed by scholars which identifies one group of shoppers as recreational shoppers, that is, those who enjoy shopping and view it as a leisure activity. </p>
                    <img src="cart.jpg" width="100%" height="250px">
                </div>

                <div class="col-md-6">
                    <p class="text-justify p-2"> <b> We  expertise. </b> Shopping is an activity in which a customer browses the available goods or services presented by one or more retailers with the potential intent to purchase a suitable selection of them. A typology of shopper types has been developed by scholars which identifies one group of shoppers as recreational shoppers, that is, those who enjoy shopping and view it as a leisure activity. </p>
                    <p class="text-justify p-2"> <b> We expertise </b> Shopping is an activity in which a customer browses the available goods or services presented by one or more retailers with the potential intent to purchase a suitable selection of them. A typology of shopper types has been developed by scholars which identifies one group of shoppers as recreational shoppers, that is, those who enjoy shopping and view it as a leisure activity.</p>
                </div>
            </div>
        </div>
    </div>
 


    <div class="bg-info min-vh-100 p-sm-2" style="padding-left:50px;" >
    <form id="form1"  runat="server">
    <div class="row"  >
    
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

