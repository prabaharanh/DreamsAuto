<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="DreamsAuto.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <h2>Add Car Details </h2>
  
    <table style="width: 100%">
        <tr>
            <td style="width: 613px">CarName</td>
            <td>
                <asp:TextBox ID="txtCarName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCarName" ErrorMessage="Enter car name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 613px">Type</td>
            <td>
                <asp:TextBox ID="txtType" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtType" ErrorMessage="Enter the type of  car"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 613px; height: 33px">Price</td>
            <td style="height: 33px">
                <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPrice" ErrorMessage="Enter the Price"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 613px">Description</td>
            <td>
                <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDescription" ErrorMessage="Enter the details"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 613px">Image</td>
            <td>
                <asp:FileUpload ID="CarImage" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="width: 613px">&nbsp;</td>
            <td>
                <asp:Button ID="btnAddCar" runat="server" Text="Add Car" OnClick="btnAddCar_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <h2>Edit,Delete,Update details</h2>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="carName" DataSourceID="SqlDataSource1">

                    <Columns>
                        <asp:BoundField DataField="carName" HeaderText="carName" ReadOnly="True" SortExpression="carName" />
                        <asp:BoundField DataField="carType" HeaderText="carType" SortExpression="carType" />
                        <asp:BoundField DataField="carPrice" HeaderText="carPrice" SortExpression="carPrice" />
                        <asp:BoundField DataField="carDescription" HeaderText="carDescription" SortExpression="carDescription" />
                        <asp:BoundField DataField="carImage" HeaderText="carImage" SortExpression="carImage" />
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbDreamsAutoConnectionString %>" DeleteCommand="DELETE FROM [tblCars] WHERE [carName] = @carName" InsertCommand="INSERT INTO [tblCars] ([carName], [carType], [carPrice], [carDescription], [carImage]) VALUES (@carName, @carType, @carPrice, @carDescription, @carImage)" SelectCommand="SELECT * FROM [tblCars]" UpdateCommand="UPDATE [tblCars] SET [carType] = @carType, [carPrice] = @carPrice, [carDescription] = @carDescription, [carImage] = @carImage WHERE [carName] = @carName">
                    <DeleteParameters>
                        <asp:Parameter Name="carName" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="carName" Type="String" />
                        <asp:Parameter Name="carType" Type="String" />
                        <asp:Parameter Name="carPrice" Type="String" />
                        <asp:Parameter Name="carDescription" Type="String" />
                        <asp:Parameter Name="carImage" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="carType" Type="String" />
                        <asp:Parameter Name="carPrice" Type="String" />
                        <asp:Parameter Name="carDescription" Type="String" />
                        <asp:Parameter Name="carImage" Type="String" />
                        <asp:Parameter Name="carName" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                  
              <a href="Customers.aspx"><h2>Edit Customer Details </h2></a>&nbsp <a href="Register.aspx"> <h2>Add Customer Details </h2></a> 
            </tr>
        </td>
    </table>



</asp:Content>
