<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Medicaldepartments.aspx.cs" Inherits="jinan_sara.Medicaldepartments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet"/>
<title></title>
<style>
    /* تصميم الصفحة بشكل عام */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f9fd;
}

.container {
    width: 90%;
    margin: 0 auto;
}

    .logo1 img {
    max-width: 250px;
    position:absolute;
    top:0px;
    left:1px;
    margin-top:-20px;
  
}


  
.search-container {
    text-align: center;
    margin-top: 20px;
}

.search-input {
    padding: 10px;
    width: 300px;
    font-size: 16px;
    border: 2px solid #0052cc;
    border-radius: 5px;
}

.search-button {
    padding: 10px 15px;
    font-size: 16px;
    background-color: #0052cc;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

.search-button:hover {
    background-color: #003d99;
}

.header {
    color:dodgerblue;
    padding: 20px 0;
    text-align: center;
    font-size: 32px;
    margin-top: 10px; /* المسافة من الشعار */
    margin-bottom:40px;
}

.section-container {
    display: flex;
    justify-content: space-between; /* توزيع الأقسام بينهما */
    flex-wrap: wrap; /* السماح للأقسام بالالتفاف */
    margin-top: 40px;
    gap: 20px; /* مسافة بين الأقسام */
}

.section {
    background-color: #ffffff;
    border-radius: 10px;
    text-align: center;
    width: 30%; /* العرض سيكون 30% لكل قسم */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    transition: all 0.3s ease;
}

.section:hover {
    transform: scale(1.05);
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
}

.section-link {
    text-decoration: none;
    color: inherit;
}

.image-container {
    width: 300px;
    height: 300px;
    overflow: hidden;
    margin: 0 auto;
    border-radius: 50%; /* الشكل الدائري للصورة */
    border: 5px solid #0052cc; /* حدود داكنة للصورة */
}

.section-image {
    width: 100%;
    height: 100%;
    object-fit: cover;
}

p {
    padding: 10px 0;
    font-size: 18px;
    color: #0052cc;
    margin: 0;
}

</style>
</head>
<body>
<form id="form1" runat="server" method="get" action="Medicaldepartments.aspx">
<div></div>
<div class="container"><h1 class="header">Medical departments</h1></div>
<div class="logo1"><img src="images/logo.PNG" alt="Logo"/></div>

<div class="search-container">
<input type="text" id="searchInput" name="search" class="search-input" placeholder="What are you looking for?" />
<button type="submit" class="search-button">
<i class="fas fa-search"></i> Research</button></div>
        
<div class="section-container"><div class="section">
<a href="Ophthalmology.aspx" class="section-link">
<div class="image-container">
<img src="images/ophthalmology.JPG" alt="" class="section-image"/></div><p>Ophthalmology</p></a></div>

<div class="section">
<a href="Obstetrics and gynecology.aspx" class="section-link">
<div class="image-container">
<img src="images/Obstetrics and gynecology.JPG" alt="" class="section-image"/></div><p>Obstetrics and gynecology</p></a></div>
 
<div class="section">
<a href="The throat.aspx" class="section-link">
<div class="image-container">
<img src="images/The throat.JPG" alt="" class="section-image"/></div><p>The throat</p></a></div>

<div class="section">
<a href="The heart.aspx" class="section-link">
<div class="image-container">
<img src="images/The heart.JPG" alt="" class="section-image"/></div><p>The heart</p></a></div>


<div class="section">
<a href="Digestive system.aspx" class="section-link">
<div class="image-container">
<img src="images/Digestive system.JPG" alt="" class="section-image"/></div><p>Digestive system</p></a></div>

<div class="section">
<a href="Tumors.aspx" class="section-link">
<div class="image-container">
<img src="images/Tumors.JPG" alt="" class="section-image"/></div><p>Tumors</p></a></div>

<div class="section">
<a href="Dentistry.aspx" class="section-link">
<div class="image-container">
<img src="images/dentistry.JPG" alt="" class="section-image"/></div><p>Dentistry</p></a></div>

<div class="section">
<a href="Pulmonology.aspx" class="section-link">
<div class="image-container">
<img src="images/Pulmonology.JPG" alt="" class="section-image"/></div><p>Pulmonology</p></a></div>

<div class="section">
<a href="Hematology and oncology.aspx" class="section-link">
<div class="image-container">
<img src="images/Hematology and oncology.JPG" alt="" class="section-image"/></div><p>Hematology and oncology</p></a></div>

<div class="section">
<a href=" Care of bronchitis and pulmonary tissue.aspx" class="section-link">
<div class="image-container">
<img src="images/Care of bronchitis and pulmonary tissue.JPG" alt="" class="section-image"/></div>
 <p> Care of bronchitis and pulmonary tissue</p></a></div>


<div class="section">
<a href="Flexible bronchoscopy procedure for children.aspx" class="section-link">
<div class="image-container">
<img src="images/Flexible bronchoscopy procedure for children.JPG" alt="" class="section-image"/></div>
<p>Flexible bronchoscopy procedure for children</p></a></div>


<div class="section">
<a href="Nephrology.aspx" class="section-link">
<div class="image-container">
<img src="images/Nephrology.JPG" alt="" class="section-image"/></div><p>Nephrology</p></a></div>


<div class="section">
<a href="pediatrics.aspx" class="section-link">
<div class="image-container">
<img src="images/pediatrics.JPG" alt="" class="section-image"/></div><p>pediatrics</p></a></div>


<div class="section">
<a href="Rheumatism.aspx" class="section-link">
<div class="image-container">
<img src="images/Rheumatism.JPG" alt="" class="section-image"/></div><p>Rheumatism</p></a></div>


<div class="section">
<a href="Treatment of obstructive lung diseases.aspx" class="section-link">
<div class="image-container">
<img src="images/Treatment of obstructive lung diseases.JPG" alt="" class="section-image"/></div>
<p>Treatment of obstructive lung diseases</p></a></div></div>


</form></body></html>
