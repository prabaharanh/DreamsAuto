<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CartPage.aspx.cs" Inherits="DreamsAuto.WebForm19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="carId" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="carName" HeaderText="carName" SortExpression="carName" />
            <asp:BoundField DataField="carType" HeaderText="carType" SortExpression="carType" />
            <asp:BoundField DataField="carPrice" HeaderText="carPrice" SortExpression="carPrice" />
            <asp:BoundField DataField="carDescription" HeaderText="carDescription" SortExpression="carDescription" />
            <asp:BoundField DataField="carImage" HeaderText="carImage" SortExpression="carImage" />
            <asp:BoundField DataField="carId" HeaderText="carId" InsertVisible="False" ReadOnly="True" SortExpression="carId" />
            <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbDreamsAutoConnectionString %>" SelectCommand="SELECT * FROM [tblCart]"></asp:SqlDataSource>
    <asp:Button ID="btnCheckout" runat="server" Text="Check Out" />
</asp:Content>
