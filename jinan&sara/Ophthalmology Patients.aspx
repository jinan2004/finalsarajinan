<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ophthalmology Patients.aspx.cs" Inherits="jinan_sara.Ophthalmology_Patients" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f9f9f9; color: #333; }
        h3 { color:#007BFF; text-align: center; margin-bottom: 20px; }
        table { width: 80%; margin: 0 auto; border-collapse: collapse; background-color: #fff; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); }
        th, td { border: 1px solid #007BFF; padding: 10px; text-align: center; }
        th { background-color: #007BFF; color: #fff; }
        tr:nth-child(even) { background-color: #f2f2f2; }
        a { color: #007BFF; text-decoration: none; }
        a:hover { text-decoration: underline; color: #333; }
        a.back-link { color: #007BFF; text-decoration: none; font-size: 14px; font-weight: bold; float: right; }
        a.back-link:hover { text-decoration: underline; color: black; }
    </style>
</head>
<body>  <form id="form2" runat="server">
    <h3>All Patients List <a href="Dashboard.aspx" class="back-link">Back</a></h3>
    <table>
        <tr>
            <th>Patient Name</th>
            <th>Phone Number</th>
            <th>Show Profile</th>
            <th>Delete</th>
        </tr>
        <asp:Repeater ID="PatientsRepeater" runat="server" OnItemCommand="Repeater1_ItemCommand">  <ItemTemplate>
                <tr>
                    <td><%# Eval("PatientName") %></td>
                    <td><%# Eval("PhoneNumber") %></td>
                    <td><a href='ViewPatient.aspx?id=<%# Eval("PatientID") %>'>View Details</a></td>
                    <td><asp:Button ID="DeleteButton" runat="server" Text="Delete" CommandName="Delete" CommandArgument='<%# Eval("PatientID") %>'  />
                    </td>
                     
                </tr></ItemTemplate></asp:Repeater></table></form></body></html>
