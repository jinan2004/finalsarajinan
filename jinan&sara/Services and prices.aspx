<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Services and prices.aspx.cs" Inherits="jinan_sara.Services_and_prices" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet" />
<title></title>
<style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }
        header {
            background-color: #007BFF;
            color: white;
            padding: 15px;
            text-align: center;
            font-family:Arial;
            font-size:20px;
        }
        header nav ul {
            list-style: none;
            padding: 0;
            text-align: center;
        }
        header nav ul li {
            display: inline;
            margin: 0 20px;
        }
        header nav ul li a {
            color: white;
            text-decoration: none;
            font-weight: 500;
        }
        section#hero {
            background-size: cover;
            background-position: center;
            color:black;
            text-align: center;
            padding: 100px 20px;
        }
        section#hero h1 {
            font-size: 3em;
        }
        section#hero p{ font-weight:900;
                        padding:10px;
                        font-size:20px;
                        color:#007BFF;
        }
        

        .button {
    display: inline-block;
    padding: 10px 24px;
    background-color: #007bff;
    color: white;
    text-decoration: none;
    font-size: 16px;
    font-weight: bold;
    border-radius: 5px;
    transition: background-color 0.3s ease;
    margin: 20px 0;
    text-align: center;
    margin-left:600px;
    margin-top:-5px;

  }

  .button:hover {
    background-color: #218838;
  }

  /* تصميم الجدول */
  .consultation-table {
    width: 100%;
    margin-top: 20px;
    border-collapse: collapse;
    border-radius: 8px;
    overflow: hidden;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  }

  .consultation-table th, .consultation-table td {
    padding: 12px 15px;
    text-align: center;
    font-size: 16px;
  }

  .consultation-table th {
    background-color: #007bff;
    color: white;
  }

  .consultation-table td {
    background-color: #f9f9f9;
  }

  .consultation-table tr:nth-child(even) td {
    background-color: #f1f1f1;
  }

  .consultation-table tr:hover td {
    background-color: #e2e6ea;
  }

  
  .btn-book {
    padding: 8px 16px;
    background-color: #28a745;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  .btn-book:hover {
    background-color: #218838;
  }


    h2 {
        color: #007BFF;
    }
             
        section#services, section#pricing, section#contact {
            padding: 60px 20px;
            text-align: center;
            font-size:20px;
            font-weight:400;
            font-family:'Book Antiqua';
        }
        section#services .service-item {
            display: inline-block;
            width: 30%;
            margin: 10px;
            text-align: center;
        }
        section#pricing table {
            width: 100%;
            margin: 20px auto;
            border-collapse: collapse;
        }

        th{background-color: #007bff; color: white;}
        h3{ color:#007BFF; font-size:20px;}
        section#pricing p{ font-size:25px;
                           font-weight:200;
        }
        section#pricing table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 10px;
            text-align: center;
        }
        section#contact input, section#contact textarea {
            width: 80%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ddd;
        }
      
        footer {
            background-color:#007BFF;
            color: white;
            text-align: center;
            padding: 5px;
            font-size:20px;
            font-family:Cambria;
        }
</style></head><body>
<header><div class="logo"><h1>Our medical clinic</h1></div>
<nav><ul>
<li><a href="#Home">Home</a></li>
<li><a href="#services">services</a></li>
<li><a href="#pricing">pricing</a></li>
<li><a href="#contact">contact us</a></li>
</ul></nav></header>

<section id="hero">
<h1>Welcome to our specialized clinic 👩‍⚕️👨‍⚕️</h1>
<p>We are here to provide the best healthcare through telemedicine consultations or in-person visits 💬</p></section>
<a href="javascript:void(0);" class="button" id="book-consultation">Book your consultation now</a>
<div id="consultation-table" style="display: none;">
<table class="consultation-table">
<thead>
<tr><th>The date</th><th>The time</th><th>The place</th><th>Booking</th></tr></thead><tbody>
<tr><td>01/04/2025</td><td>10:00 AM</td><td>Clinic 1</td><td><button class="btn-book">Booking</button></td></tr>
<tr><td>02/04/2025</td><td>02:00 PM</td><td>Clinic 2</td><td><button class="btn-book">Booking</button></td></tr></tbody></table></div>

<script>
  document.getElementById('book-consultation').addEventListener('click', function() {
    var table = document.getElementById('consultation-table');
    if (table.style.display === 'none') {
      table.style.display = 'block';
    } else {
      table.style.display = 'none';
    }
  });
</script>

<section id="services">
<h2>Our medical services🏥</h2>
<div class="service-item">
<img src="images/download2.JPG" alt="" />
<h3>Telemedicine consultations</h3>
<p>Get online medical advice from the comfort of your home</p></div>
<div class="service-item">
<img src="images/download (1).JPG" alt="" />
<h3>Personal consultations</h3>
<p>Book an appointment to visit the clinic for personalized medical care</p></div>
<div class="service-item">
<img src="images/images (1).JPG" alt="" />
<h3>Specialized treatments</h3>
<p>We offer specialized treatments for a range of conditions</p></div></section>

<section id="pricing">
<h2>Prices for our services 💰</h2>
<table>
<tr><th>Service</th><th>The price</th></tr>
<tr><td>Remote medical consultation</td><td>100$</td></tr>
<tr><td>Personal consultation</td><td>150$</td></tr></table>
<h3>Discounts and offers 🎉</h3>
<p>Get 10% off for the first time 💥</p>
<p>20% discount when booking a 6-month consultation 📅</p>
<h3>Payment options 💳</h3>
<p>You can pay via PayPal or using Visa/Mastercard cards.</p></section>

<section id="contact">
<h2>Contact us 📞</h2>
<form id="form1" runat="server">
<asp:TextBox ID="TextBox1" runat="server" placeholder="your name"></asp:TextBox>
<asp:TextBox ID="TextBox2" runat="server" placeholder="Your email"></asp:TextBox>
<asp:TextBox  ID="queryMessage" runat="server" TextMode="MultiLine" Rows="4" Columns="110"  placeholder="Your message"></asp:TextBox>
<asp:Button ID="Button1" runat="server" Text="send" CssClass="btn-book" OnClick="Button1_Click" />
</form></section>

<footer><p>&copy;Our Medical Clinic | All Rights Reserved 2025</p>
<section class="text-center my-4">
<div class="social-icons"><p>Follow us on 
<a href="https://www.facebook.com" class="text-primary mx-3"><i class="fab fa-facebook fa-2x"></i></a>
<a href="https://www.instagram.com" class="text-primary mx-3"><i class="fab fa-instagram fa-2x"></i></a>
<a href="https://www.twitter.com" class="text-primary mx-3"><i class="fab fa-twitter fa-2x"></i></a></p>
</div></section></footer></body></html>
