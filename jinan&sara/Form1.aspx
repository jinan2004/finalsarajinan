<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form1.aspx.cs" Inherits="jinan_sara.Form1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Login Form1</title>
<style>
    body {
        background-image: url('images/40.JPEG'); /* تأكد من وضع الصورة في المسار الصحيح */
        background-size: cover;
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }

    .container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 70vh;
        flex-direction: column;
        text-align: center;
    }

    .logo img {
        width: 450px; /* حجم الشعار */
        margin-bottom: 30px;
        position:absolute;
        top:1px;
        left:1px;
        
        

    }

    .form-container {
        background-color:#0da7dc; /* خلفية الجدول باللون الأزرق السماوي */
        border-radius: 10px;
        padding: 30px;
        width: 500px;
    }

    .login-table {
        width: 100%;
        text-align: left;
    }

    .form-label {
        font-size: 18px;
        font-weight: bold;
        color: #90EE90;
        display: block;
        margin-bottom: 5px;
    }

    .form-input {
        width: 100%;
        padding: 10px;
        font-size: 16px;
        border: 2px solid #ddd;
        border-radius: 5px;
        margin-bottom: 20px;
        box-sizing: border-box;
    }

    .login-button {
        background-color: #90EE90; /* لون زر تسجيل الدخول (أخضر فاتح) */
        color: white;
        border: none;
        padding: 15px;
        font-size: 18px;
        width: 100%;
        cursor: pointer;
        border-radius: 5px;
        transition: background-color 0.3s;
    }

    .login-button:hover {
        background-color: #00BFFF; /* لون أزرق سماوي عند مرور الماوس على الزر */
    }
</style></head>
<body>
<form id="form1" runat="server">
<div class="container">
<div class="logo"><img src="images/logo.PNG" alt="Logo"/></div>
<div class="form-container">
<table class="login-table">
<tr><td><asp:Label ID="Label1" runat="server" Text="Username" CssClass="form-label"></asp:Label>
<asp:TextBox ID="TextBox1" runat="server" CssClass="form-input"></asp:TextBox></td></tr>
<tr><td><asp:Label ID="Label2" runat="server" Text="Password" CssClass="form-label"></asp:Label>
<asp:TextBox ID="TextBox2" runat="server" CssClass="form-input"></asp:TextBox></td></tr>
<tr><td><asp:Button ID="Button1" runat="server" Text="Login" CssClass="login-button" OnClick="Button1_Click" /></td></tr>
</table></div></div>
</form>
</body>
</html>
