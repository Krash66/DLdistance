<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="DLdistance._default" %>

<!DOCTYPE html>

<html lang="en-us" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Damerau Levenstein Distance between two words</title>
</head>
<body>
    <h2>Find the D-L Distance between two words</h2>
    <div id="formdiv" style="align-content: center">
        <form id="form1" runat="server" style="position: center">
            <label>Word 1: </label>
            <asp:TextBox ID="word1" runat="server"></asp:TextBox><br />
            <label>Word 2: </label>
            <asp:TextBox ID="word2" runat="server"></asp:TextBox><br />
            <asp:Button ID="submitButton" runat="server" Text="Calculate" OnClick="Submit_Form1" /><br />
            <label>Answer : </label>
            <asp:TextBox ID="Answer" length="300px" runat="server"></asp:TextBox>
        </form>
    </div>
</body>
</html>
