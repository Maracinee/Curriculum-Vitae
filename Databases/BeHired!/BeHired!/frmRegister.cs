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
    public partial class frmRegister : Form
    {
        public frmRegister()
        {
            InitializeComponent();
            fillcombobox();
            fillcombobox1();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void frmRegister_Load(object sender, EventArgs e)
        {
         
        }
        public void fillcombobox()
        {
            string connString = ConfigurationManager.ConnectionStrings["BeHired_.Properties.Settings.Setting"].ConnectionString;
            SqlConnection con = new SqlConnection(connString);
            string sql = "SELECT Judet FROM Localitate";
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
            string sql = "SELECT Localitate FROM Localitate";
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
            string connString = ConfigurationManager.ConnectionStrings["BeHired_.Properties.Settings.Setting"].ConnectionString;
            SqlConnection con = new SqlConnection(connString);
            string sql = "INSERT INTO dbo.Utilizator VALUES ('" + textBox1.Text + "', '" + textBox2.Text + "', '" + textBox3.Text + "', (SELECT Id FROM Localitate WHERE Judet = '" + comboBox1.Text + "'), (SELECT Id FROM Localitate WHERE dbo.Localitate.Localitate = '" + comboBox2.Text + "');";
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader myreader;
            try
            {
                con.Open();
                myreader = cmd.ExecuteReader();
                while (myreader.Read())
                {

                }
            }
            catch (Exception e1)
            {
                MessageBox.Show(e1.Message);
                //MessageBox.Show(e1.Source);
               // MessageBox.Show(e1.StackTrace);
            }
        }
    }
}
