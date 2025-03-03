<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Obstetrics and gynecology.aspx.cs" Inherits="jinan_sara.Obstetrics_and_gynecology" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
            text-align: center;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width:1000px;
            margin: 50px auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: #004080;
        }
        input, select, button {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .login-button {
            background-color: #004080;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }
        .login-button:hover {
            background-color: #007BFF;
        }
        .image-container {
            text-align: center;
            margin-bottom: 20px;
        }
        .image-container img {
            max-width: 100%;
            border-radius: 10px;
        }
    </style>
</head>
<body>
<div class="container">
<div class="image-container"><h2>Book an Appointment - Obstetrics and Gynecology</h2>
<img src="images/4-74.JPG" alt="" /></div>
<form id="form1" runat="server">
<asp:TextBox ID="TextBox1" runat="server" CssClass="form-input"  placeholder="Full name" ></asp:TextBox>
<asp:TextBox ID="TextBox2" runat="server" CssClass="form-input"  placeholder="The age"></asp:TextBox>
<asp:TextBox ID="TextBox3" runat="server" CssClass="form-input" placeholder="Phone number"></asp:TextBox>
<asp:TextBox ID="TextBox4" runat="server" CssClass="form-input" placeholder="Email" ></asp:TextBox>
<asp:TextBox ID="txtDate"  runat="server" TextMode="Date" required="required"></asp:TextBox>
<asp:DropDownList  ID="ddlPaymentMethod" runat="server"><asp:ListItem Value="">To choose</asp:ListItem>
<asp:ListItem Value="creditcard">Credit card</asp:ListItem><asp:ListItem Value="paypal">PayPal</asp:ListItem>
<asp:ListItem Value="banktransfer">Bank transfer</asp:ListItem></asp:DropDownList>
<asp:Button ID="Button1" runat="server" Text="Book an appointment" CssClass="login-button" OnClick="Button1_Click" />
<asp:Button ID="Button2" runat="server" Text="UPDATE" CssClass="login-button" OnClick="Button1_Click" />
</form></div></body></html>
