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
    public partial class FrmAdmin : Form
    {
        SqlConnection connect;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        public FrmAdmin()
        {
            InitializeComponent();
        }

        private void dtgv_hoadon_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void btnThongke_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source = DESKTOP-QSULFJV\\SQLEXPRESS; Initial Catalog = QL_CF; user ID = sa; password = 123 ");
            con.Open();
            string sql = "select * from NHANVIEN";
            DataSet ds = new DataSet();
            SqlDataAdapter dp = new SqlDataAdapter(sql, con);
            dp.Fill(ds);
            dtgv_hoadon.DataSource = ds.Tables[0];
            dtgv_hoadon.Refresh();
        }

        private void FrmAdmin_Load(object sender, EventArgs e)
        {

        }
    }
}
