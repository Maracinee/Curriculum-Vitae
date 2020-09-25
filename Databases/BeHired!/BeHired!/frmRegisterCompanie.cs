using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Configuration;

namespace BeHired_
{
    public partial class frmRegisterCompanie : Form
    {
        public frmRegisterCompanie()
        {
            InitializeComponent();
            fillcombobox();
            fillcombobox1();
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void comboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void frmRegisterCompanie_Load(object sender, EventArgs e)
        {

        }

        public void fillcombobox()
        {
            string connString = ConfigurationManager.ConnectionStrings["BeHired_.Properties.Settings.Setting"].ConnectionString;
            SqlConnection con = new SqlConnection(connString);
            string sql = "SELECT Email FROM Utilizator";
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader myreader;
            try
            {
                con.Open();
                myreader = cmd.ExecuteReader();
                while (myreader.Read())
                {
                    string sname = myreader.GetString(0);
                    comboBox1.Items.Add(sname);
                }
            }
            catch (Exception e)
            {
                MessageBox.Show(e.Message);
            }
        }
        public void fillcombobox1()
        {
            string connString = ConfigurationManager.ConnectionStrings["BeHired_.Properties.Settings.Setting"].ConnectionString;
            SqlConnection con = new SqlConnection(connString);
            string sql = "SELECT Descriere FROM Job";
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader myreader;
            try
            {
                con.Open();
                myreader = cmd.ExecuteReader();
                while (myreader.Read())
                {
                    string sname = myreader.GetString(0);
                    comboBox2.Items.Add(sname);
                }
            }
            catch (Exception e)
            {
                MessageBox.Show(e.Message);
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            frmMain f1 = new frmMain();
            this.Hide();
            f1.ShowDialog();
            Application.Exit();
        }
    }
}
