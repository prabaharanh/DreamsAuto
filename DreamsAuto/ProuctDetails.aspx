<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProuctDetails.aspx.cs" Inherits="DreamsAuto.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <a href="CartPage.aspx"> View my Cart</a>
        


    <asp:DataList ID="DataList1" runat="server" DataKeyField="carId" DataSourceID="SqlDataSource1">
        <ItemTemplate>

                         <div class="col-1-2">

    <div class="product-info">
        
       <div><img src=/images/<%#Eval("carImage") %> alt="" style="height:300px; width:500px"></div>  
        
      <h2><%#Eval("carName")%></h2>

      <div class="desc"><%# Eval("carDescription") %></div>

      <div>Car number:<%#Eval("carId") %></div>

    
        
      <h3 class="price">Price: $<%#Eval("carPrice") %></h3>
        <asp:Button ID="btnAddCart" runat="server" Text="Add to cart" OnClick="btnAddCart_Click"/>
     
   

    </div>
    </div>

           
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbDreamsAutoConnectionString %>" SelectCommand="SELECT * FROM [tblCars] WHERE ([carId] = @carId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="carId" QueryStringField="carId" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
