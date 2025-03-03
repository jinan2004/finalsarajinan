<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ophthalmology.aspx.cs" Inherits="jinan_sara.Ophthalmology" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
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
            padding: 20px;
        }
        h1 {
            margin: 0;
        }
        h2{
            color:#007BFF;
            text-align: center;
            font-size:30px;
        }
        .container {
            width: 80%;
            margin: 30px auto;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        .image-section {
            text-align: center;
            margin-bottom: 20px;
        }
        .image-section img {
            width:1000px;
            max-width: 800px;
            height:400px;
            border-radius: 8px;
        }
        .info-section, .operation-section {
            margin-bottom: 30px;
        }
        .info-section p, .operation-section p {
            font-size: 25px;
            line-height: 1.6;
            color: #333;
            font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-weight:bold;
        }
        .login-form {
            display: flex;
            flex-direction: column;
            align-items: center;border:20px solid #007BFF;padding:40px;width:400px;            
        }
        .login-form input[type="text"], .login-form input[type="password"] {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
            border: 3px solid #007BFF;;
            border-radius: 4px;color:black;
        }



        .form-label {
    font-size: 18px;
    font-weight: bold;
    color: #90EE90;
    display: block;
    margin-bottom: 5px;
}


        .login-button  {
            width: 85%;
            padding: 12px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
        }
        .login-button:hover {
            background-color:#28a745;
        }
        .doctor-info{margin-right:-50px;margin-left:80px;}
        .doctor-image {
    width: 400px; 
    height: 400px; 
    border-radius: 50%; /* لجعل الصورة دائرية */
    object-fit: cover; /* لملء الصورة للمساحة المحددة */
    margin-bottom: 10px;
    border: 5px solid #007BFF;
}

.doctor-name {
    font-size: 20px;
    font-weight: bold;
    color: #333;
}

        table {
            width: 100%;
            margin-top: 30px;
            border-collapse: collapse;
        }
        table th, table td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        table th {
            background-color: #3498db;
            color: white;
        }
        .video-section {
            margin-top: 30px;
            text-align: center;
        }
        video {
            max-width: 100%;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
    </style>
    </head>
    <body>
    <header><h1>Information about ophthalmology</h1></header>
    <div class="container"><div class="image-section">
    <img src="images/20.JPG" alt=""/></div>
    <div class="info-section">
    <p>Ophthalmology is the branch of medicine that deals with the diagnosis and treatment of eye problems.
     It involves a complete eye examination and diagnosis of diseases such as cataracts, vision problems, and glaucoma. 
     Ophthalmologists use advanced techniques such as microscopic eye examinations and imaging tests to detect any problems early.</p></div>

    <div class="operation-section">
     <h2>Ophthalmology surgeries</h2>
     <p>Ophthalmology surgeries include several types such as cataract surgery, refractive surgery,
      and other surgeries such as corneal transplantation or retinal correction surgery.</p></div>

     <div class="video-section">
     <div style="position:relative;padding-bottom:56.25%;height:0;overflow:hidden;">
     <iframe src="https://geo.dailymotion.com/player.html?video=x807pur"style="width:100%; height:100%; position:absolute; left:0px; 
     top:0px; overflow:hidden; border:none;" allowfullscreen title="Dailymotion Video Player" allow="web-share"></iframe></div></div>

     <div style="display: flex; justify-content: center; align-items: center;">
    <div class="login-form"><h2>Patient login</h2>
     <form id="form1" runat="server">
     <asp:Label ID="Label1" runat="server" Text="Patient's name" CssClass="form-label"></asp:Label>
     <asp:TextBox ID="TextBox1" runat="server" CssClass="form-input"></asp:TextBox>
     <asp:Label ID="Label2" runat="server" Text="Phone number" CssClass="form-label"></asp:Label>
     <asp:TextBox ID="TextBox2" runat="server" CssClass="form-input"></asp:TextBox>
     <asp:Label ID="Label3" runat="server" Text="Email" CssClass="form-label"></asp:Label>
     <asp:TextBox ID="TextBox3" runat="server" CssClass="form-input"></asp:TextBox>
     <asp:Label ID="Label4" runat="server" Text="Date of visit" CssClass="form-label"></asp:Label>
     <asp:TextBox ID="TextBox4" runat="server" CssClass="form-input"></asp:TextBox>
     <asp:Button ID="Button1" runat="server" Text="Login" CssClass="login-button" OnClick="Button1_Click" /></form></div> 
     <div class="doctor-info">
     <img src="images/dr-ramzi.JPG" alt="" class="doctor-image" />
      <h3>Dr. Ramzi Allam El-Din Ophthalmologist</h3></div></div>


    <h2>Patient registration table</h2>
    <table><thead>
     <tr><th>Patient's name</th><th>Phone number</th><th>Email</th><th>Date of visit</th></tr>
     </thead><tbody><tr><td>ali</td><td>0123456789</td><td>ali@example.com</td><td>01-03-2025</td></tr>
     <tr><td>fatima</td><td>0987654321</td><td>fatima@example.com</td><td>02-03-2025</td></tr></tbody></table></div></body></html>
