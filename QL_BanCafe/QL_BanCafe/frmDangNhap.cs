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
    public partial class FrmDangnhap : Form
    {
        public FrmDangnhap()
        {
            InitializeComponent();
        }

        private void btn_Dangnhap_Click(object sender, EventArgs e)
        {
            FrmHeThongCafe frm = new FrmHeThongCafe();
            this.Hide();
            frm.ShowDialog();
            this.Show();
        }

        private void btn_Thoat_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn muốn thoát", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                Close();
        }

        private void FrmDangnhap_FormClosing(object sender, FormClosingEventArgs e)
        {
            DialogResult r;
            r = MessageBox.Show("Bạn có muốn thoát", "Thoát", MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button1);
            if (r == DialogResult.No)
                e.Cancel = true;
        }

        private void btn_anhien_Click(object sender, EventArgs e)
        {
            if (txt_matkhau.PasswordChar == '●')
            {
                btn_anhien.BringToFront();
                txt_matkhau.PasswordChar = '\0';
            }
            else if (txt_matkhau.PasswordChar == '\0')
            {
                btn_anhien.BringToFront();
                txt_matkhau.PasswordChar = '●';
            }
        }
    }
}
