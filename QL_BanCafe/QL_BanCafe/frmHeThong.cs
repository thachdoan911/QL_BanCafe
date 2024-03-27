using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;
namespace QL_BanCafe
{
    public partial class FrmHeThongCafe : Form
    {
        SqlConnection connect;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        SqlConnection con = new SqlConnection("Data Source = DESKTOP-QSULFJV\\SQLEXPRESS; Initial Catalog = QL_CF; user ID = sa; password = 123 ");
        public FrmHeThongCafe()
        {
            InitializeComponent();
        }

        private void chứcNăngDanhMụcToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmDanhmuc frm = new FrmDanhmuc();
            this.Hide();
            frm.ShowDialog();
            this.Show();
        }

        private void đăngXuấtToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void thôngTinCáNhânToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            FrmThongtincanhan frm = new FrmThongtincanhan();
            frm.ShowDialog();
        }

        private void chứcNăngThốngKêToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmThongke frm = new FrmThongke();
            this.Hide();  
            frm.ShowDialog();
            this.Show();
        }

        private void chứcNăngTìmKiếmToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmTimkiem frm = new FrmTimkiem();
            this.Hide();
            frm.ShowDialog();
            this.Show();
        }

        private void adminToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmAdmin frm = new FrmAdmin();
            this.Hide();
            frm.ShowDialog();
            this.Show();

        }

        private void thôngTinCáNhânToolStripMenuItem1_Click_1(object sender, EventArgs e)
        {
            FrmThongtincanhan frm = new FrmThongtincanhan();
            this.Hide();
            frm.ShowDialog();
            this.Show();
        }

        private void btn_ThemNuoc_Click(object sender, EventArgs e)
        {
           
        }

        private void FrmHeThongCafe_Load(object sender, EventArgs e)
        {
            con.Open();
            string sql = "select * from LOAITHUCUONG";
            DataSet ds = new DataSet();
            SqlDataAdapter dp = new SqlDataAdapter(sql, con);

            dp.Fill(ds);
            dtgv_nuoc.DataSource = ds.Tables[0];
            dtgv_nuoc.Refresh();
        }

     
    }
}
