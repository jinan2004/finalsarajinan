<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aboutus.aspx.cs" Inherits="jinan_sara.Aboutus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"/>
<style>
    body {
    font-family: 'Arial', sans-serif;
    background-color: #f8f9fa;
    color: #333;
}

    .logo1 img {
    max-width: 250px;
    position:absolute;
    top:0px;
    left:1px;
      margin-top:-20px;
    background-color:white;
        
}

        .logo2 img {
    max-width: 400px;
    margin-bottom: 30px;
    top:1px;
    margin-left:200px;
    margin-right:20px;
    position: relative; text-align: center;
        
}
        .caption{
            position: absolute; 
            bottom: 20px;
            left: 60%;
            transform: translateX(-50%);
            color:black;
            font-size: 30px;
            font-family:Georgia, 'Times New Roman', Times, serif;
            font-weight: bold;
            top:230px;
            padding: 2px;
            right:50px;
            
        }



    .container {
        margin-top: 50px;
        font-family: Georgia, 'Times New Roman', Times, serif;
        font-weight:900;
        color:#333333;
    }

.mission-card {
    background-color: #ffffff;
    border: 1px solid #007bff;
    border-radius: 8px;
    padding: 30px;
    text-align: center;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease;
   
}

.mission-card:hover {
    transform: translateY(-5px);

}

.mission-card i {
    color: #007bff;
}

.mission-card h4 {
    font-size: 1.5rem;
    font-weight: 700;
    margin-top: 15px;
}

.mission-card p {
    font-size: 1.1rem;
    margin-top: 10px;
    color: #555;
}

h2  {
    font-weight: 700;
    font-family: Georgia, 'Times New Roman', Times, serif;
    
}

h3 {
    font-weight: 700;
font-family: Georgia, 'Times New Roman', Times, serif;
}

h4 {font-weight: 700;
font-family: Georgia, 'Times New Roman', Times, serif; }
p {
    font-size: 1.1rem;
    color: #555;
}

@media (max-width: 768px) {
    .mission-card {
        margin-bottom: 30px;
    }
}
</style>
</head><body>
<header class="bg-primary text-white text-center py-4">
<div class="logo1"><img src="images/logo.PNG" alt="Logo"/></div>
<h1>A leading platform for searching for hospitals and clinics</h1></header>
<div class="logo2"><img src="images/About1.JPG" alt=""/>
<div class="caption">We are the leading multilingual search platform providing free and reliable health information 
about hospitals, clinics, doctors and services around the world</div></div>

<div class="container my-5">
<section class="text-center">
<div class="row"><div class="col-md-3"><div class="stat-card">
<i class="fas fa-globe fa-3x text-primary"></i>
<h3>45+</h3><p>Nation</p></div></div>
<div class="col-md-3"><div class="stat-card">
<i class="fas fa-hospital fa-3x text-primary"></i><h3>80k</h3><p>Global hospital</p></div></div>
<div class="col-md-3"><div class="stat-card">
<i class="fas fa-language fa-3x text-primary"></i><h3>40+</h3><p>language</p></div></div>
<div class="col-md-3"><div class="stat-card">
<i class="fas fa-thumbs-up fa-3x text-primary"></i><h3>9/10</h3><p>Recommend us</p></div></div></div></section></div>
        
<div class="container my-5"><section class="text-center">
<h2>Our mission and vision</h2><p>We seek to bridge the gap between geographical, informational and linguistic barriers between patients and healthcare providers</p>

<div class="row"><div class="col-md-4"><div class="mission-card">
<i class="fas fa-map-marked-alt fa-3x text-primary"></i>
<h4>Bridging the geographical gap</h4><p>We aim to make healthcare accessible from anywhere in the world</p></div></div>
            
<div class="col-md-4"><div class="mission-card">
<i class="fas fa-user-md fa-3x text-primary"></i>
<h4>Connecting patients with doctors</h4><p>We provide ways to facilitate access to the right doctors globally</p></div></div>

<div class="col-md-4"><div class="mission-card">
<i class="fas fa-info-circle fa-3x text-primary"></i>
<h4>Providing correct health information</h4><p>We guarantee to provide reliable health information that helps you make the right decisions</p></div></div>
</div></section></div>

<section class="text-center my-5"><h3>Challenges and solutions</h3>
<div class="row"><div class="col-md-4"><div class="card p-4">
<i class="fas fa-info-circle fa-3x text-primary"></i>
<h4 class="mt-3">Challenge: Lack of reliable information about global healthcare</h4>
<p>Solution: We only collect reliable healthcare information</p> </div></div>
         
<div class="col-md-4"><div class="card p-4">
<i class="fas fa-comments fa-3x text-primary"></i>
<h4 class="mt-3">Challenge: Inability to communicate due to language barriers</h4>
<p>Solution: We provide multilingual communication system</p></div></div>
            
<div class="col-md-4"><div class="card p-4">
<i class="fas fa-user-check fa-3x text-primary"></i>
<h4 class="mt-3">Challenge: Lack of trustworthy brokers and their services</h4>
<p>Solution: We have cut out the middlemen and allowed you to connect directly</p>
</div></div></div></section>

<section class="text-center my-4"><h4>Follow us on</h4>
<div class="social-icons">
<a href="https://www.linkedin.com" class="text-primary mx-3"><i class="fab fa-linkedin fa-2x"></i></a>
<a href="https://www.facebook.com" class="text-primary mx-3"><i class="fab fa-facebook fa-2x"></i></a>
<a href="https://www.instagram.com" class="text-primary mx-3"><i class="fab fa-instagram fa-2x"></i></a>
<a href="https://www.twitter.com" class="text-primary mx-3"><i class="fab fa-twitter fa-2x"></i></a>
</div></section>


<footer class="bg-primary text-white text-center py-3"><p>&copy;  Future Doctors 2025 All rights reserved </p></footer>

<form id="form1" runat="server">
<div></div>
</form></body></html>

