<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="jinan_sara.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet" />
    <style>
        body { font-family: Arial, sans-serif; direction: rtl; text-align: right; background-color:cornflowerblue; padding: 20px; }
        .container { width: 60%; margin: auto; background: white; padding: 20px; border-radius: 10px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); }
        .header { display: flex; align-items: center; justify-content: space-between; }
        .header h1 { flex: 1; text-align: center; color: #007BFF; }
        p{ font-weight:bold;}
        .main-image { width: 100%; border-radius: 10px; margin: 20px 0; }
        strong{text-align:center; color: #007BFF;font-size:30px;}
        .info { text-align: center; font-size: 18px; margin-bottom: 20px; }
        .contact-table { width: 100%; border-collapse: collapse; background: #eef5ff; border-radius: 5px; overflow: hidden; text-align: center;}
        .contact-table td { padding: 15px; font-size:22px;font-weight:bold;text-align:left;margin-left:auto;}
        .contact-table a { text-decoration: none; color: #007BFF; font-size: 16px; display: flex; align-items: center; justify-content: center; gap: 10px; }
        .contact-table img { width: 24px; }
        .location { text-align: center; font-size:30px;margin: 20px 0;color: #007BFF;}
        .video-container { text-align: center; }
    </style>
</head>
<body>
<div class="container"><div class="header">
<h1>Integrated medical center</h1></div>
<img class="main-image" src="images/41.JPEG" alt="" />
<p class="info">Trust us for premium healthcare delivered with care and expertise from the best doctors</p>
<table class="contact-table">
<tr><td colspan="3"><strong>Contact us</strong></td></tr>
<tr><td colspan="3">If you need any assistance in booking an appointment, please call our 24/7 helpline number</td></tr>
<tr>
<td><a href="mailto:your-email@example.com" class="text-primary mx-3"><i class="fas fa-envelope fa-2x"></i></a></td>
<td><a href="https://www.facebook.com" class="text-primary mx-3"><i class="fab fa-facebook fa-2x"></i></a></td>
<td><a href="https://wa.me/123456789" class="text-success mx-3" target="_blank"><i class="fab fa-whatsapp fa-2x"></i></a></td>
<td><a href="https://api.qrcode-monkey.com/tmp/ff6ea6ab682a938ee04ac5d5ff2c01b5.svg?1740877699178"><img src="images/qr-code.PNG" alt="" 
style="width: 100px; height: 100px;"/></a></td></tr></table>

<h1 class="location">Our website</h1>
<div style="text-align: center;"><a href="https://maps.google.com" target="_blank">
 <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13232.223185622339!2d36.1622690540017!3d33.991100562066556!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1518a476eeb0afb1%3A0x94242fa24b32e418!2sDouris!5e0!3m2!1sen!2slb!4v1740873674676!5m2!1sen!2slb" 
 width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></a></div>
 
 <div class="video-container">
 <video controls width="100%"><source src="video/WhatsApp Video 2025-03-01 at 6.34.16 PM.mp4" type="video/mp4"/>
 </video></div></div></body></html>
 
