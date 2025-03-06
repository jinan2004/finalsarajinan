using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace jinan_sara
{
    public partial class Ophthalmology_Patients : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadPatients();
            }
        }

        private void LoadPatients()
        {
            string connectionString = "Server=DESKTOP-L314VE0\\SQLEXPRESS;Database=Jinan&Sara;Integrated Security=True;";
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT PatientID, PatientName, PhoneNumber FROM Patients ORDER BY PatientName ASC";
                SqlDataAdapter da = new SqlDataAdapter(query, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);

                PatientsRepeater.DataSource = dt;
                PatientsRepeater.DataBind();
            }
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                
                int patientID = Convert.ToInt32(e.CommandArgument);

                
                DeletePatient(patientID);

                
                BindPatientData();
            }
        }

        private void DeletePatient(int id)
        {
            string connectionString = "Server=DESKTOP-L314VE0\\SQLEXPRESS;Database=Jinan&Sara;Integrated Security=True;";
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM Patients WHERE PatientID = @PatientID";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@PatientID", id);
                    conn.Open();
                    cmd.ExecuteNonQuery(); 
                }
            }
        }

        private void BindPatientData()
        {
            string connectionString = "Server=DESKTOP-L314VE0\\SQLEXPRESS;Database=Jinan&Sara;Integrated Security=True;";
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT PatientID, PatientName, PhoneNumber FROM Patients";
                SqlDataAdapter da = new SqlDataAdapter(query, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                PatientsRepeater.DataSource = dt;
                PatientsRepeater.DataBind();
            }
        }
    }
    }
