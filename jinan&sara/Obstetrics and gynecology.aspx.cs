using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace jinan_sara
{
    public partial class Obstetrics_and_gynecology : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            

            if (Button1.Text == "Book an appointment")
            {
                InsertData();
            }
            else if (Button1.Text == "UPDATE")
            {
                UpdateData();
            }
        }

        private void InsertData()
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(@"Server=DESKTOP-L314VE0\SQLEXPRESS;Database=Jinan&Sara;Integrated Security=True;"))

                {
                    conn.Open();

                    string query = "INSERT INTO Appointments (FullName, Age, PhoneNumber, Email, AppointmentDate, PaymentMethod) VALUES (@FullName, @Age, @PhoneNumber, @Email, @AppointmentDate, @PaymentMethod)";

                    using (SqlCommand command = new SqlCommand(query, conn))
                    {
                        command.Parameters.AddWithValue("@FullName", TextBox1.Text);
                        command.Parameters.AddWithValue("@Age", TextBox2.Text);
                        command.Parameters.AddWithValue("@PhoneNumber", TextBox3.Text);
                        command.Parameters.AddWithValue("@Email", TextBox4.Text);
                        command.Parameters.AddWithValue("@AppointmentDate", txtDate.Text);
                        command.Parameters.AddWithValue("@PaymentMethod", ddlPaymentMethod.SelectedValue);

                        command.ExecuteNonQuery();
                    }
                }

               
                Response.Write("<script>alert('Data saved successfully!');</script>");
            }
            catch (Exception ex)
            {
                
                Response.Write("<script>alert('ERROR!! " + ex.Message + "');</script>");
            }
        }

        private void UpdateData()
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(@"Server=DESKTOP-L314VE0\SQLEXPRESS;Database=Jinan&Sara;Integrated Security=True;"))
                {
                    conn.Open();

                     
                    string query = "UPDATE Appointments SET FullName = @FullName, Age = @Age, PhoneNumber = @PhoneNumber, Email = @Email, AppointmentDate = @AppointmentDate, PaymentMethod = @PaymentMethod WHERE ID = @ID";

                    using (SqlCommand command = new SqlCommand(query, conn))
                    {
                        command.Parameters.AddWithValue("@FullName", TextBox1.Text);
                        command.Parameters.AddWithValue("@Age", TextBox2.Text);
                        command.Parameters.AddWithValue("@PhoneNumber", TextBox3.Text);
                        command.Parameters.AddWithValue("@Email", TextBox4.Text);
                        command.Parameters.AddWithValue("@AppointmentDate", txtDate.Text);
                        command.Parameters.AddWithValue("@PaymentMethod", ddlPaymentMethod.SelectedValue);
                        command.Parameters.AddWithValue("@ID", Session["RecordID"]); 

                        command.ExecuteNonQuery();
                    }
                }

             
                Response.Write("<script>alert('Data saved successfully!');</script>");
            }
            catch (Exception ex)
            {
                
                Response.Write("<script>alert('ERROR!!" + ex.Message + "');</script>");
            }
        }


    }
}
