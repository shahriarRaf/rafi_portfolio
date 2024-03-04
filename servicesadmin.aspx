<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="servicesadmin.aspx.cs" Inherits="rafi_portfolio.servicesadmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .submit-button {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .submit-button:hover {
            background-color: #45a049;
        }

        .input-field {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>


            <label for="name">Service Name:</label>
            
            <asp:TextBox ID="TextBox1" runat="server" CssClass="input-field"></asp:TextBox>
            <label for="email">Description:</label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="input-field"></asp:TextBox>
            

            <asp:Button ID="submitButton" runat="server" Text="Submit" CssClass="submit-button" OnClick="submitButton_Click1" />
        </div>
        
    </form>
</body>
</html>
