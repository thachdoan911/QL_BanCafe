using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;
using QL_BanCafe;

namespace QL_BanCafe
{
    public partial class FrmTimkiem : Form
    {
       
        SqlConnection connect;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        public static SqlDataAdapter ad;
        public static DataTable dt;

        public static SqlCommandBuilder bd;

        SqlConnection con = new SqlConnection("Data Source = DESKTOP-QSULFJV\\SQLEXPRESS; Initial Catalog = QL_CF; user ID = sa; password = 123 ");
            

        public FrmTimkiem()
        {
            InitializeComponent();
        }

        private void FrmTimkiem_Load(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection("Data Source = MTHIEN\\SQLEXPRESS; Initial Catalog = QL_CF; user ID = sa; password = thien123 ");
            con.Open();
           

            string sql = "select * from NHANVIEN";
            DataSet ds = new DataSet();
            SqlDataAdapter dp = new SqlDataAdapter(sql, con);
            
            dp.Fill(ds);
            dtgv_nv.DataSource = ds.Tables[0];
            dtgv_nv.Refresh();
        }

        private void btnTimkiem_Click(object sender, EventArgs e)
        {
            if(comboBox1.Text == "Mã nhân viên")
            {
                
            }
        }

        public  void timkiem(string chuoi, DataGridView db2)
        {
            try
            {
                ad = new SqlDataAdapter(chuoi, con);
                dt = new DataTable();
                bd = new SqlCommandBuilder(ad);
                ad.Fill(dt);
                db2.DataSource = dt;
            }
            catch (Exception ex)
            {
                MessageBox.Show("" + ex);
            }

        }

        private void txt_hoten_TextChanged(object sender, EventArgs e)
        {
            string load1 = "Select MANV,TENNV,NGAYSINH,GIOITINH,DIACHI,SODT,NGAYVAO,EMAIL from NHANVIEN where TENNV like N'%" + txt_hoten.Text + "%' ";
            timkiem(load1, dtgv_nv);
            dtgv_nv.Columns[0].HeaderText = "Mã nhân viên"; dtgv_nv.Columns[0].Width = 120;
            dtgv_nv.Columns[1].HeaderText = "Tên nhân viên"; dtgv_nv.Columns[1].Width = 120;
            dtgv_nv.Columns[2].HeaderText = "Ngày sinh"; dtgv_nv.Columns[4].Width = 120;
            dtgv_nv.Columns[3].HeaderText = "Giới tính"; dtgv_nv.Columns[3].Width = 120;
            dtgv_nv.Columns[4].HeaderText = "Địa chỉ"; dtgv_nv.Columns[2].Width = 120;
            dtgv_nv.Columns[5].HeaderText = "Số điện thoại"; dtgv_nv.Columns[5].Width = 120;
            dtgv_nv.Columns[6].HeaderText = "Ngày vào"; dtgv_nv.Columns[6].Width = 120;
            dtgv_nv.Columns[7].HeaderText = "Email"; dtgv_nv.Columns[7].Width = 120;
          
        }
    }
}
