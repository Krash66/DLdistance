<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="DLdistance._default" %>

<!DOCTYPE html>

<html lang="en-us" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Damerau Levenstein Distance between two words</title>
</head>
<body style="width: 770px; text-align: center; margin-left: 361px; background-color: #66CCFF">
    <h2 style="text-align: center; color: #0000FF;">Find the D-L Distance between two words</h2>
        <form id="form1" runat="server" style="border: thick solid #FFFFFF; position: center; height: 159px; margin-top: 29px; background-color: #FFFFFF; clip: rect(10px, auto, auto, auto); color: #0000FF;">
            <label>Word 1: </label>
            <asp:TextBox ID="word1" runat="server"></asp:TextBox><br />
            <label>Word 2: </label>
            <asp:TextBox ID="word2" runat="server"></asp:TextBox><br />
            <asp:Button ID="submitButton" runat="server" Text="Calculate" OnClick="Submit_Form1" /><br />
            <label>Answer : </label>
            <asp:TextBox ID="Answer" length="300px" runat="server" Height="25px" Rows="2" Width="669px"></asp:TextBox>
        </form>
</body>
</html>
