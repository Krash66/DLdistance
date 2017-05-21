<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="DLdistance._default" %>

<!DOCTYPE html>

<html lang="en-us" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Damerau Levenstein Distance between two words</title>
    <script src="~/Scripts/bootstrap.js"></script>
    <link rel="stylesheet" type="text/css" href="~/content/bootstrap.css" />
    <script src="~/Scripts/jquery-3.1.1.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
</head>    
<body style="background-color:#8cbefc">
    <div class="container body-content">
        <div class="jumbotron">
            <div class="page-header text-center">
                <h2>Find the D-L Distance between two words</h2>
            </div>
            <p class="text-center"><strong>This page is just an example of an ASP.NET/C# Webforms application that calculates the Damerau-Levenshtein Distance between to words. Enter two words and click Calculate and the D-L distance will be calcultated for you.<br /><br />The higher the number, the more the words differ, starting from 0 (zero) if the words are identical. Enjoy!</strong></p>
            <form  id="form1" runat="server">
                <div class="form-group"><strong>
                    <label for="word1">First Word: </label>
                    <asp:TextBox class="form-control" ID="word1" runat="server" placeholder="word 1"></asp:TextBox></strong>
                </div>
                <div class="form-group"><strong>
                    <label for="word2">Second word: </label>
                    <asp:TextBox class="form-control" ID="word2" runat="server" placeholder="word 2"></asp:TextBox></strong>
                </div>
                <div class="form-group"><strong>
                    <asp:Button class="btn btn-primary btn-lg center-block" ID="submitButton" runat="server" Text="Calculate" OnClick="Submit_Form1" /></strong>
                </div>
                <div class="form-group"><strong>
                    <label for="Answer">Answer: </label>
                    <asp:TextBox class="form-control" ID="Answer" runat="server" placeholder="answer"></asp:TextBox></strong>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
