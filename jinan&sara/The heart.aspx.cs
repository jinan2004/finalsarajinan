using System;
using System.Data.SqlClient;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace jinan_sara
{
    public partial class The_heart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = @"Server=DESKTOP-L314VE0\SQLEXPRESS;Database=Jinan&Sara;Integrated Security=True;";
            string query = "INSERT INTO Heart (FullName, DateOfBirth, IDNumber, PhoneNumber, Email, RequiredSpecialization, PreferredVisitDate, HealthCondition) VALUES (@FullName, @DateOfBirth, @IDNumber, @PhoneNumber, @Email, @RequiredSpecialization, @PreferredVisitDate, @HealthCondition)";

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    using (SqlCommand command = new SqlCommand(query, conn))
                    {
                        try
                        {
                            
                            Console.WriteLine("FullName: " + TextBox1.Text);
                            Console.WriteLine("DateOfBirth: " + txtDate.Text);
                            Console.WriteLine("IDNumber: " + TextBox3.Text);
                            Console.WriteLine("PhoneNumber: " + TextBox4.Text);
                            Console.WriteLine("Email: " + TextBox5.Text);
                            Console.WriteLine("RequiredSpecialization: " + TextBox6.Text);
                            Console.WriteLine("PreferredVisitDate: " + txtDate1.Text);
                            Console.WriteLine("HealthCondition: " + TextBox8.Text);

                            command.Parameters.AddWithValue("@FullName", TextBox1.Text);
                            command.Parameters.AddWithValue("@DateOfBirth", txtDate.Text);
                            command.Parameters.AddWithValue("@IDNumber", TextBox3.Text);
                            command.Parameters.AddWithValue("@PhoneNumber", TextBox4.Text);
                            command.Parameters.AddWithValue("@Email", TextBox5.Text);
                            command.Parameters.AddWithValue("@RequiredSpecialization", TextBox6.Text);
                            command.Parameters.AddWithValue("@PreferredVisitDate", txtDate1.Text);
                            command.Parameters.AddWithValue("@HealthCondition", TextBox8.Text);

                            int rowsAffected = command.ExecuteNonQuery();
                            Console.WriteLine("rowsAffected: " + rowsAffected); 

                            if (rowsAffected > 0)
                            {
                                Label1.Text = "Successfully inserted!";
                            }
                            else
                            {
                                Label1.Text = "Insertion failed.";
                            }
                        }
                        catch (Exception innerEx)
                        {
                            Console.WriteLine("Inner Exception: " + innerEx.Message);
                            Label1.Text = "Inner Error: " + innerEx.Message;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Label1.Text = "Error: " + ex.Message;
                System.IO.File.AppendAllText("error.log", DateTime.Now.ToString() + ": " + ex.Message + Environment.NewLine);
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
