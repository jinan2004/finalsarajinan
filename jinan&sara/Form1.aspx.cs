using Microsoft.SqlServer.Server;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jinan_sara
{
    public partial class Form1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Server=DESKTOP-L314VE0\SQLEXPRESS;Database=Jinan&Sara;Integrated Security=True;");
            conn.Open();
            string Username = TextBox1.Text;
            string Password = TextBox2.Text;
            string query = "Select * from Login where Username='" + Username + "' and Password='" + Password + "'";
            SqlDataAdapter sda = new SqlDataAdapter(query, conn);
            DataTable dtable = new DataTable();
            sda.Fill(dtable);

            if (dtable.Rows.Count > 0)
            {
                Response.Redirect("Form2.aspx");


            }
            else
            {
                // يمكنك إضافة رسالة خطأ في حالة عدم تطابق بيانات الدخول
                Response.Write("<script>alert('Invalid!!');</script>");
            }

        }
        }
    }

