<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="The heart.aspx.cs" Inherits="jinan_sara.The_heart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title> 
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        header {
            background-color:#007BFF;
            color: white;
            text-align: center;
        }

         .image-container  {
            width: 900px;
            height: 300px;
            position: relative;
            overflow: hidden;
            margin-left:280px;
        }
        .image-container  img {
            position: absolute;
            width: 100%;
            height: 100%;
            opacity: 0;
            animation: slide 12s infinite;
        }

        .image-container img:nth-child(1) {
            animation-delay: 0s;
        }

        .image-container img:nth-child(2) {
            animation-delay: 2s;
        }

        .image-container img:nth-child(3) {
            animation-delay: 4s;
        }

        .image-container img:nth-child(4) {
            animation-delay: 6s;
        }

        @keyframes slide {
            0%, 25% {
                opacity: 1;
            }
            50%, 100% {
                opacity: 0;
            }
        }

         .content p{
             font-size:25px;
             color:var(--black);
              padding:1rem 0;
              text-align:start;
             font-family:Arial;
        }
        .container {
            padding: 20px;
        }
        .section {
            margin-bottom: 30px;
        }
        h2 {
           color:#007BFF;
           text-align: center;
        }
       
        .video-section {
    margin-top: 30px;
    text-align: center;
}
      video {
    max-width: 30%;
    border-radius: 4px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}
     

      body {
  font-family: Arial, sans-serif;
  background-color: #f4f7fa;
  margin: 0;
  padding: 0;
}


.form-container {
  background-color:deepskyblue;
  margin: 50px auto;
  padding: 20px;
  border-radius: 8px;
  box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
  width:1000px;
}

.form-container h2 {
  font-size: 24px;
  text-align: center;
  color: #333;
  margin-bottom: 20px;
}


label {
  display: block;
  font-weight: bold;
  color: #555;
  margin: 10px 0 5px;
}

input, textarea {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
  margin-bottom: 15px;
  box-sizing: border-box;
  font-size: 16px;
}

textarea {
  resize: vertical;
}


button {
  background-color: #4CAF50;
  color: white;
  border: none;
  padding: 12px 20px;
  font-size: 16px;
  width: %;
  border-radius: 5px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

button:hover {
  background-color:brown;
}
     

</style></head><body>
<header><h1>Cardiology department</h1></header>
<div class="image-container">
<img src="images/2-cardilogy.JPG" alt="Image 1" />
<img src="images/3-cardiology.JPG" alt="Image 2" />
<img src="images/4-cardilogy.JPG" alt="Image 3" />
<img src="images/25.JPG" alt="Image 4" /></div>
<div class="content">
<p>The heart is the main organ of the circulatory system, pumping blood to all parts of the body through the blood vessels.
The heart consists of four chambers: the right side contains deoxygenated blood, while the left side contains oxygen-rich blood.</p></div>


<h2>Explanatory video</h2>
<div class="video-section">
<div style="position:relative;padding-bottom:56.25%;height:0;overflow:hidden;">
<iframe src="https://geo.dailymotion.com/player.html?video=x807ptx"
 style="width:100%; height:100%; position:absolute; left:0px; top:0px; overflow:hidden; border:none;" allowfullscreen title="Dailymotion Video Player"
 allow="web-share"></iframe></div></div>
   
<div class="section form-container">
<h2>Patient login form</h2>
<form id="form1" runat="server">
<asp:Label ID="Label1" runat="server" Text="Full name"></asp:Label>
<asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
<asp:Label ID="Label2" runat="server" Text="Date of birth"></asp:Label>
<asp:TextBox ID="txtDate" runat="server" TextMode="Date" required="required"></asp:TextBox>
<asp:Label ID="Label3" runat="server" Text="ID number"></asp:Label>
<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
<asp:Label ID="Label4" runat="server" Text="Phone number"></asp:Label>
<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
<asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
<asp:Label ID="Label6" runat="server" Text="Required specialization"></asp:Label>
<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
<asp:Label ID="Label7" runat="server" Text="Preferred date to visit"></asp:Label>
<asp:TextBox ID="txtDate1" runat="server" TextMode="Date" required="required"></asp:TextBox>
<asp:Label ID="queryMessage" runat="server"  Text="Health condition" Rows="80" Columns="110"></asp:Label>
<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
<asp:Button ID="Button1" runat="server" Text="Login" CssClass="login-button" OnClick="Button1_Click" />

</form></div></body></html>
