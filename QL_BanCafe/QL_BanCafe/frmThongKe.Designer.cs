namespace QL_BanCafe
{
    partial class FrmThongke
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmThongke));
            this.panel1 = new System.Windows.Forms.Panel();
            this.btn_Thongke = new System.Windows.Forms.Button();
            this.dtp_Denngay = new System.Windows.Forms.DateTimePicker();
            this.dtp_Tungay = new System.Windows.Forms.DateTimePicker();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.dgvThongke = new System.Windows.Forms.DataGridView();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.panel1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvThongke)).BeginInit();
            this.tabControl1.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.Transparent;
            this.panel1.Controls.Add(this.btn_Thongke);
            this.panel1.Controls.Add(this.dtp_Denngay);
            this.panel1.Controls.Add(this.dtp_Tungay);
            this.panel1.Location = new System.Drawing.Point(31, 19);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(811, 44);
            this.panel1.TabIndex = 1;
            // 
            // btn_Thongke
            // 
            this.btn_Thongke.Location = new System.Drawing.Point(365, 3);
            this.btn_Thongke.Name = "btn_Thongke";
            this.btn_Thongke.Size = new System.Drawing.Size(91, 38);
            this.btn_Thongke.TabIndex = 2;
            this.btn_Thongke.Text = "Thống kê";
            this.btn_Thongke.UseVisualStyleBackColor = true;
            // 
            // dtp_Denngay
            // 
            this.dtp_Denngay.Location = new System.Drawing.Point(611, 6);
            this.dtp_Denngay.Name = "dtp_Denngay";
            this.dtp_Denngay.Size = new System.Drawing.Size(200, 22);
            this.dtp_Denngay.TabIndex = 1;
            // 
            // dtp_Tungay
            // 
            this.dtp_Tungay.Location = new System.Drawing.Point(0, 6);
            this.dtp_Tungay.Name = "dtp_Tungay";
            this.dtp_Tungay.Size = new System.Drawing.Size(200, 22);
            this.dtp_Tungay.TabIndex = 0;
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.dgvThongke);
            this.tabPage1.Location = new System.Drawing.Point(4, 25);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(807, 412);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Doanh thu ";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // dgvThongke
            // 
            this.dgvThongke.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvThongke.Location = new System.Drawing.Point(6, 6);
            this.dgvThongke.Name = "dgvThongke";
            this.dgvThongke.RowHeadersWidth = 51;
            this.dgvThongke.RowTemplate.Height = 24;
            this.dgvThongke.Size = new System.Drawing.Size(795, 400);
            this.dgvThongke.TabIndex = 0;
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Location = new System.Drawing.Point(31, 63);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(815, 441);
            this.tabControl1.TabIndex = 0;
            // 
            // FrmThongke
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.ClientSize = new System.Drawing.Size(880, 527);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.tabControl1);
            this.Name = "FrmThongke";
            this.Text = "FormThongke";
            this.Load += new System.EventHandler(this.FrmThongke_Load);
            this.panel1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvThongke)).EndInit();
            this.tabControl1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button btn_Thongke;
        private System.Windows.Forms.DateTimePicker dtp_Denngay;
        private System.Windows.Forms.DateTimePicker dtp_Tungay;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.DataGridView dgvThongke;
        private System.Windows.Forms.TabControl tabControl1;
    }
}