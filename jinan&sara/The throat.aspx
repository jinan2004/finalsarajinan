<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="The throat.aspx.cs" Inherits="jinan_sara.The_throat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        
body {
  font-family: Arial, sans-serif;
  background-color: #f9f9f9;
  margin: 0;
  padding: 0;
}

header {
  background-color:#007BFF;
  color: white;
  text-align: center;
  padding: 20px 0;
}




 .appointment-table h2{
      color:#007BFF;
      text-align: center;
 }


 
throat-info {
  text-align: center;
  margin: 20px;
}


    .throat-info .box-container{
        padding:4rem;

    }
    .throat-info  .box-container .box {
        display: flex;
        align-items: center;
        justify-content: space-between;
        width: 100%;
}

    .throat-info .box-container .box .images{
        height:350px;
        width:800px;

    }
     .throat-info .box-container .box .images img {
         height:100%;
         width:100%;

     }

      .throat-info .box-container .box .content{
          height:100%;
          width:50%;
          padding:2rem;
      }

       .throat-info .box-container .box .content h2{
           font-size:30px;
           color:#007BFF;
           display:flex;
           align-items:start;
       }
        .throat-info .box-container .box .content p{
            font-size:20px;
            color:var(--black);
            padding:1rem 0;
            text-align:start;
            font-family:Arial;
        }

      
 .contact-form {
    background-color: #fff;
    width: 100%;
    max-width: 800px;
    margin: 50px auto;
    padding: 30px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
  }

  h2 {
    text-align: center;
    font-size: 1.8em;
    margin-bottom: 20px;
    color:#007BFF;
  }


  .form-label {
    font-size: 1em;
    margin-bottom: 8px;
    display: block;
    color:green;
  }

  .form-input {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #007BFF;
    border-radius: 4px;
    font-size: 1em;
    color: #333;
    box-sizing: border-box;
  }

  .form-input{
    border-color: #4CAF50;
    outline: none;
  }

  .login-button {
    width: 100%;
    padding: 22px;
    background-color: #4CAF50;
    color: white;
    font-size: 1.1em;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  .login-button:hover {
    background-color:#007BFF ;
  }



.motivational-quote {
  font-style: italic;
  text-align: center;
  padding: 15px;
  background-color: #007BFF;
  border-radius: 5px;color:antiquewhite;
}

</style></head><body>
<header><h1>Otorhinolaryngology Department</h1></header>

<section class="throat-info">
<div class="box-container"><div class="box"><div class="images">
<img src="images/shutterstock.JPG" alt=""/></div>
<div class="content">
<h2>Information about the larynx</h2>
<p>The larynx is part of the respiratory system and is located in the neck. It plays an important role in the process of breathing, voice, and swallowing. The larynx consists of cartilage, muscles, and vocal cords that move to produce sound when breathing or speaking. 
Some people may suffer from problems in the larynx such as laryngitis, tumors, or hoarseness, which require consulting a specialist doctor</p></div></div></div></section>



<section class="contact-form">
<h2>Inquiry about the larynx</h2>
<form id="form1" runat="server">
<asp:Label ID="Label1" runat="server" Text="your name" CssClass="form-label"></asp:Label>
<asp:TextBox ID="TextBox1" runat="server" CssClass="form-input"></asp:TextBox>
<asp:Label ID="Label2" runat="server" Text="Email" CssClass="form-label"></asp:Label>
<asp:TextBox ID="TextBox2" runat="server" CssClass="form-input"></asp:TextBox>
<asp:Label ID="Label3" runat="server" Text="Your inquiry" CssClass="form-label"></asp:Label>
<asp:TextBox ID="queryMessage" runat="server" TextMode="MultiLine" Rows="4" Columns="110" ></asp:TextBox>
<asp:Button ID="Button1" runat="server" Text="Send inquiry" CssClass="login-button" OnClick="Button1_Click" />
</form></section>

<section class="motivational-quote">
<p>Your health is more important than anything, and we are here to support you.</p></section>
</body></html>
