<%@ Page Language="C#" MasterPageFile="~/theme_connect.master"  AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" %>

<asp:Content ContentPlaceHolderID="body" runat="server">
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
                         
                            <a href="carts.aspx" class="nav-link">products</a>
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
   
    
    <div class="contact1">
		<div class="container-contact1">
			<div class="contact1-pic js-tilt" data-tilt>
				<img src="images/img-01.png" alt="IMG">
			</div>

			<form class="contact1-form validate-form">
				<span class="contact1-form-title">
					Get in touch
				</span>

				<div class="wrap-input1 validate-input" data-validate = "Name is required">
					<input class="input1" type="text" name="name" placeholder="Name">
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
					<input class="input1" type="text" name="email" placeholder="Email">
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Subject is required">
					<input class="input1" type="text" name="subject" placeholder="Subject">
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Message is required">
					<textarea class="input1" name="message" placeholder="Message"></textarea>
					<span class="shadow-input1"></span>
				</div>

				<div class="container-contact1-form-btn">
					<button class="contact1-form-btn">
						<span>
							Send Email
							<i class="fa fa-long-arrow-right" aria-hidden="true"></i>
						</span>
					</button>
				</div>
				<div class="container-form-info">
					
					<p>We Are The Collaborators For Buiding This Website: </p>
					<p class="ak">AKASH KUMAR YADAV : 8427354514</p>
					<p class="ansh">ANSH SETH : 8054449793</p>
					<p class="ani">ANISH GUPTA : 9041384369</p>
					<p class="aj">AJAY KUMAR: 9779332773</p>
				</div>
			</form>
		</div>
	</div>
</asp:Content>