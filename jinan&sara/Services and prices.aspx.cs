using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jinan_sara
{
    public partial class Services_and_prices : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            

            try
            {
                using (SqlConnection conn = new SqlConnection(@"Server=DESKTOP-L314VE0\SQLEXPRESS;Database=Jinan&Sara;Integrated Security=True;"))
                {
                    conn.Open();

                    string query = "INSERT INTO ContactUs (Name, Email, Message) VALUES (@Name, @Email, @Message)";

                    using (SqlCommand command = new SqlCommand(query, conn))
                    {
                        
                        command.Parameters.AddWithValue("@Name", TextBox1.Text);
                        command.Parameters.AddWithValue("@Email", TextBox2.Text);
                        command.Parameters.AddWithValue("@Message", queryMessage.Text);

                        
                        command.ExecuteNonQuery();

                     
                        Response.Write("<script>alert('successfully!');</script>");
                        
                        TextBox1.Text = "";
                        TextBox2.Text = "";
                        queryMessage.Text = "";
                    }
                }
            }
            catch (Exception ex)
            {
                
                Response.Write("<script>alert('An error occurred: " + ex.Message + "');</script>");
            }
        }
    }
}
   
