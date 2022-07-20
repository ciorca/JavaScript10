<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="JavaScript10.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script type="text/javascript">
         function getDomainName() {
             var url = document.getElementById("txtURL").value;
             var domainName = url.substr(url.lastIndexOf("."));
             document.getElementById("txtDomian").value = domainName;
         }

     </script>
         
</head>
<body>
    <form id="form1" runat="server">
       <table style="border: 1px solid black; font-family: Arial">
    <tr>
        <td>
            Website URL
        </td>
        <td>
            <asp:TextBox ID="txtURL" runat="server" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Top level domian
        </td>
        <td>
            <asp:TextBox ID="txtDomian" runat="server" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td>
            <input type="button" value="Get top level domain" onclick="getDomainName()" style="width: 300px" />
        </td>
    </tr>
</table>

    </form>
</body>
</html>
