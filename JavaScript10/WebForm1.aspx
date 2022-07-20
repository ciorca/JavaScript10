<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="JavaScript10.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
       /* var string1 = "Hello"
        var string2 = "JavaScript"
        var result = string1.concat(" ", string2 , " Hello ", " World");
        alert(result);*/
        function getEmailandDomainParts() {
            var emailAddress = document.getElementById("txtEmailAddress").value;

            var emailPart = emailAddress.substring(0, emailAddress.indexOf("@"));
            var domainPart = emailAddress.substring(emailAddress.indexOf("@") +1);

            document.getElementById("txtEmailPart").value = emailPart;
            document.getElementById("txtDomainPart").value = domainPart;

        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <table style="border:1px solid black; font-family:Arial">
    <tr>
        <td>
            Email Address
        </td>
        <td>
            <asp:TextBox ID="txtEmailAddress" runat="server" Width="250px">
            </asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Email Part
        </td>
        <td>
            <asp:TextBox ID="txtEmailPart" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Domian Part
        </td>
        <td>
            <asp:TextBox ID="txtDomainPart" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td></td>
        <td>
            <input type="button" value="Get email & domain parts" onclick ="getEmailandDomainParts()" style="width:250px" />
        </td>
    </tr>
</table>
    </form>
</body>
</html>
