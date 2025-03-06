<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewPatient.aspx.cs" Inherits="jinan_sara.ViewPatient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
        body { font-family: Arial, sans-serif; background-color: #f9f9f9; color: #333; }
        h3 { color: #007BFF; text-align: center; margin-bottom: 20px; }
        .patient-info { width: 80%; margin: 0 auto; background-color: #fff; padding: 20px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); }
        .info-title { color: #007BFF; font-weight: bold; }
        .info-value { margin-left: 10px; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div class="patient-info">
            <h3>Patient details</h3>
            <asp:Label ID="lblPatientName" runat="server" Text="Patient name: " CssClass="info-title" />
            <span class="info-value"><%# Eval("PatientName") %></span><br />
            <asp:Label ID="lblPhoneNumber" runat="server" Text="phone number: " CssClass="info-title" />
            <span class="info-value"><%# Eval("PhoneNumber") %></span><br />
            
        </div>
    </form>
</body>
</html>
