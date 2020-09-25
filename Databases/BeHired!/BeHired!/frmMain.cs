using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Configuration;
using System.Data.SqlClient;

namespace BeHired_
{
    public partial class frmMain : Form
    {
        public frmMain()
        {
            InitializeComponent();
        }

        private void frmMain_Load(object sender, EventArgs e)
        {
            dataGridView1.DataSource = GetData();
            dataGridView2.DataSource = GetData1();
            dataGridView3.DataSource = GetData2();
        }

        private DataTable GetData()
        {
            DataTable date = new DataTable();
            string connString = ConfigurationManager.ConnectionStrings["BeHired_.Properties.Settings.Setting"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT dbo.Companie.Id, dbo.Companie.Nume, dbo.Job.Descriere, dbo.Localitate.Judet, dbo.Localitate.Localitate, dbo.Companie.cod FROM dbo.Companie INNER JOIN dbo.Job ON dbo.Job.Id = dbo.Companie.Job_id INNER JOIN dbo.Localitate ON dbo.Localitate.Id = dbo.Companie.Locatie_id", con))
                {
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    date.Load(reader);
                }
            }
            return date;
        }
        private DataTable GetData1()
        {
            DataTable date = new DataTable();
            string connString = ConfigurationManager.ConnectionStrings["BeHired_.Properties.Settings.Setting"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT dbo.Job.Id, dbo.Domeniu.Denumire, dbo.Job.Descriere, dbo.Job.Salariu FROM dbo.Job INNER JOIN dbo.Domeniu ON dbo.Job.Domeniu_id = dbo.Domeniu.Id", con))
                {
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    date.Load(reader);
                }
            }
            return date;
        }
        private DataTable GetData2()
        {
            DataTable date = new DataTable();
            string connString = ConfigurationManager.ConnectionStrings["BeHired_.Properties.Settings.Setting"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT dbo.Utilizator.Id, dbo.Utilizator.Nume, dbo.Utilizator.Prenume, dbo.Utilizator.Email, dbo.Localitate.Localitate FROM dbo.Utilizator INNER JOIN dbo.Localitate ON dbo.Utilizator.Locatie_id = dbo.Localitate.Id", con))
                {
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    date.Load(reader);
                }
            }
            return date;
        }
        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            frmRegister f1 = new frmRegister();
            this.Hide();
            f1.ShowDialog();
            Application.Exit();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            frmRegisterCompanie f1 = new frmRegisterCompanie();
            this.Hide();
            f1.ShowDialog();
            Application.Exit();
        }
    }
}
