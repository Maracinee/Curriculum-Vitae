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
    public partial class frmLogin : Form
    {
        static string myConnectionString = ConfigurationManager.ConnectionStrings["BeHired_.Properties.Settings.Setting"].ConnectionString;
        public static string utilizator;
        public frmLogin()
        {
            InitializeComponent();
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (txtParola.Text == "" && txtNume.Text == "")
            {
                MessageBox.Show("Eroare!");
            }
            else
            {
                SqlConnection conn = new SqlConnection(myConnectionString);
                SqlDataAdapter sda = new SqlDataAdapter("SELECT COUNT(*) FROM dbo.Loginpage WHERE Utilizator = '" + txtNume.Text + "' AND Parola = '" + txtParola.Text + "';", conn);

                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows[0][0].ToString() == "1")
                {
                    utilizator = txtNume.Text;

                    frmMain f1 = new frmMain();
                    this.Hide();
                    f1.ShowDialog();
                    Application.Exit();
                }
                else
                {
                    MessageBox.Show("Eroare!");
                }
            }
        }
    }
}
