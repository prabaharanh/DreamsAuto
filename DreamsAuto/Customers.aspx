<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="DreamsAuto.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="userId" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="userName" HeaderText="userName" SortExpression="userName" />
            <asp:BoundField DataField="emailId" HeaderText="emailId" SortExpression="emailId" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="phoneNumber" HeaderText="phoneNumber" SortExpression="phoneNumber" />
            <asp:BoundField DataField="lastName" HeaderText="lastName" SortExpression="lastName" />
            <asp:BoundField DataField="firstName" HeaderText="firstName" SortExpression="firstName" />
            <asp:BoundField DataField="userId" HeaderText="userId" InsertVisible="False" ReadOnly="True" SortExpression="userId" />
            <asp:CommandField ShowDeleteButton="True" />
            <asp:CommandField ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dbDreamsAutoConnectionString %>" DeleteCommand="DELETE FROM [tbl_Users] WHERE [userId] = @original_userId AND [userName] = @original_userName AND [emailId] = @original_emailId AND [address] = @original_address AND [phoneNumber] = @original_phoneNumber AND [lastName] = @original_lastName AND [firstName] = @original_firstName" InsertCommand="INSERT INTO [tbl_Users] ([userName], [emailId], [address], [phoneNumber], [lastName], [firstName]) VALUES (@userName, @emailId, @address, @phoneNumber, @lastName, @firstName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [userName], [emailId], [address], [phoneNumber], [lastName], [firstName], [userId] FROM [tbl_Users]" UpdateCommand="UPDATE [tbl_Users] SET [userName] = @userName, [emailId] = @emailId, [address] = @address, [phoneNumber] = @phoneNumber, [lastName] = @lastName, [firstName] = @firstName WHERE [userId] = @original_userId AND [userName] = @original_userName AND [emailId] = @original_emailId AND [address] = @original_address AND [phoneNumber] = @original_phoneNumber AND [lastName] = @original_lastName AND [firstName] = @original_firstName">
        <DeleteParameters>
            <asp:Parameter Name="original_userId" Type="Int32" />
            <asp:Parameter Name="original_userName" Type="String" />
            <asp:Parameter Name="original_emailId" Type="String" />
            <asp:Parameter Name="original_address" Type="String" />
            <asp:Parameter Name="original_phoneNumber" Type="String" />
            <asp:Parameter Name="original_lastName" Type="String" />
            <asp:Parameter Name="original_firstName" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="userName" Type="String" />
            <asp:Parameter Name="emailId" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="phoneNumber" Type="String" />
            <asp:Parameter Name="lastName" Type="String" />
            <asp:Parameter Name="firstName" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="userName" Type="String" />
            <asp:Parameter Name="emailId" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="phoneNumber" Type="String" />
            <asp:Parameter Name="lastName" Type="String" />
            <asp:Parameter Name="firstName" Type="String" />
            <asp:Parameter Name="original_userId" Type="Int32" />
            <asp:Parameter Name="original_userName" Type="String" />
            <asp:Parameter Name="original_emailId" Type="String" />
            <asp:Parameter Name="original_address" Type="String" />
            <asp:Parameter Name="original_phoneNumber" Type="String" />
            <asp:Parameter Name="original_lastName" Type="String" />
            <asp:Parameter Name="original_firstName" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

    
</asp:Content>
