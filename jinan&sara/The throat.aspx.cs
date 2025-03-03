using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace jinan_sara
{
    public partial class The_throat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text;
            string email = TextBox2.Text;
            string inquiry = queryMessage.Text;

           

            using (SqlConnection conn = new SqlConnection(@"Server=DESKTOP-L314VE0\SQLEXPRESS;Database=Jinan&Sara;Integrated Security=True;"))

            {
                try
                {
                    conn.Open();

                    string query = "INSERT INTO Throat  (Name, Email, Inquiry) VALUES (@Name, @Email, @Inquiry)";
                    using (SqlCommand command = new SqlCommand(query, conn))
                    {
                        command.Parameters.AddWithValue("@Name", name);
                        command.Parameters.AddWithValue("@Email", email);
                        command.Parameters.AddWithValue("@Inquiry", inquiry);

                        command.ExecuteNonQuery();

                       
                        Response.Write("<script>alert('The query has been sent successfully!')</script>");
                    }
                }
                
                catch (Exception ex)
                {
                    System.Diagnostics.Debug.WriteLine("Error: " + ex.ToString());
                    Response.Write("<script>alert('Error!! " + ex.Message + "')</script>");
                }
            }
        }
        

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}
