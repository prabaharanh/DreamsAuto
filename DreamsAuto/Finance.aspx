<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Finance.aspx.cs" Inherits="DreamsAuto.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <style>

        @import url(https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900);
@import url(https://fonts.googleapis.com/css?family=Titillium+Web:400,600,700,300,200);

body {
  font-family: 'Roboto', sans-serif;
  font-size: 14px;
  letter-spacing: 1px;
  line-height: 1.6em;
  font-weight: 300;
  color: #555;
}

p {
  margin-bottom: 2em;
}

header {
  border-bottom: solid 1px #e0e0e0;
  margin: 0 0 20px 0;
}

.pageTitle,
.pageSubTitle {
  font-family: 'Titillium', sans-serif;
  text-transform: uppercase;
  color: #333;
}

.pageTitle {
  color: #720404;
}

.pageTitle {
  font-size: 2em;
  font-weight: 700;
  line-height: 2em;
}

.pageSubTitle {
  margin-bottom: 1em;
  font-size: 1.4em;
  font-weight: 300;
}

.background {
 
  background-size: 100% auto;
  position: fixed;
  width: 100%;
  height: 300%;
  top: 0;
  left: 0;
  z-index: -1
}

.wrapper {
  width: 520px;
  padding: 40px;
  margin: 20px auto;
  background: #fff;
  box-shadow:  0px 3px 3px 1px rgba(0, 0, 0, 0.25);
}

.slogan {
  position: fixed;
  display: block;
  top: 700px;
  width: 100%;
  padding: 20px 0;
  text-align: center;
  background: #222;
}

.sloganTitle {
  font-size: 70px;
  font-weight: 700;
  line-height: 80px;
  color: #fff;
  
  text-shadow: 0px 2px 1px rgba(0, 0, 0, 0.25);
}



    </style>
    <script>


        $(window).scroll(function(e){
  parallax();
});

function parallax(){
  var scrolled = $(window).scrollTop();
  $('.background').css('top',-(scrolled*0.15)+'px');
}
    </script>
    <div class="background">
</div>

<article class="wrapper">
  <header>
    <h1 class="pageTitle">Easy Finance Options</h1>
    <h2 class="pageSubTitle">Pick your's choice</h2>
  </header>
  <section>
    <p>As part of our service, we can offer all of our customers</p>
    <p>A Complete Range of Flexible and Affordable Finance Options</p>
    <p>Competitive Rates</p>
    <p>Flexible Repayment Options</p>
    <p>Pre-approval for Future Vehicle Purchases</p>
   
  </section>
</article>






    
    
</asp:Content>
