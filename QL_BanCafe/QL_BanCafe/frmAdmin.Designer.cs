namespace QL_BanCafe
{
    partial class FrmAdmin
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmAdmin));
            this.tcAdmin = new System.Windows.Forms.TabControl();
            this.tpDoanhthu = new System.Windows.Forms.TabPage();
            this.dtgv_hoadon = new System.Windows.Forms.DataGridView();
            this.tpNuoc = new System.Windows.Forms.TabPage();
            this.dtgv_nuoc = new System.Windows.Forms.DataGridView();
            this.tpDanhmuc = new System.Windows.Forms.TabPage();
            this.dataGridView2 = new System.Windows.Forms.DataGridView();
            this.panel1 = new System.Windows.Forms.Panel();
            this.btnThongke = new System.Windows.Forms.Button();
            this.dateTimePicker2 = new System.Windows.Forms.DateTimePicker();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            this.tcAdmin.SuspendLayout();
            this.tpDoanhthu.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtgv_hoadon)).BeginInit();
            this.tpNuoc.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtgv_nuoc)).BeginInit();
            this.tpDanhmuc.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView2)).BeginInit();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // tcAdmin
            // 
            this.tcAdmin.Controls.Add(this.tpDoanhthu);
            this.tcAdmin.Controls.Add(this.tpNuoc);
            this.tcAdmin.Controls.Add(this.tpDanhmuc);
            this.tcAdmin.Location = new System.Drawing.Point(12, 65);
            this.tcAdmin.Name = "tcAdmin";
            this.tcAdmin.SelectedIndex = 0;
            this.tcAdmin.Size = new System.Drawing.Size(848, 457);
            this.tcAdmin.TabIndex = 0;
            // 
            // tpDoanhthu
            // 
            this.tpDoanhthu.Controls.Add(this.dtgv_hoadon);
            this.tpDoanhthu.Location = new System.Drawing.Point(4, 25);
            this.tpDoanhthu.Name = "tpDoanhthu";
            this.tpDoanhthu.Padding = new System.Windows.Forms.Padding(3);
            this.tpDoanhthu.Size = new System.Drawing.Size(840, 428);
            this.tpDoanhthu.TabIndex = 0;
            this.tpDoanhthu.Text = "Doanh thu";
            this.tpDoanhthu.UseVisualStyleBackColor = true;
            // 
            // dtgv_hoadon
            // 
            this.dtgv_hoadon.AllowUserToOrderColumns = true;
            this.dtgv_hoadon.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dtgv_hoadon.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dtgv_hoadon.Location = new System.Drawing.Point(3, 3);
            this.dtgv_hoadon.Name = "dtgv_hoadon";
            this.dtgv_hoadon.RowHeadersWidth = 51;
            this.dtgv_hoadon.RowTemplate.Height = 24;
            this.dtgv_hoadon.Size = new System.Drawing.Size(834, 422);
            this.dtgv_hoadon.TabIndex = 0;
            this.dtgv_hoadon.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dtgv_hoadon_CellContentClick);
            // 
            // tpNuoc
            // 
            this.tpNuoc.Controls.Add(this.dtgv_nuoc);
            this.tpNuoc.Location = new System.Drawing.Point(4, 25);
            this.tpNuoc.Name = "tpNuoc";
            this.tpNuoc.Padding = new System.Windows.Forms.Padding(3);
            this.tpNuoc.Size = new System.Drawing.Size(840, 428);
            this.tpNuoc.TabIndex = 1;
            this.tpNuoc.Text = "Nước";
            this.tpNuoc.UseVisualStyleBackColor = true;
            // 
            // dtgv_nuoc
            // 
            this.dtgv_nuoc.AllowUserToOrderColumns = true;
            this.dtgv_nuoc.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dtgv_nuoc.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dtgv_nuoc.Location = new System.Drawing.Point(3, 3);
            this.dtgv_nuoc.Name = "dtgv_nuoc";
            this.dtgv_nuoc.RowHeadersWidth = 51;
            this.dtgv_nuoc.RowTemplate.Height = 24;
            this.dtgv_nuoc.Size = new System.Drawing.Size(834, 422);
            this.dtgv_nuoc.TabIndex = 0;
            // 
            // tpDanhmuc
            // 
            this.tpDanhmuc.Controls.Add(this.dataGridView2);
            this.tpDanhmuc.Location = new System.Drawing.Point(4, 25);
            this.tpDanhmuc.Name = "tpDanhmuc";
            this.tpDanhmuc.Padding = new System.Windows.Forms.Padding(3);
            this.tpDanhmuc.Size = new System.Drawing.Size(840, 428);
            this.tpDanhmuc.TabIndex = 2;
            this.tpDanhmuc.Text = "Danh mục";
            this.tpDanhmuc.UseVisualStyleBackColor = true;
            // 
            // dataGridView2
            // 
            this.dataGridView2.AllowUserToOrderColumns = true;
            this.dataGridView2.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dataGridView2.Location = new System.Drawing.Point(3, 3);
            this.dataGridView2.Name = "dataGridView2";
            this.dataGridView2.RowHeadersWidth = 51;
            this.dataGridView2.RowTemplate.Height = 24;
            this.dataGridView2.Size = new System.Drawing.Size(834, 422);
            this.dataGridView2.TabIndex = 0;
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.Transparent;
            this.panel1.Controls.Add(this.btnThongke);
            this.panel1.Controls.Add(this.dateTimePicker2);
            this.panel1.Controls.Add(this.dateTimePicker1);
            this.panel1.Location = new System.Drawing.Point(16, 12);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(840, 47);
            this.panel1.TabIndex = 1;
            // 
            // btnThongke
            // 
            this.btnThongke.Location = new System.Drawing.Point(379, 1);
            this.btnThongke.Name = "btnThongke";
            this.btnThongke.Size = new System.Drawing.Size(94, 44);
            this.btnThongke.TabIndex = 0;
            this.btnThongke.Text = "Thống kê";
            this.btnThongke.UseVisualStyleBackColor = true;
            this.btnThongke.Click += new System.EventHandler(this.btnThongke_Click);
            // 
            // dateTimePicker2
            // 
            this.dateTimePicker2.Location = new System.Drawing.Point(634, 10);
            this.dateTimePicker2.Name = "dateTimePicker2";
            this.dateTimePicker2.Size = new System.Drawing.Size(200, 22);
            this.dateTimePicker2.TabIndex = 1;
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.Location = new System.Drawing.Point(3, 10);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size(200, 22);
            this.dateTimePicker1.TabIndex = 0;
            // 
            // FrmAdmin
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.ClientSize = new System.Drawing.Size(872, 553);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.tcAdmin);
            this.Name = "FrmAdmin";
            this.Text = "FormAdmin";
            this.Load += new System.EventHandler(this.FrmAdmin_Load);
            this.tcAdmin.ResumeLayout(false);
            this.tpDoanhthu.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dtgv_hoadon)).EndInit();
            this.tpNuoc.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dtgv_nuoc)).EndInit();
            this.tpDanhmuc.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView2)).EndInit();
            this.panel1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabControl tcAdmin;
        private System.Windows.Forms.TabPage tpDoanhthu;
        private System.Windows.Forms.TabPage tpNuoc;
        private System.Windows.Forms.TabPage tpDanhmuc;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button btnThongke;
        private System.Windows.Forms.DateTimePicker dateTimePicker2;
        private System.Windows.Forms.DateTimePicker dateTimePicker1;
        private System.Windows.Forms.DataGridView dtgv_hoadon;
        private System.Windows.Forms.DataGridView dtgv_nuoc;
        private System.Windows.Forms.DataGridView dataGridView2;
    }
}