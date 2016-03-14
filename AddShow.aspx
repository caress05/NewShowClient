<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddShow.aspx.cs" Inherits="AddShow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
                <tr>
            <td>Choose an Artist from the Drop Down List</td>
            <td><asp:DropDownList ID="ArtistDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ArtistDropDownList_SelectedIndexChanged"></asp:DropDownList></td>
            <asp:Label ID="ErrorLabel" runat="server" Text=""></asp:Label>
        </tr>
            <tr>
            <td>Name</td>    
                <td class="auto-style1">
                <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td class="auto-style1">
                <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator" runat="server" ErrorMessage="Not a valid email" ControlToValidate="EmailTextBox" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>Web Page</td>
            <td class="auto-style1">
                <asp:TextBox ID="WebPageTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton1_Click" />
                <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Show Name</td>
            <td>
                <asp:TextBox ID="ShowNameTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Show Date</td>
            <td>
                <asp:Calendar ID="ShowDateCalendar" runat="server" OnSelectionChanged="ShowDateCalendar_SelectionChanged"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td>Show Time</td>
            <td>
                <asp:TextBox ID="ShowTimeTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Show Ticket Info</td>
            <td>
                <asp:TextBox ID="ShowTicketInfoTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>Artist Start Time</td>
            <td>
                <asp:TextBox ID="ArtistStartTimeTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Additional Detail</td>
            <td>
                <asp:TextBox ID="AdditionalTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        </table>
    </div>
    </form>
</body>
</html>
