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
    public partial class ViewPatient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int patientId = Convert.ToInt32(Request.QueryString["id"]);
                LoadPatientDetails(patientId);
            }
        }

        private void LoadPatientDetails(int patientId)
        {
            string connectionString = "Server=DESKTOP-L314VE0\\SQLEXPRESS;Database=Jinan&Sara;Integrated Security=True;";
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT PatientName, PhoneNumber  FROM Patients WHERE PatientID = @PatientID";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@PatientID", patientId);
                conn.Open();

                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    reader.Read();
                    lblPatientName.Text = "Patient's name: " + reader["PatientName"].ToString();
                    lblPhoneNumber.Text = "phone number: " + reader["PhoneNumber"].ToString();
                }
            }
        }
    }
}
       
