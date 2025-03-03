using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace jinan_sara
{
    public partial class Ophthalmology : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(@"Server=DESKTOP-L314VE0\SQLEXPRESS;Database=Jinan&Sara;Integrated Security=True;");
            conn.Open();
            
            string patientName = TextBox1.Text;
            string phoneNumber = TextBox2.Text;
            string email = TextBox3.Text;
            string dateOfVisit = TextBox4.Text;

            {
                try
                {
                    

                   
                string insertQuery = "INSERT INTO Patients (PatientName, PhoneNumber, Email, DateOfVisit) VALUES (@PatientName, @PhoneNumber, @Email, @DateOfVisit)";

                    using (SqlCommand command = new SqlCommand(insertQuery, conn))
                    {
                    
                        command.Parameters.AddWithValue("@PatientName", patientName);
                        command.Parameters.AddWithValue("@PhoneNumber", phoneNumber);
                        command.Parameters.AddWithValue("@Email", email);
                        command.Parameters.AddWithValue("@DateOfVisit", dateOfVisit);

                       
                        command.ExecuteNonQuery();

                        
                        Response.Write("<script>alert('Data saved successfully!');</script>");

                        
                        TextBox1.Text = "";
                        TextBox2.Text = "";
                        TextBox3.Text = "";
                        TextBox4.Text = "";
                    }
                }
                catch (Exception ex)
                {
                   
                    Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
                }
            }

        }
    }
}
