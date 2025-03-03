<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Digestive system.aspx.cs" Inherits="jinan_sara.Digestive_system" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style>
        body { font-family: Arial, sans-serif; text-align: right; direction: rtl; padding: 20px; background-color: #f9f9f9;}
        h2{text-align:center;background-color:#007BFF;color:white;padding:20px;}
        .container { width: 50%; margin: auto; background: white; padding: 20px; border-radius: 10px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);}
        img { max-width: 100%; border-radius: 10px;width:1200PX; }
        table { width: 100%; margin: 20px 0; border: 1px solid #ddd; border-collapse: collapse; text-align:center; background: #fff; border-radius: 10px; overflow: hidden; }
         td { padding: 15px; border: 1px solid #ddd; text-align: right;font-weight:bold; }
        .doctor-img { width: 400px; border-radius: 50%; margin: auto;border: 3px solid #007BFF; }
        .form-group { margin: 10px 0; }
        input, textarea { width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px;font-size: 14px; }
        button { background-color: #007BFF; color: white; padding: 12px 20px; border: none; border-radius: 5px; cursor: pointer;font-size: 16px; width: 100%; }
         button:hover { background-color: #0056b3; }
        .info { margin-bottom: 20px; font-weight:bold;font-size:20px;padding: 15px; background: #eef5ff; border-radius: 5px;}
        .info strong{color:#007BFF; text-align:left;display:block;}
        strong{color:#007BFF;}
        table p{font-weight:bold;font-size:20px;}
    
    </style></head><body>
    <h2>Digestive system</h2>
    <div class="container">
    <img src="images/Gastrointestinal.PNG" alt="" />
    <div class="info">
    <p><strong>?What is the digestive system</strong> The digestive system is a group of organs responsible for digesting food and absorbing nutrients</p>
    <p><strong>?What are his diseases</strong> Gastrointestinal diseases include ulcers, gastroesophageal reflux, gastritis, and inflammatory bowel disease</p></div></div>
    <form id="form1" runat="server">
    <table>
    <tr><td rowspan="6" style="text-align: center;background: #f1f1f1;">
    <img class="doctor-img" src="images/cetin-karaca-sidebar.JPG" alt="" />
    <p><strong>Dr. Çetin Karaca, MD</strong></p>
    <p>Gastroenterologist and Hepatologist</p>
    <p>You can fill out the form to get detailed information or schedule an examination</p</td></tr>
     <tr><td><asp:TextBox ID="TextBox1" runat="server" placeholder="The name"></asp:TextBox></td></tr>
     <tr><td><asp:TextBox ID="TextBox2" runat="server" placeholder="Phone"></asp:TextBox></td></tr>
     <tr><td><asp:TextBox ID="TextBox3" runat="server"  placeholder=" Email"></asp:TextBox></td></tr>
     <tr><td><asp:TextBox ID="queryMessage" runat="server" placeholder="Message" rows="4"></asp:TextBox></td></tr>
     <tr><td  style="text-align: center;">
     <asp:Button ID="Button1" runat="server" Text="send" OnClick="Button1_Click" /></td></tr>
      </table></form></body></html>
