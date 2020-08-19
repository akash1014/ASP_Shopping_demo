<%@ Page Language="C#"  MasterPageFile="~/theme_connect.master" AutoEventWireup="true" CodeFile="items.aspx.cs" Inherits="items" %>

<asp:Content runat="server" ContentPlaceHolderID="head">
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
                            <a href="contactus.aspx" class="nav-link">contact us</a>
    </li>
    </ul>
    </div>
    </nav>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="body">
    <form id="form1" runat="server">
    <div class="container-fluid pt-5 pb-5" style="background-color:burlywood ; padding-left:195px;">
        <div class="container m-4 bg-white" style="margin:auto; box-shadow:5px 5px 5px; padding-left:100px; padding-top:50px; padding-bottom:50px;">
            <asp:GridView ID="GridView1"  runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="itemid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="itemid" HeaderText="itemid" InsertVisible="False" ReadOnly="True" SortExpression="itemid" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                    <asp:BoundField DataField="details" HeaderText="details" SortExpression="details" />
                  
                    <asp:ImageField DataImageUrlField="image" HeaderText="image" SortExpression="image" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                    <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                    <asp:BoundField DataField="brand" HeaderText="brand" SortExpression="brand" />
                    <asp:BoundField DataField="warranty" HeaderText="warranty" SortExpression="warranty" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:item_view_home %>" SelectCommand="SELECT * FROM [item]"></asp:SqlDataSource>
        </div>
    </div>
    </form>
</asp:Content>