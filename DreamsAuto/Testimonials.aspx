<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Testimonials.aspx.cs" Inherits="DreamsAuto.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>

        * {
	margin: 0;
	font-family: "Roboto", sans-serif, "Helvetica", sans-serif;
	font-weight: 300;
}

body, html {
	background-color: #fff;
	height: 100%;
	width: 100%;
}

.testimonials {
	margin-top: 5px;
	margin-bottom: 5px;
	position: relative;
	display: block;
	width: 100%;
	min-height: 250px;
}

.testimonials ul {
	list-style: none;
	padding: 0;
}

.testimonials li {
	display: inline-block;
	background-color: white;
	margin: 50px 10px 10px 10px;
	width: calc((100% - 55px) / 2);
	height: 200px;
	border: solid 1px #bdbdbd;
	position: relative;
	transition: ease-in-out .3s;
}

.testimonials li img {
	height: 70px;
	width: 70px;
	left: 50%;
	transform: translate(-50%, -50%);
	position: absolute;
	border-radius: 50%;
	box-shadow: 0px 0px 0px 15px #fff;
	background-color: #fff;
	transition: box-shadow 0.3s linear;
}

.testimonials li p {
	position: absolute;
	width: 70%;
	text-align: center;
	top: 50px;
	left: 50%;
	transform: translatex(-50%);
	font-size: 15px;
}

.testimonials li h1 {
	position: absolute;
	text-decoration: bold;
	bottom: 10px;
	left: 50%;
	transform: translatex(-50%);
	font-size: 17px;
}

.testimonials li:hover {
	background-color: #212121;
	color: #fff;
}

.testimonials li:hover img {
	box-shadow: 0px 0px 0px 2px #fff;
}

@media only screen and (max-width: 860px) {
	.testimonials li {
		width: 70%;
		margin: auto;
		display: block;
		margin-top: 70px;
	}
	
	.testimonials li:first-child {
		margin-top: 50px;
	}
}








@media only screen and (max-width: 750px) {
	.container {
		width: 90%;
	}
}

.container h1, h2, h3 {
	margin-top: 15px;
	margin-left: 0;
	font-weight: 400;
}

.container span {
	color: #757575;
	font-weight: 600;
}
    </style>
    <div class = "container">
	<h1>What our clients are saying about us...</h1>
	<span>Happy Customers!</span> 
	<p>Customer Satisfaction is our Motto.</p>
	<h2>Testimonials:</h2>
	<div class = "testimonials">
		<ul>
			<li>
				<img src = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkSflTI9DIJAstZ8fesrSz70HR8oH9BN_d8w0cjGEtiZyqDcs8">
				<p>"Honest, efficient, and prompt service always. Great local auto car shop. Would highly, highly recommend"</p>
				<h1>Martin Kovaks</h1>
			</li>
			<li>
				<img src = "https://i.pinimg.com/236x/2d/e5/7f/2de57f8025bd64dffd554de0f080ee7f--my-pinterest-pinterest-board.jpg?b=t">
				<p>"Prompt, honest and good people to work with. Always reasonable prices with the great job that was done on my vehicle"</p>
				<h1>Adrea Glauber</h1>
			</li>
            <li>
				<img src = "https://i.pinimg.com/236x/2d/e5/7f/2de57f8025bd64dffd554de0f080ee7f--my-pinterest-pinterest-board.jpg?b=t">
				<p>"Very good Service.Reasonable price.Large Selection of cars"</p>
				<h1>Adrea Glauber</h1>
			</li>
            <li>
				<img src = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkSflTI9DIJAstZ8fesrSz70HR8oH9BN_d8w0cjGEtiZyqDcs8">
				<p>"Nice selctions of cars at good prices"</p>
				<h1>Martin Kovaks</h1>
			</li>
		</ul>
	</div>
	
</div>
   
</asp:Content>
